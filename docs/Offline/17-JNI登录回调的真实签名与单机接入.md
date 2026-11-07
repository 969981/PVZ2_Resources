---
title: PVZ2 CHN 4.2.8 原生 SDK 登录回调的真实 Java 参数契约
type: evidence-method
region: CHN
version: 4.2.8
status: method-declarations-pending-real-run
updated: 2026-11-07
tags: [pvz2, offline, TWPurchase, JNI, native, login, callback]
---

# `TWPurchase.Native_SDKLoginEnd()` 参数和本地会话合同

## 已闭合的 Java → Native 调用链

从同 SHA256 国服 4.2.8 的 28 个目标 Java 类 / 1,079 条方法记录中，已经独立找出：

1. `TWPurchase.InitializeSDK()` → UI 线程内 `TwOfflineSDK.init()` → 异步 `TwOfflineCallback.onResponse()`；
2. 初始化回调继续调用 `TwOfflineSDK.login()`，并通过 `Native_SDKInitEnd`、`Native_SDKLoginStart` 传递步骤状态；
3. 登录回调 `onResponse` 最终调用 `TWPurchase.Native_SDKLoginEnd()`，把 SDK 结果通知 Native；
4. 另一路 `TalkwebProxy.loginChannel` → `TwOnlineSDK.loginSDK` → `CallbackManager.onLoginCallBack` → `loginCallBack.onResponse`；`PayToolTW.loginSDK` 是通用手机登录桥接。

静态 **Native 方法参数数量线索**：`Native_SDKInitStart(1)`、`Native_SDKInitEnd(2)`、`Native_SDKLoginStart(1)`、`Native_SDKLoginEnd(3)`。这不是参数类型、含义或可信的返回码定义。

## 真实运行时证据

[Android BACK 实测 #42335037684](https://github.com/969981/PVZ2_Resources/actions/runs/42335037684)：飞行模式下 480 秒确认拓维手机号登录 UI，发送一次 `KEYCODE_BACK`。之后 8、35、90 秒截图 SHA 与此前保持一致，游戏前台且仍停留登录页。没有游客、登录页退出或进入主菜单证据。

[JNI 字符串审计 #42335836446](https://github.com/969981/PVZ2_Resources/actions/runs/42335836446)：同原版 ARM64 `libSrc.so` 的 `TWPurchase` 类名位于 `0x16331F7`，`SetIDs` 在 `0x165F985`，`GetTWRequestHead` 在 `0x15D08D8`，`pp.dat` 在 `0x15E1E71`，`PlayerInfo` 在 `0x15F58AD`，`LevelDefinition` 在 `0x16713A4`。**这些是字符串地址，不是函数入口或可直接改动的 ARM64 指令地址。**

## 新增真实方法声明解析器

`scripts/offline/inspect_native_callbacks.py` 在一次性 JADX 私有源树中解析 `TWPurchase.Native_SDKLoginEnd`、`Native_SDKInitEnd`、`TwOfflineSDK.login`、`CallbackManager.onLoginCallBack` 等方法声明：

- 保存 class、method、返回类型、**参数类型列表**、原始源行号、是否 Native 与 SHA256；
- 不上传任何函数体、字符串常量、参数名称、账号、token 或 ELF 字节；
- 测试脚本 `tests/test_offline_native_callbacks.py` 用合成 JNI 声明独立验证签名解析；
- GitHub Actions `pvz2-offline-code-decompile.yml` 在源 APK SHA 校验后执行真实类型提取。

只有拿到真实 `Native_SDKLoginEnd` 的参数类型后，才能在私有测试环境分析 C++ 接收的参数字段与错误状态，不应虚构 `Native_SDKLoginEnd(0, userId, token)` 等调用方式。

## 单机模式接入条件

现有 `Offline/adapter/java/org/pvz2/offline/LocalProfileStore.java` 已在不触网情况下通过 ID 稳定性、关卡幂等结算与重启读回的 Java 单测，但它**不等于游戏原生 `pp.dat` 存档**。

正确实现应采用独立会话来源标记：`LOCAL_OFFLINE` 与真实 `ONLINE_ACCOUNT` 互斥；根据经过验证的 JNI 数据合同构造真正的单机用户状态，再让原生游戏在无账号的情况下进入主菜单，后续逐项验证关卡进入、结算和真实存档。

当前**不存在已通过原版游戏回归的离线畅玩 APK**，不能通过简单固定返回“登录成功”替代。
