---
title: 4.2.8 libSrc.so JNI 类名与用户桥接字符串查找
type: evidence-method
region: CHN
version: 4.2.8
status: native-identifier-index-ready-verification-pending
updated: 2026-11-07
tags: [pvz2, offline, JNI, libSrc, TWPurchase, TwOfflineSDK]
---

# 在原生 `libSrc.so` 中确认 PopCap → Java SDK 桥接线索

[真实 Java 跨类索引 #42335221072](https://github.com/969981/PVZ2_Resources/actions/runs/42335221072) 证明同一国服 4.2.8 APK 具有 `TWPurchase`、`TwOfflineSDK`、`AndroidGameApp` 等实际类，并记录 528 个相关 Java 文件、826 个候选调用点。下一步不能仅凭 Java 中出现一个 SDK 方法就认定 `libSrc.so` 调用了它。

新增 `scripts/offline/native_java_bridge_identifiers.py`，在严格 SHA256 验证的原始 APK 内提取 ARM64 `libSrc.so`，搜索以下固定标识符：`TWPurchase`、`SexyAppActivity`、`SexyAppFrameworkActivity`、`AndroidGameApp`、`TwOfflineSDK`、`TwOfflineCallback`、`SetIDs`、`GetTWRequestHead`、`PlayerInfo`、`pp.dat`、`LevelDefinition` 等。

输出两份只读索引：

- `native_java_bridge_identifiers.csv`：匹配类别、ELF 文件偏移、`PT_LOAD` 映射的地址。
- `native_java_bridge_summary.json`：真实文件 SHA256、匹配数以及证据界限。

对应 GitHub Actions：`.github/workflows/pvz2-offline-native-jni-strings.yml`。只保留衍生的类名/地址元数据，原始商业游戏二进制留在临时工作目录。

> [!important] 这里不能犯的错误
> “找到 `TWPurchase` 类字符串”不是“已经确认游戏成功回调”，更不是“可以修改的联网检查分支”。可能存在 Java 反射、`RegisterNatives`、`JNI_OnLoad`、动态 class loader、字符串构造及虚函数表；需要通过 Ghidra 静态引用和运行时调用验证。

若能在 Native 中找到桥接，可将调用关系写作：
**原生调用位置 → Java 类/方法签名 → SDK 回调 → 本地用户数据字段 → 原生返回流程**。

仅在上述路径逐一验证后，才能连接已经通过独立测试的 `LocalProfileStore`。原版关卡进入、结算、回读存档仍处于未验证状态。

参见 [[15-TWPurchase登录桥接与本地玩家边界]] · [[14-登录到原生引擎的桥接追踪]] · [[12-Ghidra原生调用图与离线分支]]
