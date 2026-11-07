# PVZ2 CHN 4.2.8 Offline Edition — research workspace

Status: **Real APK M0 static audit passed; M1 capture tooling ready. NOT a playable offline APK.** This subproject preserves the upstream game engine and original APK bytes while identifying which startup, save, level and reward functions require online services.

## First local steps

1. Run the read-only APK audit:

~~~powershell
python scripts/offline/audit_apk.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --out audit/local/offline/4.2.8
~~~

2. On a dedicated test device with the game installed, enable airplane mode manually, then capture a launch:

~~~powershell
python scripts/offline/collect_adb_evidence.py --launch --seconds 45 --out audit/local/offline/runs
~~~

3. Compare with an authorized network-enabled baseline only when needed using `--allow-network`. Review the files locally; **never commit unredacted logcat, accounts, device identifiers or APK bytes**.
4. Record findings in `docs/Offline/01-启动与网络依赖.md`, preserving package/build identity and timestamps.

Candidate package name `com.popcap.pvz2cthdbk` comes from repository resource observations, not a verified binary Manifest decode. `aapt2 dump badging` or `adb shell dumpsys package` must verify it first. APK SHA256 is pinned in `config/chn-4.2.8.json`.

## Milestones

- M0: static ZIP, ELF, DEX, manifest and plaintext host-string inspection — this PR.
- M1: reproducible Android airplane-mode launch evidence — collection tooling only, real-device run outstanding.
- M2: identify mandatory network/remote-config and save contracts from actual calls and traces.
- M3: implement a personal offline startup adapter **only where technically supported and validated**.
- M4: local save, complete a level, restart and prove durable progression.
- M5+: progressively restore local game content and optional activities; never invent missing resources or live-server responses.

Read the Obsidian overview in `docs/Offline/00-离线版总览.md`.

The project does not emulate real purchases, grant online account entitlements, or redistribute copyrighted game assets. Do not change `ROMS/` or publish a patched commercial APK.

Real APK evidence: [Actions #42325659025](https://github.com/969981/PVZ2_Resources/actions/runs/42325659025) verified package `com.popcap.pvz2cthdbk`, versionCode `1895`, versionName `4.2.8`, targetSdk `30`, 28 native libraries (ARM64/ARM32), and 142 *static* domain/IP candidates. See `docs/Offline/06-M0真实APK审计.md`.
