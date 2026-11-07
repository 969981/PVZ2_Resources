---
title: PvZ2 国服 4.2.8 原生联网函数与调用图恢复
type: evidence-method
region: CHN
version: 4.2.8
status: ghidra-headless-runner-created-pending-real-results
updated: 2026-11-07
tags: [pvz2, offline, ghidra, arm64, native, xref, code]
---

# 同 Build 的 `libSrc.so` 函数边界与调用关系恢复

## 证据来源

- [ARM64 实测交叉引用 Actions #42333397123](https://github.com/969981/PVZ2_Resources/actions/runs/42333397123) 已通过：同一 SHA256 国服 4.2.8 APK 的 `libSrc.so` ARM64，定位了 **18 个唯一服务域名字符串 RVA** 的候选、**21 条静态代码引用**。
- `libSrc.so` ARM64 SHA256：`b216b12e0e17a6429d993f380a7e6bbd9b99704906ec20a445d59952681b10ba`。
- 案例：`pvz2cdn.ditwan.cn` 数据地址 `0x16050D1` → ARM64 `ADRP/ADD` 代码引用 `0x423322C/0x4233230`。
- `cloudpvz2android.ditwan.cn` 数据地址 `0x16AA69D` → 代码引用 `0x42D526C/0x42D5270`。
- `cloudpvz2androidbeta.ditwan.cn` 数据地址 `0x165DF7F` → 代码引用 `0x42D5280/0x42D5284`。
- 代码 RVA 是经过静态指令解码匹配到字符串地址的证据，**不是已确认的联网函数入口、关卡联网检查地址或可直接修改的 Hook 点**。

## 已创建的函数级分析脚本

- `scripts/offline/ghidra/PvZ2CodeXrefs.java`：对 `arm64_url_string_xrefs.csv` 中的每条指令 RVA，查找 Ghidra 映射地址、反汇编指令、所在函数、函数入口、大小，以及函数的直接调用者/被调用者。
- `.github/workflows/pvz2-offline-ghidra-callgraph.yml`：还原源 APK → 校验 SHA → 提取 ARM64 libSrc → 生成 XREF CSV → 使用官方 **Ghidra 12.1.3 + JDK 21** 无界面分析 → 输出函数级索引。
- 独立元数据产物 `ghidra_function_refs.csv` / `ghidra_function_summary.json`；不会上传游戏二进制、Ghidra 项目数据库或反编译 C 代码。
- 该脚本对 Ghidra 映像基址进行检查；若 Ghidra 尚未建立函数边界，就将结果保留为 `UNRESOLVED`，不能猜出函数名。

## 后续需要的证据闭环

1. 在真实 Ghidra 结果中逐个筛出 `云服务 / CDN / SDK` 对应代码所在函数；与 Java DEX 的实际调用桥接关联。
2. 在 Android 飞行模式下分别启动、进入关卡、结算及重启读档，使用同一原生 BuildID 记录**实际命中的函数**；没有动态命中不能断言这段代码负责联网判定。
3. 对可选联网（统计、公告）做有界降级；对关卡所需状态先建立本地可靠数据存取机制，逐项保留返回结构与事务语义。
4. 形成“原生入口→调用链→运行时输入/输出→最小改动→回归结果”的 Obsidian 笔记，再进入真正的补丁阶段。

严禁通过返回固定成功值来模拟真实付费订单或在线权益，且不发布经修改的商业 APK。

返回 [[11-ARM64原生字符串与代码引用]] · [[10-全代码反编译与离线检查点]] · [[09-隐私授权后离线解压]]
