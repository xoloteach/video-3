# Production Status — Video 3

**Channel:** Why We Become  
**Input mode:** Title + Script  
**Locked title:** Why Having 100 Options Is Destroying Your Focus  
**Target Resolution:** 1920×1080 (1080p)

## Runtime & sheet calculation

```
word_count        = 1734
char_count        = 10910
estimated_seconds = 1734 ÷ 2.5 = 693.6 s (~11 min 34 s)
actual_vo_seconds = 675.60 s (11 min 15 s)
final_duration    = 684.60 s (including 9s end card)
target_sheets     = 37
frame_pool        = 37 × 9 = 333 frames
total_shots       = 234 variable-duration shots (1.8s–4.2s)
```

## Narration split

```
parts = max(5, ceil(10910 ÷ 1800)) = 7
```

| File | Characters | Under 2,000 |
|---|---:|---|
| narration-01.txt | 1569 | PASS |
| narration-02.txt | 1572 | PASS |
| narration-03.txt | 1563 | PASS |
| narration-04.txt | 1573 | PASS |
| narration-05.txt | 1568 | PASS |
| narration-06.txt | 1554 | PASS |
| narration-07.txt | 1630 | PASS |

## Status log
- [x] Created `video 3/`
- [x] Saved script and requested subscribe ending
- [x] Validated evidence and limitations in `research.md`
- [x] Generated SEO package
- [x] Calculated 37 contact sheets
- [x] Split narration sequentially into 7 files
- [x] Contact-sheet prompts written to `generation-status.md` (37 prompts)
- [x] 37 contact sheets generated and cropped into 333 frames
- [x] Deepgram TTS / normalization / Nova-3 STT completed (full 11m15s audio)
- [x] Word-timed ASS karaoke captions rendered at 1080p (`\an5\pos(960,930)\q2`)
- [x] Variable-duration shot list generated in `frames.txt` and `manifest.csv`
- [x] `final/final.mp4` rendered at 1920×1080 with 9-second canonical end card
- [x] Thumbnail generated
- [x] Final QA completed and verified
