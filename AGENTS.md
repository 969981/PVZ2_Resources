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

## Obsidian documentation contract
- Treat `docs/` as an Obsidian Vault root, not the repository root.
- Begin at `docs/00-知识库首页.md`; keep `docs/README.md` as a GitHub-readable entrance.
- Every research note should have Obsidian YAML Properties (title, type, tags, region/version where relevant, evidence status where relevant); link related notes using `[[Wiki links]]`.
- Use `docs/_templates/` for format, experiment, version and field research. Put approved illustrations in `docs/_attachments/`.
- Keep `docs/ROADMAP.md`, `docs/FORMATS.md`, `docs/SCHEMAS.md`, and `docs/versions/CHN/4.2.8.md` at stable paths.
- Never treat knowledge-graph backlinks, TODO completion or note frontmatter as proof of real-resource decoding. Include hash, exact build, tool/commit, original path, offset/field, reproduction command, and validation status when making claims.
- Do not add large assets, proprietary game bytes, secrets, per-user Obsidian workspace state or community plugin code to the Vault.

## CHN offline edition (M0/M1) rules

- See `Offline/README.md`, `docs/Offline/00-离线版总览.md` and `scripts/offline/` before making changes to the offline workstream.
- Do not claim an offline-playable APK on the basis of static host strings, synthetic tests, hook stubs or missing networking logs. Runtime success requires an airplane-mode device and a complete launch/play/save/restart trace.
- Preserve unmodified originals, avoid touching `ROMS/`, never commit signed APKs, DEX/SO binaries, login tokens, device identifiers, private logcat, saves or unlicensed extracted assets.
- Do not implement simulated real-money purchases or grant online account entitlements. Local offline economy must remain clearly separate from real online accounts.
- Record package/version/build SHA, method, reproducibility and evidence status for every network contract or native hook. Never invent offsets or remote responses.
