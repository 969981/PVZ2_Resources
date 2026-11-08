# PVZ2 CHN 4.2.8 — Ghidra surface-init review (2026-11-08)

> Scope: read-only triage of original ARM64 `libSrc.so`. This note does **not** claim an offline-playable APK.

## Provenance
- Branch: `experiment/chn428-offline-gate-20261107`
- Ghidra workflow: [run 42380912254](https://github.com/969981/PVZ2_Resources/actions/runs/42380912254), job `surface-native`: completed/success.
- Artifact: `pvz2-arm64-surface-ghidra-callgraph` (artifact 13578715650), SHA-256 `fbd66e2c23b94f44438a4ff2b8b6108c9df10abc5b0490ce9ffbf74dfed953f1`.
- Verified original APK digest: `64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4`.
- JNI registration evidence: `surface_jni_registration.json`, `surface_function_refs.csv`, `surface_function_summary.json`.

## What the artifact actually establishes
| Item | Observation | Limit |
|---|---|---|
| JNI Java method | `Native_onSurfaceCreated()V` | Structural registration candidate, not runtime-proven |
| JNI function-pointer candidate | `0x05722ff0` | Located **inside** a Ghidra-defined function; do not treat as an independently validated function start or patch site |
| Ghidra function containing candidate | `FUN_057227f0` at `0x057227f0` | Ghidra static interpretation; confirm with runtime trace |
| Function size | 2,280 address units (as reported by tool) | Not a disassembly of each branch |
| Direct call graph | 44 callees; 1 caller | Callgraph is not a verified integrity-check path |
| Static caller | `FUN_0568d380` | Actual runtime relationship unverified |
| UI and exit | Frida previously observed `UI_ShowAlertDialog(exitApp=true)`, `Device_ExitApp`, `Process.killProcess` | Triggering condition remains unlocated |
| Offline menu/level/save | Not established | All require real emulator evidence |

## Important correction
The registration candidate `0x05722ff0` must **not** be described as the Ghidra function entry: Ghidra placed the instruction in `FUN_057227f0`. A structural JNI mapping can resolve into a function body for several reasons (analysis function boundary, entry thunk, relocations). Neither proves an integrity guard.

## Next read-only analysis
1. Export full callsites, conditionals and cross-references surrounding `FUN_057227f0` and its caller `FUN_0568d380`; preserve original module load base and ASLR mapping.
2. Separately identify runtime JNI registration and calls to `UI_ShowAlertDialog` and `Device_ExitApp`. Record thread, timestamps and non-sensitive native backtrace for both.
3. Compare original untouched APK against rebuilt/re-signed APK in the same emulator with identical permissions and offline settings; test only local test environments.
4. Determine whether exit arises from signing/integrity checks, native initialization error, missing runtime dependency, or independent process teardown. Label each hypothesis unconfirmed until discriminating evidence exists.
5. Independently audit offline login state initialization, main-menu transition, first-level play, cold-start save compatibility and absence of network dependencies.

## Release gate
Do not label the build playable until an airplane-mode test proves: (a) menu entered; (b) first stage completed; (c) completion saved; (d) process stopped and relaunched; (e) local progress restored; (f) no hidden network reliance.

## Publishing
Publish original scripts, test harnesses, documentation and reproducible build tooling only where rights allow. Do not publish proprietary APKs, `libSrc.so`, full commercial assets or derived game binaries without appropriate permission.
