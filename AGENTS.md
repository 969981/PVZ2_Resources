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
- Default to public Git commits for project-authored tools, documentation, metadata catalogs, structured data, and individual extracted media that the project is entitled to redistribute. Remove blanket blocks on publishing assets solely because they are images, animation files, audio files, or game data. Never publish private keys, credentials, personal saves, or other sensitive user data.
- Preserve original case-sensitive filenames and source IDs; avoid cross-version mixing without checksums.

## Engineering
- Python 3.10+ standard library for basic stages. Use CLI with explicit input/output args.
- Source game bytes are read-only. Validate magic, version, offsets and declared sizes.
- Stream large containers blockwise; enforce bounds and avoid ZIP path traversal.
- Write via temporary partial files and atomic rename; never leave misleading partial outputs.
- Tests should use synthetic fixtures by default; real APK is optional and local-only.
- Update docs/versions/CHN/4.2.8.md when new real evidence is available.
- Preserve existing `ROMS/` unmodified. When the user asks for browseable individual-file exports, prefer versioned public files with original paths and SHA256, bounded commits, resume/retry logic, and an audit of any missing shards. Do not treat the 512 KiB text-preview classification as a Git size limit.
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
- Preserve unmodified originals and avoid touching `ROMS/`. Keep login tokens, device identifiers, private logcat and saves out of public history. Signed APKs and native executables require a separate security and redistribution review. Do not claim the right to distribute third-party game assets merely because they were extracted from a locally held APK.
- Do not implement simulated real-money purchases or grant online account entitlements. Local offline economy must remain clearly separate from real online accounts.
- Record package/version/build SHA, method, reproducibility and evidence status for every network contract or native hook. Never invent offsets or remote responses.


## Catalog / individual-file browsing (CHN 4.2.8)
- Catalog/CHN/V4.2.8/shards contains source-backed per-file original path, byte size, SHA256, actual source run and stage/shard; the CSV and SUMMARY are safe metadata, not copied source assets.
- Treat small_file_candidate as a LEGACY optional <=512 KiB text-preview classification. It is NOT the GitHub maximum and must not be quoted as a count of ordinary-Git-eligible files.
- Use git_size_eligible for technical size eligibility (<95 MiB), and git_warning_over_50mib separately. Under 95 MiB does not imply copyright authorization, repository capacity, or successful GitHub UI preview.
- Use `scripts/catalog/index_git_shard.py` to verify and inventory files, then `scripts/catalog/materialize_readable.py` to recover each SHA256-checked original path. `Readable/` stays Git-ignored as a working directory; explicitly approved publishable outputs may be staged into a separate browseable Git directory.
- For files with confirmed redistribution rights, publicly publish individual PNG, animation JSON, audio, and game-data files when explicitly requested; use per-file SHA256 checks and batch commits, not a 512 KiB preview filter. Separate size eligibility (<95 MiB), total repository costs, deduplication and legal redistribution status. Unverified third-party content must not be asserted to be licensed.
- Keep docs/Unpack/10-独立素材清单与Git体积规则.md and the Obsidian MOC up to date with source-backed per-format totals, true size thresholds, and unprocessed shard gaps.

## Public output preference
- The user prefers a publicly browseable per-file repository rather than archive-only downloads. Make public deliverables the default for project-owned or redistribution-permitted material, and keep all original-path, byte-size, SHA256, provenance, and missing-file evidence.
- Do not equate GitHub's 100 MiB per-file technical limit with a grant of copyright or redistribution permission. Flag missing permissions rather than making legal claims or silently publishing third-party copyrighted works.
