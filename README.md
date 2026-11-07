# PVZ2_Resources

Plants vs. Zombies 2 Chinese Android resource extraction and research. Current starting point: purported CHN 4.2.8 APK, SHA256 64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4. The filename has 4.2.8; manifest versionName/versionCode still need binary-manifest verification.

The repository's existing ROMS/CHN/V4.2.8 multi-volume 7z archive is preserved unchanged. Code and generated outputs are kept separate.

## 可直接浏览的国服 4.2.8 原始 PNG 图片（2026-11-07）

**1,520 张实际 PNG 文件已全部推送到 `master`**，不是图片解析 JSON 或压缩分卷。8/8 个源分片发布任务均通过完整像素解码及 SHA256 校验，GitHub 递归文件树实际存在 **1,520 个 .png 文件、8 个 PNG-MANIFEST.csv，5,726,599,792 字节**（文件树未截断）。

- [直接进入所有图片目录](Images/CHN/V4.2.8/Media)
- [图片说明与发布范围](Images/README.md)
- [真实发布 Actions #42351434981](https://github.com/969981/PVZ2_Resources/actions/runs/42351434981)
- [Obsidian 图片发布与远端验收](docs/Unpack/16-图片原文件独立发布与验收.md)

仓库维护者声明已取得公开发布图片的许可；这一声明未经自动化独立核验证书。其他类型的商业资源不因此自动获得公开再分发许可。

## 植物、僵尸完整源对象映射（CHN 4.2.8）

已按原始 PlantType/ZombieType 的 **源文件 + object_index** 建立跨格式 SQLite/CSV，并为每个不同 TypeName 生成 Obsidian 页面：381 条植物配置、1,265 条僵尸配置，静态属性/等级明细 16,913 行。

- [直接查植物页面（380 个不同 TypeName）](docs/Entities/CHN/V4.2.8/Plants/INDEX.md)
- [直接查僵尸页面（1,054 个不同 TypeName）](docs/Entities/CHN/V4.2.8/Zombies/INDEX.md)
- [跨格式关联 CSV/SQLite](Catalog/CHN/V4.2.8/entity_map/)
- [Obsidian 第 18 章：完整表关系与 SQL 查询](docs/Unpack/18-植物僵尸跨格式关联数据库.md)
- [植物技能/进阶/装扮](docs/Unpack/19-植物技能等级装扮道具关系核对.md) · [僵尸属性/动作/装备](docs/Unpack/20-僵尸属性能力动画装备关系核对.md)
- [真实 SHA256 恢复与自动关联 Actions #42356858186](https://github.com/969981/PVZ2_Resources/actions/runs/42356858186)

本批数据中的 **4,760** 条技能/投射物 RTID 是静态引用匹配，不代表运行时施放验证；PNG/PAM 关联仍有命名候选，1,595 个图片标识尚未找到精确资源 ID。**不能将数据库存在当作素材全部外键闭合。**

## Updated CHN 4.2.8 unpack results (2026-11-07)

The repository now records real successful Actions runs: 33/33 RSB, 2,964/2,964 RSGP groups, 14,869 internal members, 8,091 converted internal JSON, plus 18 direct RTON JSON. PTX/PAM/BNK media conversion and full structured gameplay database remain separate outstanding tasks. See [file structure](docs/文件目录与职责.md), [file formats and purpose](docs/资源格式与文件用途.md), [unpack runbook](docs/解包操作手册.md), [Actions/artifact guide](docs/工作流与Artifacts.md), and [real extraction evidence](docs/versions/CHN/4.2.8-parallel-unpack-results.md).

## Layout
- AGENTS.md — project rules for coding assistants.
- docs/ROADMAP.md — phased extraction and validation gates.
- docs/FORMATS.md — APK/SMF/RSLB/RSB/RTON layers.
- docs/SCHEMAS.md — provenance requirements and proposed data exports.
- docs/versions/CHN/4.2.8.md — specific observed counts, identity, unanswered questions.
- scripts/audit/inspect_apk.py — APK ZIP inventory and SHA256.
- scripts/unpack/unpack_smf.py — stage 1 RSLB unwrap + direct RTON copy.
- tests/test_smf.py — synthetic tests.
- ROMS/ — preexisting versioned archive; do not modify unintentionally.

## Commands (Python 3.10+, no third-party Python modules)
~~~powershell
python scripts/audit/inspect_apk.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --out audit/local/4.2.8
python scripts/unpack/unpack_smf.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --mode probe --out Unpack/CHN/4.2.8/stage1
python scripts/unpack/unpack_smf.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --mode all --out Unpack/CHN/4.2.8/stage1
python -m unittest discover -s tests -v
~~~

Probe: dino.rsb.smf and resourcesDino.rton.smf. Stage 1 only creates RSB outer files and copies RTON; it does not extract individual RSGP members, convert RTON to JSON, or decrypt anything. Full stage 1 RSLB output is estimated from headers to be approximately 5.51 GiB; keep additional temporary space.

See docs/ROADMAP.md before claiming a complete extraction. Only redistribution-permitted generated resources, such as the maintainer-attested PNG collection linked above, may be published; other game resource bytes require separate rights assessment.

## Third-party tools: actual pinned Git submodules

Eight upstream resource tools have been linked in tools/; see tools/README.md and tools/upstreams.json for roles, licenses, SHAs and known limitations.

~~~powershell
git submodule sync --recursive
git submodule update --init --recursive
python scripts/tools/verify_tools.py
~~~

For selective installation on Windows: powershell -ExecutionPolicy Bypass -File .\scripts\tools\setup-tools.ps1 -Only PopStudio,LibWindPop,Pvz2Tool

The tools are tracked upstream sources, not evidence of real CHN 4.2.8 extraction. Existing ROMS/ files are unchanged.

## Obsidian documentation

The entire [docs/](docs/README.md) directory is a standalone Obsidian Vault. Clone this repo, open the local `PVZ2_Resources/docs` folder in Obsidian and start at [00-知识库首页](docs/00-知识库首页.md). New notes use shared `docs/_templates/` templates and Wiki links. Personal workspace state is git-ignored; repo paths and existing technical documents are preserved.

## CHN 4.2.8 offline research (M0 verified, M1 pending)

[Real APK static audit Actions #42325659025](https://github.com/969981/PVZ2_Resources/actions/runs/42325659025) succeeded with the original SHA-verified 88-volume APK. Android aapt2 verified package `com.popcap.pvz2cthdbk`, versionCode `1895`, versionName `4.2.8`, targetSdk `30`; 28 native libraries and 142 candidate host strings were observed in a bounded scan. These are **not observed network requests**, and this repository **does not contain a working offline APK**. See [Offline M0 evidence](docs/Offline/06-M0真实APK审计.md) and [M1 device test protocol](docs/Offline/01-启动与网络依赖.md).
