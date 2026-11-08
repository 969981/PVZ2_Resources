# PVZ2 CHN 4.2.8 — 开源离线改造工程

Status: **APK 审计、六 DEX 研究性构建、Android 11 断网实测、Frida JNI 原生退出追踪和 Ghidra 初始化函数边界确认已完成。仍未进入原版主菜单／第一关／原版存档，故不是可玩的离线发行版。** This subproject preserves the upstream game engine and original APK bytes while identifying which startup, save, level and reward functions require online services.

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

Package `com.popcap.pvz2cthdbk` 已经由原版 AndroidManifest 的 `aapt2` 解码核验（versionName 4.2.8，versionCode 1895）；每次改造都继续要求原始 APK SHA256 校验。 APK SHA256 is pinned in `config/chn-4.2.8.json`.

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


## “开源”与“正常游玩”的两个独立条件

**开源范围**：我们自行编写的资源解析、复现构建、Frida/Ghidra 探针、本地玩家档案与自动化测试。公开仓库里的源码并不自动意味着已获得原商业游戏代码、模型、音乐、关卡素材和签名的再许可；反编译 Smali、原版 APK 及 SO 也不能仅凭上传变成自由软件。不同组件发布前要核实权利归属与许可证。由用户自行提供并验证来源的原版 APK，可在本地构建测试，不公开散发修改版商业 APK。

新编写的研究工具与诊断脚本采用明确限定范围的 [MIT 许可](OPEN_SOURCE_TOOLING_LICENSE.md)；对反编译商业代码、APK、原生库和素材不作任何再许可。

**可玩验收**：只允许当同一构建在 Android 飞行模式真实达到以下四项并且存储证据时写“离线可玩”：1. 未联网进入原版主菜单／地图；2. 进入并完成原版第一关；3. 确认真正的游戏进度由原生引擎持久化；4. 强制停止、冷重启后仍可读取进度。自动脚本通过、界面出现或独立 Java 档案单测成功都不能替代这些结果。

### 目前最重要的已证实阻碍

- 改造版在首次同意隐私条款后由 `AndroidSurfaceView.Native_onSurfaceCreated()` 的初始化链触发正版警告。
- Frida 在 Android 11 实测到原生层请求 `AndroidGameApp.UI_ShowAlertDialog(...,exitApp=true)`，并调用 `Device_ExitApp()` → `Process.killProcess()`，不是安卓随机终止。
- 原版 SHA256 核对的 ARM64 `libSrc.so` 已定位 `Native_onSurfaceCreated` JNI 注册表候选 `0x05722FF0`；Ghidra 发现其处于 `FUN_057227F0` 内，存在函数边界不一致问题。完整性校验分支仍待确认。
- 为分离**签名完整性门控**与**本地会话能否初始化**，新增一条对原版签名不作任何改动的 Frida 本地会话实验，见 `.github/workflows/pvz2-offline-original-signed-local-trial.yml`。该实验不建立网上账户或伪造付费能力；现阶段不代表可玩版本。

最新对照测试：原版签名 APK 的 `passive-observer` 模式默认不替换游戏方法，单独记录资源阶段；原有本地 JNI 回调试验需手动选择 `jni-trial`。这是诊断实验而非可玩版本。技术说明：[[29-离线资源被动对照与JNI分支索引-2026-11-08]]。\n\n实际证据与技术记录：[[28-Ghidra-Surface入口与原版签名A-B证据-2026-11-08]] · [[27-离线门控与完整Smali本地会话实测]] · [[19-离线主菜单关卡结算重启读档验收规范]]。所有研究与可复现脚本都应保留源版本 SHA、Git commit、Android ABI、失败状态和原始结果引用。

