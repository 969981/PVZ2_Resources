---
title: 国服4.2.8 登录JNINativeMethod注册表与单机入口验证
type: evidence-and-test-workflow
status: table-scanner-ready-real-results-pending
region: CHN
version: 4.2.8
updated: 2026-11-07
tags: [pvz2, offline, arm64, jni, ghidra, login]
---

# 从 `Native_SDKLoginEnd` 名称追踪到真实原生函数

## 已验证前提

[真实 JNI 合约审计 #42337879073](https://github.com/969981/PVZ2_Resources/actions/runs/42337879073) 成功，并从国服 4.2.8 APK 同 Build 的 Java 源码恢复了下面的事件链：

```text
TWPurchase.run()
 → Native_SDKInitStart(...)
 → TwOfflineSDK.init(...)
 → onResponse(...)
 → Native_SDKInitEnd(...)
 → Native_SDKLoginStart(...)
 → TwOfflineSDK.login(...)
 → onResponse(...)
 → Native_SDKLoginEnd(...)
```

`Native_SDKLoginEnd` 的 Java 声明类型为 **`void(long, int, String)`**；拓维回调接口 `TwOfflineCallback.onResponse` 为 **`void(int, String)`**。有 5 处 `Native_SDKLoginEnd` 的 Java 调用候选分支（TWPurchase 行 169、173、177、180、185），但实际成功条件和第三参数意义还没证实。

ARM64 `libSrc.so` 中 `Native_SDKLoginEnd` 的字符串 RVA 是 `0x1654227`。这是常量数据位置，不是 native 函数入口。真实 ELF 的动态符号导出表中没有 `Java_com_popcap_pvz2cthddev_TWPurchase_...` 显式导出；可能由 `RegisterNatives` 间接注册，也可能属于未枚举到的其他结构。

## 已提交的非侵入式注册表探针

`scripts/offline/jni_registration_probe.py` 只读取 SHA256 验证的 APK 提取出来的**私有** ARM64 `libSrc.so`，寻找 ELF64 中结构有效的 `JNINativeMethod` 表：

```text
name*      → "Native_SDKLoginEnd"
signature* → 例如方法签名字符串（必须来自真实 ELF）
fnPtr*     → 指向 ELF 的可执行 PT_LOAD 段
```

它同时尝试处理原始 8 字节指针和 `R_AARCH64_RELATIVE` RELA addend，验证签名是 JNI 格式、函数地址落在可执行段，然后只导出：

- 原生方法名和名称字符串 RVA；
- 候选注册表项 RVA；
- JNI 参数签名；
- 候选原生函数 RVA；
- 引用来源（原始指针或相对重定位）。

工作流 `.github/workflows/pvz2-offline-code-decompile.yml` 会调用本工具，仅上传 `jni_registration_candidates.csv` 和 `jni_registration_summary.json` 等**结构化元数据**。没有把原始 ELF、反编译函数体或 APK 公开上传。若无有效注册表项，标为 `0`：可能使用 Android packed relocations、`RELR`、动态构表或其他 JNI 注册方式，**不能据此声称该函数不存在**。

## 使用这个地址前必须满足的验证

1. 如解析出函数 RVA，使用同 SHA 的 Ghidra 确认其指令范围和 JNI 形参处理。
2. 在真实 Android 模拟器中通过 GDB/Frida 验证初始化/登录失败回调是否命中这个函数，以及 Java `int/String` 的意义。
3. 明确 native 引擎期待哪种本地玩家记录、权限/存档字段，才能接入 `LocalProfileStore`；不可伪造线上身份、短信、支付或充值回调。
4. 第一关进入、结算、退出重进都要有实际画面/存档数据，未完成前不声明“离线可玩”。

参见 [[15-登录返回键与JNI边界实测]]、[[14-登录到原生引擎的桥接追踪]]、[[12-Ghidra原生调用图与离线分支]]。
