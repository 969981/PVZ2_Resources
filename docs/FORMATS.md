---
title: 资源容器与格式
type: reference
tags: [pvz2, formats, rslb, rsb, rton]
updated: 2026-11-07
---

# Formats: verified headers and working hypotheses

The provided APK ZIP inventory contains 1,374 entries: 33 assets/*.rsb.smf, 18 assets/properties/*.rton.smf, 33 rsb.tag.smf, 5 other SMF, and 28 .so libraries. Major game library is ELF libSrc.so for ARM64 and ARM32, not a Marmalade S3E executable.

## RSLB outer container
Header sample from CHN 4.2.8 begins 52 53 4C 42 = RSLB; version at +0x04 is 1. Cross-checked against adjacent-version research, presumed little-endian layout:
- 0x00 magic[4], 0x04 u32 version
- 0x08 u64 uncompressed total
- 0x10 u64 compressed payload length
- 0x18 u32 uncompressed block size
- 0x1C u32 block count
- 0x20 u64 reserved, 0x28 u64 repeated size (either total output or nominal block size)
- 0x30 first 20-byte block descriptor: u64 compressed data offset, u32 size including LZMA properties, 5 property bytes, 3 bytes padding
- Between descriptors, a 16-byte link holds cumulative uncompressed end offset and the next block size.
- Subsequent descriptors repeat the 20-byte structure; the last descriptor has no following link.
- Each block: 5-byte LZMA1 property header then raw LZMA1 stream.

Check table bounds, continuity, declared sums and decoded byte count before accepting output. Header estimate: 5,639.62 MiB unwrapped across 33 bundles; the 2026-11-06 real probe found a stage1 parser mismatch; the corrected descriptor/link parser awaits another real run.

## RSB v4 and RSGP
Expected inner magic after RSLB decode: 31 62 73 72 = 1bsr. Probe version, RSGP group count, table offset, record stride and per-group offset/length. An RSB group table is not a complete extraction of its internal members. Layer 2 is a separate milestone.

## Direct RTON
18 APK-level .rton.smf files have RTON magic in sampled headers; outer .smf suffix does not automatically mean the bytes are compressed. Plain RTON is still binary configuration, not directly JSON. Inner group content may include encrypted RTON. Retain unknown/encrypted status, never silently swap data between versions.

## Other formats
PTX, PAM, Reanim, atlas, media and localized text require individual probes after layer 2. Do not count them based on guesses from outer filenames.

References:
- https://github.com/Jelly-RayTian/pvz2-format-exploration
- https://github.com/PopGameTool/PopStudio
- https://github.com/PopGameTool/LibWindPop
- https://github.com/DreamMoonCai/Pvz2Tool

---

Obsidian 导航：[[00-知识库首页]] · [[术语表]] · [[研究证据规范]]
