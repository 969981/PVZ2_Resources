---
title: PVZ2 GitHub Actions 与 Artifacts
aliases: [Actions 解包任务, Artifacts 下载说明]
type: runbook
tags: [pvz2, github-actions, artifacts, chn]
region: CHN
version: 4.2.8
status: validated
updated: 2026-11-07
---

# GitHub Actions 与 Artifacts

返回 [[00-知识库首页]] · [[解包操作手册]] · [[versions/CHN/4.2.8-parallel-unpack-results]]

## 四条实际解包工作流

| 工作流 | 输入依赖 | 核心用途 | 已记录成功任务 |
|---|---|---|---|
| [Stage 1](https://github.com/969981/PVZ2_Resources/actions/workflows/unpack-chn-4.2.8.yml) | `ROMS/CHN/V4.2.8` 连续分卷 | 7z 恢复 APK + SHA 校验 + RSLB → RSB + 直接 RTON 拷贝 | [#42256393599](https://github.com/969981/PVZ2_Resources/actions/runs/42256393599) |
| [Stage 2](https://github.com/969981/PVZ2_Resources/actions/workflows/unpack-chn-4.2.8-rsg.yml) | Stage 1 产出的 RSB Artifacts | RSB → RSGP 资源组、按组输出 SHA 和索引 | [#42258406327](https://github.com/969981/PVZ2_Resources/actions/runs/42258406327) |
| [Stage 3](https://github.com/969981/PVZ2_Resources/actions/workflows/unpack-chn-4.2.8-internal.yml) | Stage 1 产出的 RSB Artifacts | CN Resource_Tool → 内部成员与可解析 RTON JSON | [#42259266531](https://github.com/969981/PVZ2_Resources/actions/runs/42259266531) |
| [Direct RTON](https://github.com/969981/PVZ2_Resources/actions/workflows/unpack-chn-4.2.8-direct-rton.yml) | Stage 1 audit 包中复制的 18 个 `RTON` | 顶层 RTON → JSON | [#42259518014](https://github.com/969981/PVZ2_Resources/actions/runs/42259518014) |

## 依赖图

```text
ROM 分卷 / APK -> [Stage 1]
                    ├── 8 x RSB shard -> [Stage 2] RSGP groups + group index
                    ├── 8 x RSB shard -> [Stage 3] internal files + JSON index
                    └── audit RTON   -> [Direct RTON] 18 JSON + audit
```

Stage 3 并不依赖 Stage 2 的 Artifacts：它直接从 RSB 用 Resource_Tool 完成内部拆包。保留 Stage 2 是为了独立审计 2,964 个 RSGP 组、来源组名与偏移。

## 下载/保存方法

1. 打开上表对应的成功运行任务页面，在 Artifacts 区域找到所需分片。
2. Stage 1 主要为 `pvz2-chn-4.2.8-rsb-0`～`-7` 和 `stage1-audit`。
3. Stage 2 为 `rsg-0`～`-7`、`rsg-index-0`～`-7` 和 dino smoke 报告。
4. Stage 3 为 `json-files-0`～`-7`、`json-index-0`～`-7` 和 dino smoke 报告。
5. 顶层直接转换结果是 `pvz2-chn-4.2.8-direct-rton-json`。
6. 下载后要保存报告 JSON，并按其索引合并分片；不能仅按同名文件覆盖。二进制与派生资源放 `Unpack/` 等忽略目录，不要误提交 Git。

> [!warning] 保留期限与重跑依赖
> 当前四条解包工作流配置 `retention-days: 3`，Artifacts 是临时产物，过期不可再从该 run 直接下载。Stage 2/3 手工触发时检查 `source_run` 参数，不应无条件沿用默认旧 run `42256393599`。Direct RTON 工作流在 YAML 中写死了同一个旧 run ID；此处应在后续工程改为可配置输入。Git 仓库文档与已成功的 CI 结果长期存在，不意味着 Artifacts 也会长期存在。

## 数字核对

- Stage 1：33 RSB + 18 RTON + 38 其他 SMF = 89 处理项。
- Stage 2：33 RSB → 2,964 RSGP，失败 0。
- Stage 3：2,964 组 → 14,869 内部文件，其中 8,091 JSON、6,778 保留原始格式。
- Direct RTON：另外 18 个 JSON（独立数据来源）。

如果下载/复现的数量不同，先比较源 APK SHA256、分片索引、上游解析器 commit 和丢失/跳过情况，再确认是否确实发现新数据。完整证据见 [[versions/CHN/4.2.8-parallel-unpack-results]]。
