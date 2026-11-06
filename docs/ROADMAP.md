# 国服解包路线图

Objective: reproducible, auditable extraction, with independently validated game semantics. Keep CHN and international builds separate, preserve the APK as immutable evidence and keep ROMS unchanged.

| Phase | Output | Acceptance gate | State |
|---|---|---|---|
| 0 APK inventory | ZIP member list, headers, SHA256, manifest, ABI | every ZIP entry accounted for, package/version confirmed | uploaded metadata inspected; manifest version pending |
| 1a RSLB -> RSB | 33 RSB files, checksums, group metadata | every block length and output 1bsr magic match | code + synthetic tests; real run pending |
| 1b direct RTON/tag | 18 direct RTON and other SMF copies | byte fidelity and format tagging | planned; real run pending |
| 2 RSB -> RSGP | group and internal file catalogs | bounded offsets and group/member audit | not implemented |
| 3 Secondary decode | RTON JSON, PTX PNG, PAM/Reanim structures, audio indexes | format-specific validation and error reports | not implemented |
| 4 Structured CHS data | plants, zombies, levels, waves, abilities, translations | every field traces to a source | not implemented |
| 5 Runtime | libSrc.so ELF ARM64 analysis, behavior/breakpoints | evidence logged per exact build | not implemented |
| 6 Multi-version | differences, unknowns, complete audit | totals, failed cases, reproducible tools | not implemented |

## First execution
1. Run scripts/audit/inspect_apk.py and preserve JSON/CSV, source SHA256.
2. Run scripts/unpack/unpack_smf.py with --mode probe and verify dino RSB and direct RTON.
3. Confirm RSLB version, inner RSB version, group counts/bounds and all stated sizes.
4. Run --mode all; expect 33 RSLB, 18 RTON and 38 additional SMF at APK level.
5. Record per-file success/failures, the decoder version, hashes and the actual unwrapped totals.
6. Only then implement RSGP member extraction. Never relabel compressed .rsb.smf as plain .rsb.

## Subsequent work
- Compare PopStudio, LibWindPop, Pvz2Tool for real format handling; log versions and parameters.
- Explicitly separate ordinary RTON from encrypted RTON; do not claim JSON extraction without valid conversion.
- Read compressed texture pixel data, atlas references, animations and sound files, then verify exported samples.
- Extract Chinese localization from the actual CHN files rather than substituting names from unrelated forks.
- Preserve all raw game identifiers, numeric units and per-field source references in CSV/JSON/SQLite.
- Distinguish configured combat stats from runtime damage/AI logic: static data does not prove behavior.
- Create a deterministic manifest of raw paths -> RSB -> group -> internal member -> derived output.

## Completion and error tracking
Report total, success, failure, unsupported, skipped (with denominators). Errors must contain path, stage, message and retry action. Support optional full hash verification and sample round-trip tests. Avoid duplicating large binaries in Git or Actions artifacts; CI should operate on tiny synthetic fixtures.
