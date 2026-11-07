---
title: Git 分卷保存、24 分片 SHA256 和媒体归档恢复
type: runbook
tags: [pvz2, git, tar, zstd, SHA256, archive, reproducible]
region: CHN
version: 4.2.8
status: source-archives-fully-sha-verified
updated: 2026-11-07
---

# 08 · 长期 Git 归档与可恢复完整性验证

返回 [[Unpack/00-完整解包导航]] · [[versions/CHN/4.2.8-git-archive]] · [[研究证据规范]]。

## 为什么要分卷而不是依赖 Actions Artifacts

GitHub Actions Artifacts 的本项目工作流一般只保留短时间；运行成功不等于资产已永久纳入 Git。仓库将单个 shard 压为 tar.zst，再拆为**不大于 64 MiB 的 Git 文件**，附带每部件大小与 SHA256、合并压缩流 SHA256 的 manifest.json。

~~~text
Unpack/CHN/V4.2.8/
├─ RSB/shard-00..07/
├─ RSGP/shard-00..07/
├─ Internal/shard-00..07/
├─ Media/shard-00..07/         # 运行中，逐项检查
└─ MediaSpecial/shard-00/05/   # 特殊 PNG，逐项检查
    每目录包含 manifest.json 和 archive.tar.zst.part-000 ...
~~~

**已实测原始归档 24/24**：

| 层级 | shard | 分卷 | 来源文件 |
|---|---:|---:|---:|
| RSB | 8 | 41 | 33 |
| RSGP | 8 | 41 | 2,964 |
| Internal | 8 | 40 | 14,869 |
| 合计 | 24 | 122 | 17,866 |

这个合计是三层备份对象数，具有不同层级重复关系，不能将 17,866 当成不同的游戏资源数。独立 Git SHA256 验证 [#42325332349](https://github.com/969981/PVZ2_Resources/actions/runs/42325332349) 的 24 个 Job + 汇总全部成功。

## 在 Linux / WSL 还原与校验

需安装 Python、tar、zstd。先验证分片，不必解压：

~~~bash
python3 scripts/archive/restore_git_shard.py \
  Unpack/CHN/V4.2.8/RSB/shard-00 \
  --verify-only --out "audit/local/verify-unused"
~~~

需要还原原始路径和内容时：

~~~bash
python3 scripts/archive/restore_git_shard.py \
  Unpack/CHN/V4.2.8/Internal/shard-05 \
  --out "audit/local/recovered-internal-05"
~~~

脚本校验每个 part 的文件大小、SHA256，以及合并后的压缩流大小与 SHA256，再流式调用 zstd / tar。它验证的是保存过程的内容完整性；如想证明解压每个源文件与初始 APK 精确一致，还需根据源路径和逐文件哈希做二次映射检查。

GitHub 上的验证流程：[.github/workflows/pvz2-verify-source-archives.yml](https://github.com/969981/PVZ2_Resources/blob/master/.github/workflows/pvz2-verify-source-archives.yml)。

## 如何从 Actions Artifact 纳入真正的 Git 历史

源格式脚本 scripts/archive/import_actions_artifact.py 接受：

~~~bash
python3 scripts/archive/import_actions_artifact.py \
  --input "/path/to/extracted-actions-artifact" \
  --output-root "Unpack/CHN/V4.2.8" \
  --stage RSB --shard 0 \
  --source-run-id 42256393599 \
  --temporary "/path/to/temp-dir"
~~~

输出 manifest 和 archive.tar.zst.part-*。请遵守仓库大文件策略，不把 2 GiB APK 或原游戏文件直接 git add；原样大文件公开分享可能涉及版权，需核对仓库权限和个人使用范围。

相关工作流：
- [原始 24 分片 Git 提交](https://github.com/969981/PVZ2_Resources/actions/workflows/git-archive-chn-4.2.8.yml)；
- [衍生媒体 Git 归档](https://github.com/969981/PVZ2_Resources/actions/workflows/git-archive-chn-4.2.8-media.yml)。

后一个目标为 Media 8 份 + MediaSpecial 2 份；**只有 master 下的每份 manifest 都实际存在、并且成功校验，才能报告 10/10**。媒体任务尚在运行时切勿记录“已全部永久归档”。

## 每层验收清单

- [x] APK 固定 SHA256；
- [x] 33 RSB、2,964 RSGP、14,869 内部成员统计对账；
- [x] 8,091 JSON 全有效；
- [x] 24 个原始 Git 分片所有部件和压缩包 SHA256 通过；
- [x] 1,522 PNG 基本结构及尺寸验证；
- [x] 3,847 PAM→JSON 语法验证；
- [ ] 所有媒体归档完成并重新校验；
- [ ] 1 个非 BKHD BNK 解释闭合；
- [ ] 全量 WEM→WAV 和音频参数回读；
- [ ] POPFX 和 Lua 的可解释结构；
- [ ] PAM 与 Atlas 的逐帧渲染；
- [ ] 54 条未闭合 Wave 引用、324 处波次数差异分类；
- [ ] 原生运行时和离线版实机验收。

## 失败应对

part 缺失或 SHA256 不符：不要继续恢复，先定位 shard、part、提交 SHA、源 Actions run ID；如 Artifacts 已过期，必须重新执行对应原始提取或从合法来源恢复，不能用其他版本资源替代。git push 出错：检查 master 的 manifest 和历史，避免双重提交；不要因单一分片成功声明全量完成。

相关 [[Unpack/09-离线版阶段门槛]]。
