#!/bin/bash
set -e

# Load environment variables if ~/.env exists
if [ -f "$HOME/.env" ]; then
  export $(cat "$HOME/.env" | xargs)
fi

if [ -z "$DEEPGRAM_API_KEY" ]; then
  echo "ERROR: DEEPGRAM_API_KEY is not set."
  echo "Please export DEEPGRAM_API_KEY='your_key' or add it to ~/.env"
  exit 1
fi

cd "$(dirname "$0")"

echo "==> 1. Regenerating tts-narration-03.mp3 with Flux Miles..."
curl -sS -X POST \
  -H "Authorization: Token $DEEPGRAM_API_KEY" \
  -H "Content-Type: application/json" \
  -d "$(jq -n --rawfile text narration/narration-03.txt '{text: $text}')" \
  "https://api.deepgram.com/v2/speak?model=flux-miles-en&speed=1&expressivity=0" \
  -o "tts-narration-03.mp3"

echo "==> 2. Normalizing all TTS parts to 48kHz mono libmp3lame..."
for f in tts-narration-*.mp3; do
  ffmpeg -y -v error -i "$f" -ar 48000 -ac 1 -c:a libmp3lame -b:a 192k "norm-$f"
done

echo "==> 3. Concatenating parts in narrative order..."
rm -f voiceover-list.txt
for f in $(ls norm-tts-narration-*.mp3 | sort); do
  echo "file '$f'" >> voiceover-list.txt
done
ffmpeg -y -v error -f concat -safe 0 -i voiceover-list.txt -c copy voiceover-raw.mp3

echo "==> 4. Loudness normalizing to single target (-16 LUFS)..."
ffmpeg -y -v error -i voiceover-raw.mp3 -af loudnorm=I=-16:LRA=11:TP=-1.5 \
  -ar 48000 -ac 1 -c:a libmp3lame -b:a 192k voiceover.mp3

echo "==> 5. Transcribing final voiceover with Deepgram Nova-3 for word timings..."
curl -sS -X POST \
  -H "Authorization: Token $DEEPGRAM_API_KEY" \
  -H "Content-Type: audio/mpeg" \
  --data-binary @voiceover.mp3 \
  "https://api.deepgram.com/v1/listen?model=nova-3&smart_format=true&punctuate=true&utterances=true" \
  -o voiceover.json

echo "==> SUCCESS! voiceover.mp3 and voiceover.json are ready."
