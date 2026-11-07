# PVZ2 scripts — observed implementation

See [Windows full unpack runbook](../docs/解包操作手册.md), [repository/APK structure](../docs/文件目录与职责.md), and [verified 4.2.8 extraction report](../docs/versions/CHN/4.2.8-parallel-unpack-results.md).

- `audit/inspect_apk.py`: source APK SHA256, ZIP entries, SMF header probes, CSV/JSON audit and optional full ZIP CRC.
- `audit/report_secondary.py`: inventory all Resource_Tool output stage directories; parse JSON up to 64 MiB and report RTON/RTOM still present.
- `unpack/unpack_smf.py`: serial Stage 1 RSLB v1 -> RSB v4, copy direct RTON and other SMF; test probe/all.
- `unpack/parallel_unpack.py`: parallel Stage 1, optional source SHA guard and resume, `report_probe.json` / `report_all.json`.
- `unpack/extract_rsg_groups.py`: RSB v4 -> actual `.rsg` groups, group bounds and hash, parallel/resume, `rsg_report.json`.
- `unpack/partition_outputs.py`: move RSBs into size-balanced Actions artifact shards; does not duplicate bytes.
- `tools/setup-tools.ps1` + `tools/verify_tools.py`: init and validate pinned third-party git submodules.
- `../tests/test_smf.py`, `test_parallel_unpack.py`, `test_rsg_groups.py`: synthetic regression tests.

`scripts/unpack/extract_rsg_groups.py` **exports whole group buffers only**. Per-member unpack and RTON -> JSON in the verified Stage 3 run were handled by upstream `tools/PVZ2-CN-Reverse-Tools/Resource_Tool/main.py` (pinned commit `04f57f42080ef831545c9b2877f81f811f0be4e2`). PTX/PAM/BNK full media conversion is not implemented by these scripts.

CI has verified real CHN 4.2.8 Stage 1, 2, 3 and direct RTON workflows; that does not mean all sample bytes can be redistributed, nor that all gameplay semantics have been decoded. Keep game data and generated outputs in ignored directories and preserve the original ROMS archive.

## Offline edition research (M0/M1)

- `offline/audit_apk.py`: read-only APK SHA guard, ABI/DEX/ELF/Manifest inventory, optional aapt2 package version, bounded candidate-host scan. Generates ignored `audit/local/offline/4.2.8/` JSON+CSV.
- `offline/collect_adb_evidence.py`: opt-in launch and ADB logcat capture on an **already installed** app; verifies manually enabled airplane mode unless `--allow-network` is selected. Output is ignored and potentially sensitive.
- `../tests/test_offline.py`: synthetic-only regression tests; no device or original APK needed.

See `../Offline/README.md` and `../docs/Offline/00-离线版总览.md`. Neither tool patches APKs or demonstrates a working offline build.
