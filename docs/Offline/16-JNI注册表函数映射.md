---
title: 国服4.2.8 登录JNINativeMethod注册表与单机入口验证
type: evidence-and-test-workflow
status: four-jninativemethod-candidates-verified-ghidra-pending
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


## 2026-11-07：真实 ELF 注册表定位已成功

[Actions #42338454193](https://github.com/969981/PVZ2_Resources/actions/runs/42338454193) 成功：在原始 SHA256 一致的 ARM64 主库中找到 **4 条连续的 `JNINativeMethod` 结构记录**。它们的名称指针通过 `R_AARCH64_RELATIVE` 重定位指向已确认的 JNI 方法名，签名指针为符合 JNI 语法的字符串，函数指针位于 ELF 可执行 PT_LOAD。

| Native 方法 | 注册表项 RVA | JNI 类型签名 | 候选函数 RVA |
| --- | --- | --- | --- |
| `Native_SDKInitStart` | `0x5E6C910` | `(J)V` | `0x4A9B1B0` |
| `Native_SDKInitEnd` | `0x5E6C928` | `(JI)V` | `0x4A9B284` |
| `Native_SDKLoginStart` | `0x5E6C940` | `(J)V` | `0x4A9B488` |
| **`Native_SDKLoginEnd`** | **`0x5E6C958`** | **`(JILjava/lang/String;)V`** | **`0x4A9B678`** |

这四条**结构证据比仅有字符串的 RVA 强得多**，但它们还只是注册表候选：需要确认运行时代码确实通过 `RegisterNatives` 使用这些表项、目标函数是有效 ARM64 反汇编入口，并明确 `int` 与 `String` 在成功/失败路径中的含义。

已更新 Ghidra 无界面工作流 `.github/workflows/pvz2-offline-ghidra-callgraph.yml`，把以上四个原生函数 RVA 与 21 条服务地址 XREF 一起导入原始 `libSrc.so` 项目，单独产出 `ghidra_jni_function_refs.csv` 并检查四条是否落在有效函数边界。**Ghidra 映射仍属于静态验证，不等于实际登录回调成功或离线关卡可运行。**

## 使用这个地址前必须满足的验证

1. 如解析出函数 RVA，使用同 SHA 的 Ghidra 确认其指令范围和 JNI 形参处理。
2. 在真实 Android 模拟器中通过 GDB/Frida 验证初始化/登录失败回调是否命中这个函数，以及 Java `int/String` 的意义。
3. 明确 native 引擎期待哪种本地玩家记录、权限/存档字段，才能接入 `LocalProfileStore`；不可伪造线上身份、短信、支付或充值回调。
4. 第一关进入、结算、退出重进都要有实际画面/存档数据，未完成前不声明“离线可玩”。

参见 [[15-登录返回键与JNI边界实测]]、[[14-登录到原生引擎的桥接追踪]]、[[12-Ghidra原生调用图与离线分支]]。
