---
title: CHN 4.2.8 Media-06 缺失分片恢复与 PNG/WEM 查看
type: runbook
tags: [PVZ2, CHN, 4.2.8, media, png, wem, recovery, provenance]
region: CHN
version: 4.2.8
status: artifact-501-source-sha256-verified-archive-missing
updated: 2026-11-07
---

# 15 · Media-06 专项恢复与可查看素材

返回 [[Unpack/14-独立解析文件导出与Git管理]]、[[Unpack/11-全量文件恢复与格式验收]]、[[Unpack/02-PTX纹理与PNG]]、[[Unpack/04-BNK-WEM与音频]]。

## 为什么有 26,774 份 JSON，却还缺原媒体？

`Parsed/CHN/V4.2.8/` 下的 26,774 个 `*.parsed.json` 是已归档文件的**独立结构化记录**，不是原图片/音频字节。

`Unpack/CHN/V4.2.8/Media/shard-06` 在公开 Git 中只有 `archive.tar.zst.part-000` 至 `part-005`，没有最终 `manifest.json`，因此不可视作恢复成功。最初日志提到该分片约 501 个文件；随后 [专项审计 #42334455984](https://github.com/969981/PVZ2_Resources/actions/runs/42334455984) 已从原始 Artifact 实际重新读取并确认 **501/501 个文件、1,147,629,810 字节、格式结构错误 0**。其中 JSON 237、PNG 175、WEM 89。它们的 SHA256 和原路径已提交，但仍不等于完成正式 Git 归档。

## 真实找到的来源（2026-11-07）

- 来源：[Media 转换工作流 #42321977158](https://github.com/969981/PVZ2_Resources/actions/runs/42321977158)。
- Artifact 名称 `pvz2-chn-4.2.8-media-6`，ID `13552674620`。
- 查询时 `expired=false`，GitHub 记录到期 `2026-11-10T01:08:28Z`。**应在这之前下载一份本地备份**。

安装并登录 GitHub CLI 后，在仓库根目录执行：

```bash
gh run download 42321977158 -R 969981/PVZ2_Resources \
  -n pvz2-chn-4.2.8-media-6 \
  -D Readable/CHN/V4.2.8/Media-06-Actions

python3 scripts/media/audit_actions_media.py \
  Readable/CHN/V4.2.8/Media-06-Actions \
  --out audit/local/CHN-4.2.8/Media-06 \
  --expected-count 501
```

### Media-06 从源 Artifact 恢复全部真实 PNG/WEM/JSON 到本地

已有独立来源哈希清单后，可恢复 501 个文件，并保留其原相对路径：

```bash
python3 scripts/catalog/restore_media06_local.py \
  --artifact Readable/CHN/V4.2.8/Media-06-Actions \
  --catalog Catalog/CHN/V4.2.8/recovery/Media-06/files.csv \
  --out Readable/CHN/V4.2.8 \
  --copy \
  --report audit/local/CHN-4.2.8/media06-materialized.json
```

输出示例：`Readable/CHN/V4.2.8/Media/shard-06/PNG/LuaAct/.../ATLASES/*.png`。
不加 `--copy` 时仅校验，不写副本；加 `--extensions .png` 则只恢复 175 张 PNG。始终逐文件比对 SHA256、检测多余/缺失文件、拒绝路径穿越和哈希冲突。这里仅完成**个人工作区的本地恢复**，不是向公开 GitHub 发布游戏美术。

这份审计生成 `files.csv`、`SUMMARY.json`，包含原相对路径、字节大小、SHA256、格式检查状态。PNG 只校验签名、IHDR 和尺寸；WEM 只校验 RIFF/WAVE 头；JSON 做语法检查；其他素材做 checksum-only。**无像素渲染、WEM 实际播放或完整游戏行为验证**。

对应的 [Media-06 Artifact 审计工作流](https://github.com/969981/PVZ2_Resources/actions/workflows/pvz2-media06-artifact-audit.yml) 从同一 Artifact 自动生成报告，成功后写入 `Catalog/CHN/V4.2.8/recovery/Media-06/`。只提交文件元信息，不再次公开原始图片或音频。真实工作流 **#42334455984 已成功**，`Catalog/CHN/V4.2.8/recovery/Media-06/files.csv` 和 `SUMMARY.json` 已进入 `master`。这证明源 Artifact 的 501 个文件哈希/基本格式检查成功，但仍不证明 PNG 全像素读取、WEM 可播放或 Git 分卷可恢复。

## 查看目前已归档的 PNG/WEM

对于 7 个已有 manifest 的 Media 分片，使用 WSL/Linux（需 `zstd`、`tar`、Python 3.10+）：

```bash
python3 scripts/catalog/export_all_local.py \
  --source Unpack/CHN/V4.2.8 \
  --catalog Catalog/CHN/V4.2.8 \
  --stages Media \
  --extensions .png,.wem \
  --out Readable/CHN/V4.2.8 \
  --report audit/local/CHN-4.2.8/media-local-export.json
```

上例只复制 PNG/WEM 两种类型；不加 `--extensions` 则复制该阶段全部可恢复文件。程序即使只选择部分后缀，也会校验压缩归档完整性，并根据源 CSV 的后缀实际数量核对输出，不会把 7/8 误报成 8/8。按 SHA256 校验源文件，再还原到 `Readable/CHN/V4.2.8/Media/shard-XX/` 中的 `PNG/`、`WEM/`、`PAM_JSON/` 等目录；缺失的 Media-06 标记为 `missing`。这些恢复文件不会被脚本上传，且 `Readable/` 已在 Git 忽略配置中。

- PNG 可用系统图片查看器直接打开。
- WEM 使用 Wwise 媒体容器，播放/转 WAV 需要进一步识别 codec，并使用支持该 codec 的播放器/转换器（如 vgmstream）。
- PAM JSON 的结构可检查，但不等于动画能在图集上逐帧播放。

原始第三方商业游戏素材的公开再分发资格未核实；公开交付限定为脚本、技术文档及可核验的元数据。

## 下一步验收

- [x] Media-06 源 Artifact 501/501 个文件路径、大小、SHA256 与基本格式状态已在 Actions #42334455984 真实重审通过。
- [ ] Media-06 全部原媒体在受控存储中备份，并创建可恢复的完整 manifest，验证归档和逐文件重构。
- [ ] 加入正式 `Catalog/CHN/V4.2.8/shards/` 之前，必须有完整可恢复归档；不要用恢复区元数据冒充归档验收。
- [ ] 正式入库后重新生成 Catalog/Parsed/validation 分母，不能沿用旧 26,774 数字。
- [ ] 补充 PNG 实际像素读取、WEM PCM 播放、PAM-Atlas 外键验证与运行时资源增量审计。
