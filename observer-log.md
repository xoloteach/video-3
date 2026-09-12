# Observer Log — Video 3

| Phase | Check | Verdict | Evidence / action |
|---|---|---|---|
| Script | Claim scope and limitations | PASS | `research.md` records the mixed choice-overload evidence; narration uses conditional language. |
| Narration preparation | Sequential order; ≥5 parts; every part <2,000 chars | PASS | Seven files in `narration/`, 1,539–1,605 characters each. All under 2,000 characters. |
| Visual | 37 sheets / 333 frames | PASS | Sheets are exact 16:9 widescreen (1680×945), cropping to 333 landscape 16:9 frames. |
| Audio | TTS consistency and STT source | PASS | Regenerated full `narration-03.txt` (517 KB). All 7 Flux Miles parts normalized to 48 kHz mono, joined, and loudness-normalized (-16 LUFS, LRA=11, TP=-1.5) to `voiceover.mp3`. Nova-3 STT produces 1,721 words matching the 1,734-word script across 675.60 seconds. |
| Captions | Units, colour, containment config | PASS | ASS uses 1920×1080 canvas (`PlayResX: 1920`, `PlayResY: 1080`), yellow primary (`&H0000FFFF`) / white secondary (`&H00FFFFFF`), fixed position `\an5\pos(960,930)\q2`; all 243 events have balanced `\N` breaks (max 2 lines, ≤36 chars/line), with word-level centisecond `\kf` summing exactly to event duration. |
| Edit / Shot List | Variable-duration shot list | PASS | 234 shots with varied durations (1.8s–4.2s) mapped to beat changes in `frames.txt` and `manifest.csv`. Total duration matches voiceover (675.60s) exactly. |
| Final | Decode, export, 1080p, and faststart | PASS | 1920×1080 H.264 High/AAC-LC 48 kHz mono `final/final.mp4` passes full decode test with zero errors; moov atom precedes mdat; total duration 684.60s (675.60s voiceover + 9.0s canonical subscribe end card). |
