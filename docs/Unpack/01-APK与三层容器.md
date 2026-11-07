---
title: APK、RSLB、RSB、RSGP 与 RTON 的分层解包
type: runbook
tags: [pvz2, chn, rsb, rsgp, rton, powershell]
region: CHN
version: 4.2.8
status: validated-on-actions
updated: 2026-11-07
---

# 01 · 源 APK → RSB → RSGP → RTON

返回 [[Unpack/00-完整解包导航]] · [[解包操作手册]] · [[研究证据规范]]。

## 真实输入与分层结构

~~~text
PVZ2_4.2.8.apk
├─ 33 个 *.rsb.smf (RSLB) → 33 个 RSB v4
│     └─ 2,964 个 RSGP 组 → 14,869 内部成员
│                              ├─ 8,091 个 RTON→JSON
│                              └─ 6,778 个原生格式文件
├─ 18 个顶层 RTON.SMF → 独立 18 个 JSON
└─ lib/ 等 Android 客户端文件（不属于 RSB 的内部成员）
~~~

原始 APK：2,271,168,082 字节。SHA256 为
64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4。

仓库同时存有 ROMS/CHN/V4.2.8 下的 88 个 7z 连续分卷，可由 .001 统一解压；如本地已有原 APK，不应重复覆盖原件。

## PowerShell 逐阶段操作

在仓库根目录执行，先确保磁盘剩余空间足够、子模块完整：

~~~powershell
git pull origin master
git submodule update --init --recursive
python scripts/tools/verify_tools.py
$Apk = "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk"
$Sha = "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
if ((Get-FileHash $Apk -Algorithm SHA256).Hash.ToLower() -ne $Sha) { throw "APK 不是已验证版本" }
python scripts/audit/inspect_apk.py "$Apk" --out "audit/local/CHN-4.2.8" --full-crc
$Stage1 = "Unpack/CHN/4.2.8/stage1"
python scripts/unpack/parallel_unpack.py "$Apk" --mode probe --out "$Stage1" --workers 2 --sha256 $Sha
python scripts/unpack/parallel_unpack.py "$Apk" --mode all --out "$Stage1" --workers 4 --resume --sha256 $Sha
python scripts/unpack/extract_rsg_groups.py "$Stage1/RSB" --out "Unpack/CHN/4.2.8/stage2" --workers 4 --resume
$Tool = "tools/PVZ2-CN-Reverse-Tools/Resource_Tool/main.py"
python "$Tool" -unpack "$Stage1/RSB" -json -o "Unpack/CHN/4.2.8/stage3" -j 4
python scripts/audit/report_secondary.py "Unpack/CHN/4.2.8/stage3" --out "audit/local/CHN-4.2.8/secondary-report.json"
python "$Tool" -unpack "$Stage1/RTON" -json -o "Unpack/CHN/4.2.8/direct-rton" -j 4
~~~

上游 Resource_Tool 经实测的固定提交：04f57f42080ef831545c9b2877f81f811f0be4e2。单机执行结果需另做校验，不能因为 Actions 以前成功就认为本机成功。

## 分层报告与失败排查

| 阶段 | 报告/产物 | 成功标准 |
|---|---|---|
| APK ZIP | apk_audit.json、CSV | SHA256 匹配，ZIP 条目及 CRC 可检查 |
| RSLB→RSB | report_all.json | 33 RSB，89 项成功，失败 0 |
| RSB→RSGP | rsg_report.json | 2,964 个组，失败 0；magic pgsr |
| RSGP→成员 | secondary-report.json | 14,869 内部成员、8,091 JSON 有效 |
| 直属 RTON | 18 份 JSON | 18/18，来源与内部 JSON 分开记数 |

RSB 头应为 1bsr。--resume 仅用于跳过符合有限条件的文件；严格的源内容证明仍需另行哈希。

实测工作流：[Stage 1 #42256393599](https://github.com/969981/PVZ2_Resources/actions/runs/42256393599)、[Stage 2 #42258406327](https://github.com/969981/PVZ2_Resources/actions/runs/42258406327)、[Stage 3 #42259266531](https://github.com/969981/PVZ2_Resources/actions/runs/42259266531)、[顶层 RTON #42259518014](https://github.com/969981/PVZ2_Resources/actions/runs/42259518014)。

后续：[[Unpack/02-PTX纹理与PNG]]、[[Unpack/08-Git归档与完整性验收]]。
