---
title: 国服 4.2.8 TWPurchase 登录桥接与本地用户接入候选
type: evidence-investigation
region: CHN
version: 4.2.8
status: candidate-callsites-found-contract-not-verified
updated: 2026-11-07
tags: [pvz2, offline, TWPurchase, twOfflineSDK, JNI, login, local-profile]
---

# 从 PopCap 自己的 `TWPurchase` 追到真实登录回调

> [!warning] 仍未获得可安全替换的 SDK → Native 用户回调
> 下面均为**真实 APK 的 Java 静态引用站点**，不等于动态执行顺序、成功回调参数、可修改补丁位置，更不能用于伪造付费权益。

## 来自同 SHA256 APK 的证据

[Actions #42335221072](https://github.com/969981/PVZ2_Resources/actions/runs/42335221072) 已用官方 JADX 在 528 个相关 Java 文件中导出 826 条 SDK/游戏桥接站点。索引为 `login_game_jni_bridge_sites.csv`，不上传原 Java 源码。关键条目：

| 类和行号 | 静态引用 | 意义（待运行时确认） |
| --- | --- | --- |
| `com/popcap/pvz2cthddev/SexyAppActivity.java:40` | `TwOfflineSDK` | 生命周期的原生游戏集成层直接调用拓维 SDK |
| `SexyAppActivity.java:61/70/78/86/94/102/110/131` | `TwOfflineSDK` | OnResume/OnPause/OnStop 等多处 SDK 生命周期处理 |
| `SexyAppFrameworkActivity.java:395` | `TwOfflineSDK` | 正式游戏 Activity 的 `onCreate` 路径中出现 SDK |
| `com/popcap/pvz2cthddev/TWPurchase.java:146/156/207/226/274/310/524` | `TwOfflineCallback` | PopCap 层实现多处 SDK 异步调用，需分类回调用途 |
| `TWPurchase.java:565` | `TwOfflineSDK` | `SetIDs` 有拓维调用，可能关联设备/游戏标识；未确认是玩家登录 |
| `TWPurchase.java:566` | `CertificationCallback` | SDK 认证或身份检查相关回调线索，需要严格区分权限和消费 |
| `TWPurchase.java:351/372/397/511` | `GetDeclare` / `GetChannelID` / `GetChannelUpdateUrl` / `GetTWRequestHead` | 可能是渠道/更新/请求头配置，不能据此断言是关卡网检 |
| `AndroidGameApp.java:157/179` | `Native_GameAppInitialize` / `Native_applicationDidFinishLaunching` | **游戏原生生命周期**已经进入 JNI |
| `com/tw/gamesdk/core/GameSDK.java:180/197/228` | `TwPay.loginSdk/loginQuickSdk` | 另一组通用手机登录 SDK 客户端入口 |
| `TwGameLoginUtil.java:456` | `RequestUtils.twgameLogin` | 手机号登录 UI 连接网络请求的路径 |

**关键改正**：不能只追 `GameSDK.login()`。游戏自身命名空间中的 `TWPurchase` 和 `SexyAppActivity` 调用 `TwOfflineSDK`，因此至少存在两组 SDK 入口。真正能接入单机档案的边界应以 PopCap → SDK → JNI 完整契约为准。

## 新增真实方法级解析范围

`scripts/offline/inspect_login_flow.py` 在同一真实 APK 的私有 JADX 树中新增：

- `TWPurchase.java`、`TWGameAd.java`；
- `TwOfflineSDK.java`、`TwOfflineSDKImpl.java`、`CallbackManager.java`、`TalkwebProxy.java`；
- `TwgameAccountLoginUtil.java`、`TwgameLoginQuickUtil.java`、`PayToolTW.java`、`com/tw/pay/sdk/ui/MainActivity.java`。

这些类与先前 18 个核心 Java 类一并导出**方法名、参数数量、源行号、结构化调用名、SHA256**。没有原始源码、token、真实账号数据或支付信息。

## 需要按类别划分接口

1. **用户识别 / 会话交付**：哪一个 SDK 异步回调在成功后通知 PopCap 原生引擎？查参数类型、线程、持久化时机，而不是填入一个假的在线 UID。
2. **游戏进度本地化**：关卡配置和本地玩家进度必须在原生存档中对账，`LocalProfileStore` 目前只是独立的纯本地验证组件。
3. **渠道/资源更新**：如果已由本地 APK 包含且可独立读取，记录确切可选调用，再考虑安全跳过而非返回假下载成功。
4. **付费/广告/实名认证**：即使同在 `TWPurchase` 里也不能一概视为“进入关卡的联网检查”；不创建虚假订单、不伪造在线身份或权益。

## 真正可验收的结果

本阶段的完成标准是：在同构建模拟器中实际证实**哪个用户数据对象/回调被 PopCap 消费**，创建本地专用玩家对象并在无网络状态下进入第一个主线关卡，按真实关卡结果写回，退出并重新载入。当前仍未完成这些运行时验证，不能提供“离线畅玩已完成”的结论。

参见 [[13-解压完成后的拓维登录阻塞]] · [[14-登录到原生引擎的桥接追踪]] · [[10-全代码反编译与离线检查点]]
