# PVZ2_Resources — Agent Rules

Target game: Plants vs. Zombies 2; current focus: Android Chinese edition (CHN) 4.2.8. The source branch is master. Preserve the preexisting ROMS/ archive and never alter it without explicit authorization.

## Pipeline and responsibilities
1. Stage 0: APK manifest, ZIP entry inventory, SHA256, ABI, sampled file headers.
2. Stage 1: APK ZIP -> RSLB (.rsb.smf) -> RSB; copy plain RTON, tag metadata.
3. Stage 2: RSB v4 -> RSGP groups -> file inventory and extracted members.
4. Stage 3: RTON -> JSON; PTX -> PNG; PAM/Reanim -> structures; media catalog.
5. Stage 4: plant/zombie/level/wave/ability/localization tables -> CSV/JSON/SQLite.
6. Stage 5: code-level analysis of arm64-v8a/libSrc.so; dynamic validation.
7. Stage 6: version diff, completeness audit and documented release.

## Mandatory evidence rules
- Never mistake header recognition or synthetic fixture success for real-file extraction.
- Label claims as inventory-only, header-identified, synthetic-tested, real-sample-tested, decoded, validated, or unresolved.
- Do not fabricate plant or zombie attributes, Chinese names, IDs, gameplay offsets, or sample counts.
- Differentiate observed bytes, documented format assumptions, inferred meaning and runtime-confirmed behavior.
- Every exported row needs region, version, original APK SHA, original path, container chain, parser version, warnings and status.
- Encrypted, unknown, corrupt and unsupported files remain in error inventory; never quietly omit them.
- Do not publish game assets, APK files, private keys, personal saves or credentials.
- Preserve original case-sensitive filenames and source IDs; avoid cross-version mixing without checksums.

## Engineering
- Python 3.10+ standard library for basic stages. Use CLI with explicit input/output args.
- Source game bytes are read-only. Validate magic, version, offsets and declared sizes.
- Stream large containers blockwise; enforce bounds and avoid ZIP path traversal.
- Write via temporary partial files and atomic rename; never leave misleading partial outputs.
- Tests should use synthetic fixtures by default; real APK is optional and local-only.
- Update docs/versions/CHN/4.2.8.md when new real evidence is available.
- Preserve existing ROMS and restrict commits to code, documentation, schemas and small authorized fixtures.
- Report commit URL, tests, current support boundary and unresolved questions upon completion.

## Tool sources
PopStudio https://github.com/PopGameTool/PopStudio
LibWindPop https://github.com/PopGameTool/LibWindPop
Pvz2Tool https://github.com/DreamMoonCai/Pvz2Tool
RSLB exploration https://github.com/Jelly-RayTian/pvz2-format-exploration

Respect third-party licenses. This repository does not contain a verified complete Chinese edition gameplay database yet.
