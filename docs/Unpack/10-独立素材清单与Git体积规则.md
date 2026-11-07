---
title: PVZ2 国服 4.2.8 单个素材恢复与 Git 大小管理
type: runbook
tags: [PVZ2, CHN, 4.2.8, git, assets, sha256, catalog]
region: CHN
version: 4.2.8
status: real-sample-index-verified
updated: 2026-11-07
---

# 10 · 分卷恢复为单独素材，并管理普通 Git 文件大小

返回 [[Unpack/00-完整解包导航]] 和 [[Unpack/08-Git归档与完整性验收]]。

> [!important] 512 KiB 不是 GitHub 文件上限
> 早期的 small_file_candidate 仅指小于等于 512 KiB 的指定文本扩展名文件，方便预览；它不是 GitHub 可否接收文件的判定。新的 git_size_eligible 按小于 95 MiB 计算，留出接近 GitHub 100 MiB 硬上限的余量。数字只说明技术尺寸，不代表商业游戏素材已经取得公开再分发授权。

## GitHub 官方限制

- 普通 Git 文件大于 50 MiB 会出现警告，超过 100 MiB 会拒绝；Git 网页上传通常不能大于 25 MiB。来源：https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github
- 仓库整体建议保持紧凑；推送大小上限为 2 GB，目录过宽和过多大对象会影响性能。来源：https://docs.github.com/en/repositories/creating-and-managing-repositories/repository-limits
- 当前使用 95 MiB 作为技术资格安全阈值，仍单独标记 50 MiB 警告区间。
- 不把仓库总容量与单文件尺寸混淆；源 RSB、RSGP、Internal、Media 多层归档已经包含不同层次的重复数据。

## 真实文件索引：Media/shard-00

| 类型 | 真实文件数 |
|---|---:|
| PNG | 72 |
| PAM 动画 JSON | 357 |
| WEM 音频流 | 905 |
| BNK JSON | 27 |
| 其他 JSON | 5 |
| 合计 | 1,366 |

这 1,366 个文件全部小于 95 MiB，其中仅一个超过 50 MiB。早先称 265 个是 512 KiB 小型文本预览候选，不是仅 265 个可放 Git。索引：Catalog/CHN/V4.2.8/shards/Media-00/files.csv，每个记录带实际路径、大小、SHA256、媒体格式和源归档信息。

目录：
~~~text
Catalog/CHN/V4.2.8/shards/
  Internal-05/files.csv
  Internal-05/summary.json
  Media-00/files.csv
  Media-00/summary.json
Unpack/CHN/V4.2.8/
  Internal/shard-XX/manifest.json + archive.tar.zst.part-*
  Media/shard-XX/manifest.json + archive.tar.zst.part-*
Readable/CHN/V4.2.8/
  Internal/shard-XX/实际文件路径（仅在本地生成）
  Media/shard-XX/实际文件路径（仅在本地生成）
~~~

## 可重复执行的索引操作（WSL/Linux）

先有 Git 分片以及 zstd 工具。脚本会流式读取 tar.zst 的真实内容、校验所有分卷与合并压缩包的 SHA256，再针对每个原文件算 SHA256：

~~~bash
python3 scripts/catalog/index_git_shard.py \
  Unpack/CHN/V4.2.8/Media/shard-00 \
  --out Catalog/CHN/V4.2.8/shards/Media-00
~~~

它输出 files.csv 和 summary.json。重点字段：
- size_bytes：实际单文件大小，原始字节数；
- sha256：源文件 SHA256；
- format、category、original_path：原格式和源路径；
- small_file_candidate：小型指定文本类型，默认小于等于 512 KiB；
- git_size_eligible：是否小于 95 MiB，不限制媒体类型；
- git_warning_over_50mib：是否跨越 50 MiB 警告线；
- publication_status：默认 metadata-only-needs-rights-review。

## 从分卷恢复单个文件到本地 Readable

~~~bash
python3 scripts/archive/restore_git_shard.py \
  Unpack/CHN/V4.2.8/Media/shard-00 \
  --out audit/local/recovered-media-00

# 查看实际可恢复项目，默认 dry-run
python3 scripts/catalog/materialize_readable.py \
  --restored audit/local/recovered-media-00 \
  --catalog Catalog/CHN/V4.2.8/shards/Media-00/files.csv \
  --out Readable/CHN/V4.2.8 --max-file-mib 95

