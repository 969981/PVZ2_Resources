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
