# Production Status — Video 3

**Channel:** Why We Become  
**Input mode:** Title + Script  
**Locked title:** Why Having 100 Options Is Destroying Your Focus

## User-requested edit
The incomplete ending, “This is Why We Become. If you enjoy videos that”, was replaced with: **“Subscribe to Why We Become.”** No other substantive script changes were made.

## Runtime & sheet calculation

```
word_count        = 1725
char_count        = 10910
estimated_seconds = 1725 ÷ 2.5 = 690.0 s (11 min 30 s)
target_frames     = round(690.0 ÷ 2.1) = 329
target_sheets     = ceil(329 ÷ 9) = 37
clamped_sheets    = clamp(37, 16, 48) = 37
frame_pool        = 37 × 9 = 333
```

**TARGET SHEETS = 37.** The 333 frames are an asset pool, not a fixed edit cadence. A later shot list must match the final normalized voiceover duration within ±0.5 seconds.

## Narration split

```
parts = max(5, ceil(10910 ÷ 1800)) = 7
```

| File | Characters | Under 2,000 |
|---|---:|---|
| narration-01.txt | 1552 | PASS |
| narration-02.txt | 1559 | PASS |
| narration-03.txt | 1544 | PASS |
| narration-04.txt | 1544 | PASS |
| narration-05.txt | 1555 | PASS |
| narration-06.txt | 1539 | PASS |
| narration-07.txt | 1605 | PASS |

## Status log
- [x] Created `video 3/`
- [x] Saved script and requested subscribe ending
- [x] Validated evidence and limitations in `research.md`
- [x] Generated SEO package
- [x] Calculated 37 contact sheets
- [x] Split narration sequentially into 7 files
- [x] Contact-sheet prompts written to `generation-status.md` (37 prompts)
- [ ] ⛔ Mandatory approval gate before image generation
- [x] 37 contact sheets generated and cropped into 333 frames
- [x] Deepgram TTS / normalization / Nova-3 STT completed
- [x] Word-timed ASS captions rendered
- [x] `final/final.mp4` rendered with 9-second canonical end card
- [x] Thumbnail generated last
- [x] Final QA completed