# 确认磁盘空间后写入本地，逐文件校验原 SHA256
python3 scripts/catalog/materialize_readable.py \
  --restored audit/local/recovered-media-00 \
  --catalog Catalog/CHN/V4.2.8/shards/Media-00/files.csv \
  --out Readable/CHN/V4.2.8 --max-file-mib 95 --copy
~~~

可通过 --extensions .png 或 --extensions .json 只恢复指定格式；原有文件不一致时停止，而不是强制覆盖。Readable/ 为本地被 .gitignore 排除的研究目录，脚本不会执行 git add 或 push。

## 分发和仓库管理

- 小于 95 MiB 意味着可以技术上装入普通 Git，不是建议全部无条件复制到已有体积很大的 Git 历史。
- 大型二进制若需要重复更新，优先考虑 Git LFS 或 GitHub Release；不要把 RSB、RSGP、Internal、Media 原样又重复提交一轮。
- 当前仓库为公开仓库；单纯拥有游戏 APK 不自动获得公开分发美术、音效、代码的权利。默认仅提交目录清单、哈希、研究文档及脚本，原始素材须独立确认授权。
- 任何缺失分片必须标注 missing，不可在合并索引时当成零文件。

## 当前实际缺失分片

在按文件实际索引时确认：当前已归档 Media 00～05 和 07，**缺的是 Media/shard-06 而不是 Media/shard-07**。这个分片未处理意味着覆盖率 7/8；SQLite 汇总必须明确标记 Media-06 为 missing，不能记作零素材。


## 本次全量索引实测（已提交并经过 Actions 验证）

[GitHub Actions #42329143720](https://github.com/969981/PVZ2_Resources/actions/runs/42329143720) 全部 15 份扫描及合并 Job 成功：

| 类型 | 分片覆盖 | 逐文件记录 | <95 MiB | >50 MiB |
|---|---:|---:|---:|---:|
| Internal | 8/8 | 14,869 | 14,869 | 0 |
| Media | 7/8 | 11,905 | 11,905 | 5 |
| 合计 | 15 | 26,774 | 26,774 | 5 |

已提交的实际入口：
- Catalog/CHN/V4.2.8/summary/assets.sqlite（可用 SQLite 检索、跨分片查询）；
- Catalog/CHN/V4.2.8/summary/assets.csv（原始路径、格式、大小、SHA256）；
- Catalog/CHN/V4.2.8/summary/SUMMARY.json（缺失分片明确列为 Media-06）。

Media/shard-06 **尚未完成 Git 归档**。从此前真实归档工作流日志可见该分片原始媒体有 501 个文件、压缩后 14 个 64 MiB 左右分卷；失败发生在 git push 的并发 master ref 更新（cannot lock ref / rejected），不是超出 100 MiB 单文件硬限制。已有前六个压缩部件不代表全部归档成功；在 manifest 出现并通过校验以前，不能将该分片计入最终可恢复目录。

## 独立文件真实恢复验证（追加结果）

[逐文件恢复任务 #42330303634](https://github.com/969981/PVZ2_Resources/actions/runs/42330303634) 已成功：15 个实际分片中 **26,774/26,774** 个文件逐一 SHA256 校验通过。格式审计为 12,259 个 JSON 已解析、9,040 个结构头部通过、5,473 个仅源字节通过、2 个未识别格式。新增 Catalog/CHN/V4.2.8/validation/ 的 SQLite、CSV、SUMMARY.json 可从 GitHub 查询源路径、格式和校验状态。

该任务没有将全部商业游戏原件作为普通文件重新公开发布，也不表示音视频全部可播放。缺失 Media-06 仍需修复。

## 后续验收

- [x] Internal-05 的 8,440 个来源文件和 Media-00 的 1,366 个文件已建立来源索引；
- [x] 更正小型文本预览和 Git 单文件大小资格的混淆；
- [x] 已存在的 8 个 Internal、7 个 Media 分片的逐文件清单全部完成，并汇总到 SQLite/CSV；
- [ ] 尚未完整入 Git 的 Media-06 完成归档后再做文件级 SHA256 审计与汇总；
- [ ] 源 PTX 与派生 PNG、源 PAM 与派生 JSON 之间的语义级去重和映射；
- [ ] 已获公开授权的单独素材再根据 Git 体积及更新频率选择独立发布方式；
- [ ] 将动态关卡、动画图集和音效事件引用实际素材索引。

相关 [[Unpack/02-PTX纹理与PNG]]、[[Unpack/03-PAM动画与图集]]、[[Unpack/07-数据中文名与SQLite]]。
