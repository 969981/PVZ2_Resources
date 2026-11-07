---
title: 国服 4.2.8 Android 模拟器离线实测
type: experiment
region: CHN
version: 4.2.8
status: runner-created-awaiting-results
updated: 2026-11-07
tags: [pvz2, offline, emulator, arm64, android]
---

# Android 模拟器离线测试

真实 4.2.8 APK SHA256 已验证；仅含 arm64-v8a 和 armeabi-v7a 两套原生库。GitHub Actions 创建 Android 11（API 30）Google APIs x86_64 模拟器，测试系统 ABI、native bridge 能力及适用情况下安装原版 APK。

本实验脚本位于 scripts/offline/emulator_smoke.py，工作流位于 .github/workflows/pvz2-offline-emulator-smoke.yml。原始 ROMS 和 APK 保持只读。

## 分阶段判定

| 状态 | 判定 |
| --- | --- |
| BLOCKED_NATIVE_ABI | 模拟器无原生 ARM ABI，且未发现 Native Bridge；不能得出游戏联网失败结论 |
| BLOCKED_INSTALL_TIMEOUT / BLOCKED_INSTALL_ERROR | APK 未安装成功；查看报告中错误类型 |
| BLOCKED_AIRPLANE_MODE | 飞行模式未确认，不进入离线启动 |
| BLOCKED_LAUNCH | Monkey 启动事件没有成功注入 |
| PROCESS_NOT_ALIVE | 已发启动事件，但观察后无进程；仍需分析崩溃原因 |
| PROCESS_ALIVE_UI_UNVERIFIED | 进程仍存活，但无法证明进入主界面、打完关卡或已离线保存 |

上传的 Artifact 仅含匿名化、聚合化 JSON，不保留原始 logcat、截图、APK/资源或账号信息。GitHub Actions 的 success 仅说明测试步骤执行，不代表可游玩。

## 下一轮

若 x86_64 模拟器不存在 ARM Native Bridge，应单独试验 ARM64 系统镜像或有转译能力的环境；不要把 ABI 故障误判为联网限制。只有 APK 安装并启动后才开始关卡和存档诊断。

返回 [[00-离线版总览]]、[[01-启动与网络依赖]]、[[06-M0真实APK审计]]

## 2026-11-07 第一轮实际测试

- [Actions #42326808614](https://github.com/969981/PVZ2_Resources/actions/runs/42326808614) 在真实 APK、真实 Android 11/API30 `google_apis` x86_64 AVD 上执行。
- 已确认 SHA256 的 2.27 GB 原始 APK；安装成功耗时 41.3 秒，实际包名 `com.popcap.pvz2cthdbk`，版本 4.2.8（1895）。
- 系统 ABI：`x86_64,x86,arm64-v8a,armeabi-v7a,armeabi`；Native Bridge 为 `libndk_translation.so`，ARM 原生库转译可用。
- 飞行模式设置确认开启；关闭 Wi-Fi 和移动网络操作均返回 0，Monkey 启动事件注入成功。
- 25 秒后游戏进程仍存活；采样范围内 Java FATAL、native fatal、dlopen/UnsatisfiedLinkError 和常见网络异常计数均为 0。
- **本次 Actions 结果标记失败的原因不是游戏，而是 android-emulator-runner 将多行 `script` 分别执行，第二段 heredoc 的 `import` 被作为 shell 命令解释**；主烟雾测试已产出 JSON，失败仅发生在打印摘要阶段。
- 此轮不能确认是否进入主界面，也没有完成关卡/存档验证。已针对摘要脚本进行修复，并加入前台 Activity 与截图有效性（只保存宽高和 SHA，不保存图片）的探针。

证据等级：真实模拟器安装与进程存活已验证；画面/关卡/离线完整性未验证。

## 2026-11-07 第二轮：模拟器完整工作流成功

- [Actions #42327496740](https://github.com/969981/PVZ2_Resources/actions/runs/42327496740)：**workflow success**；修复了上轮脚本 shell 分行问题，所有步骤完成。
- Android 11 / API 30；`sdk_gphone_x86_64`，ARM ABI 通过 `libndk_translation.so` 兼容。
- 原 APK SHA256 再次匹配；Android 安装 4.2.8 / 1895 成功，约 56.1 秒。
- 飞行模式开启；关闭移动数据与 Wi-Fi 命令成功；原始游戏应用的启动事件已注入。
- 25 秒观察后：`process_alive=true`、`foreground_activity_package_detected=true`。
- 从设备成功截获有效 PNG 截图，分辨率 2340×1080；只存储图像 SHA256 和尺寸，不上传图片本体。
- Java fatal / native fatal / native linker error / 常见网络异常均为 0（仅本次 5000 条 logcat 采样，不是所有潜在错误都不存在）。
- [Actions Artifact](https://github.com/969981/PVZ2_Resources/actions/runs/42327496740) 保存匿名化 `emulator_smoke.json`，有效期 7 天。

> [!important] 证据界限
> **已验证**：原始 APK 可在 ARM 转译的 Android 11 Google APIs 模拟器上安装，飞行模式下能够启动为前台 Activity，25 秒后进程存活并截获有效画面。
> **未验证**：画面是否进入主菜单，是否卡在网络登录/更新，具体显示文本、可进入关卡、完整结算、存档持久化。

下一步若要闭合 M1，需要隔离环境 UI 的真实截图审核（可只在本地临时保存，不入 Git）、观察更长时间并记录首屏状态；然后安排主线首关进入/退出/存档重启的实际 UI 测试。
