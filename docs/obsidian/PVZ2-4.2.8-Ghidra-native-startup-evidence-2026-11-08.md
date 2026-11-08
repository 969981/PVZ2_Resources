# PVZ2 CHN 4.2.8: Ghidra native startup analysis (2026-11-08)

## Verified evidence
- GitHub Actions run [42380912254](https://github.com/969981/PVZ2_Resources/actions/runs/42380912254), job `surface-native` **success**.
- Artifact `pvz2-arm64-surface-ghidra-callgraph`, artifact ID `13578715650` (original verified ARM64 libSrc.so).
- `surface_function_summary.json`: `GHIDRA_SURFACE_FUNCTION_BOUNDARY_ANALYZED`.
- JNI structural registration candidate for `Native_onSurfaceCreated()V` at ELF RVA `0x05722FF0`. **This is not the entry of the enclosing Ghidra function.**
- Ghidra enclosing function: `FUN_057227f0`, entry `0x057227F0`, 2280 mapped addresses, 44 static callees, one detected caller (`FUN_0568d380`).
- Static evidence does not prove the runtime caller or integrity-check branch.

## Evidence from previous runtime probes (as reported)
- One `UI_ShowAlertDialog` with `exitApp=true` and one `Device_ExitApp` and `Process.killProcess` from `AndroidSurfaceView.Native_onSurfaceCreated` initialization.
- The alert button was not clicked. The alert and termination therefore require independent observation.
- Prior offline UI acceptance succeeds; main menu, first level and persistence are NOT verified.

## Immediate next experiment — read-only, branch and caller proof
1. On the original, SHA-verified library, preserve Ghidra's image base and distinguish ELF RVA vs. loaded address vs. enclosing function start.
2. Export a decompiler listing, basic-block edges, and references/call sites for `FUN_057227f0` and `FUN_0568d380`; include references to `UI_ShowAlertDialog` and `Device_ExitApp` method/strings rather than treating literal references as proof of control flow.
3. Obtain a call-path sequence around the earliest runtime `UI_ShowAlertDialog` and `Device_ExitApp`, together with native backtraces and actual loaded `libSrc.so` base; verify whether native bridge architecture changes the symbol mapping.
4. Record predicate inputs before each exit call (package signing/manifest/assets/dependency readiness) without suppressing termination or rewriting server responses. A branch is confirmed only after its runtime condition and executable target both match static analysis.
5. A/B test original APK vs. identical resources with signing-only changes and vs. local-only edits. Keep logging off the hot path to avoid timing distortions. Specify device ABI, version, hashes, and clock-relative events.

## Separate offline initialization gate
- Verify local player identity and initialization as a different concern from startup integrity.
- Check main-menu rendering, offline first-level launch, completion, process restart and byte-for-byte saved progress read-back.
- CI build/sign/install success is NOT a gameplay pass.

## Open-source release boundary
Publish original investigative scripts, reproducible build scripts, documentation, and independently authored local-play components only. Do not publish the proprietary game's APK, DEX, native SO, extracted art/audio, or other copyrighted resources without permission. Reproducing the proprietary application as an openly redistributable game requires authorization from the rights holder, or a clean-room recreation with original/licensed assets.
