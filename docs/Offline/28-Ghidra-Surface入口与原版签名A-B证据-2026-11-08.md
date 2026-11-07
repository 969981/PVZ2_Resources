---
title: PVZ2 4.2.8 Surface JNI 入口与原版签名 A/B 证据
type: android-offline-research
date: 2026-11-08
updated: 2026-11-08
status: investigation-not-playable
tags: [pvz2, offline, ghidra, frida, android, regression]
---
# Surface JNI 入口与原版签名 A/B 证据（2026-11-08）

> [!warning] 当前结论
> 只确认原生入口候选与原版签名 A/B 的实际差异。尚未发现经过动态验证的完整性失败判断分支，尚未进入原版主菜单、完成首关或冷启动读取游戏存档。不得发布“可玩离线版”声明。

## 1. 固定输入与输出

- 原版 APK：CHN v4.2.8，`com.popcap.pvz2cthdbk`，SHA256 `64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4`。
- [Ghidra Actions #42380912254](https://github.com/969981/PVZ2_Resources/actions/runs/42380912254)：成功完成 Ghidra 12.1.3 分析阶段。
- Artifact `pvz2-arm64-surface-ghidra-callgraph`，ID `13578715650`，包含 `surface_jni_registration.json`、`surface_function_refs.csv`、`surface_function_summary.json`。
- `surface_function_summary.json` 独立 SHA256：`594dbe567d01764cda8d364811dd4b4dbb70e71f083b920b688f24b3d92df2fd`。
- 该次产物**没有** `surface_branch_index.csv`，不能凭 Ghidra 工作流成功推断条件分支数据已经产出。

## 2. Ghidra 原始记录

| 字段 | 观察值 |
| --- | --- |
| JNI 方法 | `Native_onSurfaceCreated()V` |
| JNI 注册表候选 RVA | `0x05FA9168` |
| 注册表所指 ELF RVA | `0x05722FF0` |
| Ghidra 所处函数入口 | `0x057227F0` |
| 函数名称 | `FUN_057227f0` |
| 地址差（指针 - 函数入口） | `+0x800` |
| Ghidra 函数 body 地址总数 | `2280`，非指令条数 |
| Ghidra 记录的调用者 | `FUN_0568d380`，计 1 个 |
| Ghidra 记录的被调用函数 | 44 个 |

**严格区分：** JNI 注册表内的函数指针位置经过结构映射校验，但不是经运行时 PC 采样确认的实际入口；Ghidra 函数边界是静态分析结果，也不保证 ELF 中该位置确为真正的独立函数入口。下一步验证应检查 `0x05722FF0` 附近的控制流、函数边界、直接/间接调用和 Frida 的原生 PC 栈。

原始 Frida 已证明 `Native_onSurfaceCreated` 初始化链分别触发 `UI_ShowAlertDialog(exitApp=true)`、`Device_ExitApp` 与 `Process.killProcess`；**尚未定位哪个 ARM64 条件跳转决定这些行为。** 不能通过屏蔽 Java 弹窗或 killProcess 假装修复初始化。

## 3. 原版签名的独立飞行模式对照

[Actions #42383797764](https://github.com/969981/PVZ2_Resources/actions/runs/42383797764)，Artifact `pvz2-original-signed-local-jni-trial`（ID `13578899256`）。经确认 APK 原版 SHA 未变，Android 11 x86_64 + ARM 转译，Frida 按 PID 附加成功。

| 同意后观察点 | 游戏进程 | 正版警告 | 验收 |
| --- | --- | --- | --- |
| 5 秒 | 存活 | 无 | 未进入主菜单 |
| 120 秒 | 存活 | 无 | 未进入主菜单 |
| 420 秒 | 存活 | 无 | 加载核心资源 20% |
| 720 秒 | 存活 | 无 | 与 420 秒截图 SHA 相同，仍 20% |

- 420 秒与 720 秒的画面 SHA256 均为 `f190cd109dd78760d281e7df14a33b75eb1fb26e49e308655a30ad9041f2f110`，说明**两个取样时刻画面完全相同**；不等于已经证明具体哪个加载线程死锁。
- 本次日志采样 `dns_failure=10`，`activity_anr=0`，没有观察到 Java fatal 或 native fatal；不能仅凭 DNS 次数断言资源加载停滞源于服务器。
- 本次 Artifact 的 `LOCAL_SESSION_*` 计数全为 0，`TRACE_HOOKS_INSTALLED` 可见。不能将“Frida 已附加”理解为“本地玩家初始化 Hook 已执行”。对应脚本后续已加入直接 Frida send 事件；本次原始产物未包含新的事件统计。

## 4. 两条实验线必须分开

A. **完整性门控线：** 原版、只重签、重建六 DEX 的差异；以 `UI_ShowAlertDialog` / `Device_ExitApp` 的确切原生调用链作为核验对象，做最小、可回退的静态分析实验。

B. **本地可玩线：** 原版保持签名，资源解压进度 / 启动阶段 / 原生玩家会话逐一追踪；不要再把异步的 `TWPurchase` init/login 协议简单等价为连续四次同步 JNI 调用。优先验证 Hook 是否执行、返回及资源状态是否变化，隔离 Android ARM 转译开销。

## 5. 本轮已提交的流程补强

- 更新 `.github/workflows/pvz2-offline-ghidra-surface-init.yml`：把 `PvZ2SurfaceBranchIndex.java` 与 `rank_surface_branch_candidates.py` 纳入触发条件 / sparse checkout。
- Ghidra 分析时生成 `surface_branch_index.csv` 后自动运行 `rank_surface_branch_candidates.py`，将排序结果与原始 CSV 一起作为 Artifact 上传。
- 排名只是静态距离线索，`STATIC_DISTANCE_ONLY_NOT_INTEGRITY_CHECK` 必须保留；绝不以“最接近 JNI 函数指针”为理由自动修改原版库。

## 6. 可开源边界与真实交付标准

自主编写的 Ghidra/Frida 探针、重建脚本、差异对比工具、脱敏测试报告与 Obsidian 文档可按各自许可开源。原版 APK、商业游戏 Smali、SO、图像、音频、关卡及签名材料不能仅凭反编译就获得再许可；发布时应走“用户自备合法 APK、本机生成修改版”的构建模式，不公开打包商业资产。

真实离线可玩的不可替代验收：
- 在飞行模式进入**原版可交互主菜单**；
- 真正启动并完成**原版第一关**；
- 由**原版引擎**持久化结算进度；
- 强制停止、冷启动，再次读回相同进度。

参见 [[27-离线门控与完整Smali本地会话实测]] 与 [[19-离线主菜单关卡结算重启读档验收规范]]。
