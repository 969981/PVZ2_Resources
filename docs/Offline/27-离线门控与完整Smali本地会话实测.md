---
title: PVZ2 国服4.2.8离线门控与完整Smali本地会话实测
type: android-offline-research
date: 2026-11-07
updated: 2026-11-07
status: experiment-not-playable
tags: [pvz2, offline, android, smali, native, signature]
---
# 离线门控与完整 Smali 本地会话实测

> [!danger] 当前仍不能脱网畅玩
> 编译、安装成功都不是主菜单/第一关/存档通过的证据。禁止将实验 APK 标成发行版；不要把原 APK、游戏资产、账号或私密日志公开发布。

## 已确认的独立阻塞

1. **签名/完整性差异**：[Android11原版与直接重签A/B #42356143127](https://github.com/969981/PVZ2_Resources/actions/runs/42356143127) 在同样飞行模式下，原版接受隐私同意后 +10/+30/+60/+120 秒进程存活；仅更换签名、代码不变的版本 +10 秒已退出。[重建版 #42359051717](https://github.com/969981/PVZ2_Resources/actions/runs/42359051717) 显示“盗版游戏随时可能会崩溃，请使用正版游戏”，+25 秒退出。**具体判断和退出函数尚未闭合**，不能仅凭字面提示定位。
2. **拓维登录依赖**：原版约 600 秒离线解压完成后仍到手机登录界面，当前无可供原生游戏识别的真实本地玩家。
3. **存档合同**：自建 LocalProfileStore 测试不等于原版存档读写，暂未验收。

## 本轮实际代码及测试

分支：experiment/chn428-offline-gate-20261107，基于 feature/chn428-reconstructed-smali-apk-build-20261107 的完整 16,375 份六 DEX Smali。

- scripts/offline/smali_gate_index.py：逐方法扫描正版/签名/摘要/退出/SDK/JNI 等标识，输出来源路径、函数名称、分类与行号；**只是静态优先级索引，不是运行时因果证据**。
- scripts/offline/patch_tw_local_trial.py：迁入此前严格校验结构的私有测试脚本，只在临时 Smali 副本修改 TWPurchase$1.run()，以 init=0、login=0 及无在线有效性的 marker 实验调用原生 JNI；不变更实际服务器、账号或付费权益。
- .github/workflows/pvz2-offline-gate-and-local-test.yml：恢复原版 88 卷和 SHA 校验，真实重编 6 DEX 并重签，在 Android 11 飞行模式安装，通过截图验证隐私同意后观察进程。仅上传去敏 JSON 和截图，不上传原版/实验 APK、原生 SO 或私人存档。
- tests/test_offline_smali_gate_index.py 与 tests/test_offline_tw_local_trial.py：合成数据回归，不能代替原游戏真实运行。

原始 APK SHA256：64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4；包名：com.popcap.pvz2cthdbk。

## 真正验收

依次证明（A）重签版在飞行模式下通过启动而不异常退出；（B）从纯本地会话进入**原版可交互主菜单**；（C）显示、运行并完成**原版第一关**；（D）结束结算产生**原版进度存档**；（E）强制停止后冷启动**原版引擎读回同一进度**。每一阶段有实际画面、进程存活、APK/BuildID、飞行模式与真实存档差异。任何失败即保留未验收标签，不能将 CI green 或静态扫描误写为完成。

相关：[[18-离线单机里程碑与验收台账-2026-11-07]]、[[19-离线主菜单关卡结算重启读档验收规范]]、[[20-原生登录状态与玩家数据消费核验]]。

## 2026-11-07 19:19 北京时间：Actions #42367042999 实机证据复核

- 工作流 **success** 仅表示编译、模拟器脚本与上传步骤完成，不表示 APK 可玩。GitHub 产物 `pvz2-chn428-offline-gate-qa` 的 `acceptance.json` 明确为 `true_offline_playable_apk=false`。
- Android 11 / x86_64+ARM translation / 飞行模式。修改版 APK 已安装并成功启动；`frame_030s.png` 显示原生隐私条款。
- 点击同意后 `after_consent_005s` 的 UIAutomator 树出现 **“植物大战僵尸2 isn't responding”**、`Close app`、`Wait`；`logcat` 统计有 **1 个 ActivityManager ANR**，暂无 Java FATAL / native fatal signal 证据。
- `after_consent_025s`、60s、120s 都 `process_alive=false`，屏幕已返回 Android 桌面。
- 这些证据可以定位到“同意后很快出现 ANR，随后退出”，但**不能证明**原因是签名校验、JNI 同步回调、资源加载还是 Android ARM 翻译兼容问题。
- 旧版探针的 `game_modified=false` 和 `ui_probe.json.game_unmodified=true` 是**报告元数据错误**：工作流实际传入的是重新打包的临时 Smali 改造版 APK，不能把它当原版。

### 本次修复（仅测试设施，不冒充可玩补丁）

1. 给模拟器探针增加显式 `--build-kind smali-local-trial`，准确标注修改版。
2. 记录 Android 11 `dumpsys activity exit-info`、经过脱敏和截断的 ANR/进程退出日志片段，区分界面 ANR 和进程退出。
3. 增加 ANR/进程退出合成回归测试，并让 Actions 在观察到失败时返回失败，而非继续显示绿色的“游戏测试通过”。
4. 目前仍无原生主菜单、第一关结算、原版存档读回证据；请优先用下轮新增的诊断片段对照原版/仅重签版本，再定位真实异常分支，不应盲改游戏内所有验签函数。

验收口径未变：只有在飞行模式中真实进入并操作原版主菜单、完成第一关、结算保存且冷启动读回，才能标记“离线可玩”。

## 2026-11-07 20:32 北京时间：复测 #42372372391

本次 Actions **failure 是正确的验收结果**，已非测试脚本成功便直接 green。

- 真实 Android 11 / 飞行模式 / `build_kind=smali-local-trial` / `game_modified=true`；APK 已安装，启动、隐私同意均通过。
- 同意后 5 秒，Android UI 文本清楚显示：**“盗版游戏随时可能会崩溃，请使用正版游戏”**，按钮“确定”。这次没有显示 ANR 弹窗。
- 25 秒后游戏退出，随后 60/120 秒仍不存活。`dumpsys activity exit-info` 返回 `ApplicationExitInfo #0 reason=2 (SIGNALED), status=9`（SIGKILL）；另有历史记录 `reason=1(EXIT_SELF)`。不能仅凭 SIGKILL 判定发信方或具体完整性检测函数。
- 本轮 `logcat` 中 `java_fatal/native_signal/activity_anr` 均为 0。上一轮 `#42367042999` 曾记录 1 次 ANR，这是两次运行的真实差异，不应混淆。
- 初版更新测试发现 `acceptance.json` 末尾错误附加字面 `\\n`，导致 JSON 不合法；已修复 workflow 序列化。
- 改进实验探针：若捕获“盗版游戏/请使用正版”，显式判定 `FAIL_INTEGRITY_WARNING`，并保留脱敏退出原因（仍需下一轮执行才能获得新 verdict）。

**静态回调合同补充：** 原版 `TWPurchase$1.run()` 在 UI 线程先做 `Native_SDKInitStart`，随后异步 `TwOfflineSDK.init`；成功初始化回调再调用 `Native_SDKInitEnd(...,0)`、`Native_SDKLoginStart` 和 `TwOfflineSDK.login`。登录回调将 `LoginResultBean.userId` 写入 `mUniqueID`，成功/游客状态转成 `Native_SDKLoginEnd(...,0,token)`。当前临时脚本则在同一 `run()` 中连续发起四个 JNI 调用，不复现异步回调及 `mUniqueID`。两条线须分别验证。

目前首要根因方向是 APK 原样/仅重签/Smali 改造之间的完整性差异；在确认前不能把提示信息对应到某个具体方法，更不能当作登录改造已经成功。

## 2026-11-07 21:10 北京时间：完整性提示来源与运行追踪

验证后的独立数据：
- `#42373326477` 在原始 APK 的 `resources.arsc` 原始文件偏移 `133412` 找到“盗版游戏”文案前缀（UTF-8）；561 个相关成员文件中，DEX/SO 均不含该文案明文。此项只证明资源字面存储位置。
- `#42374270690` 对实验版加入不改变返回值的 `TWPurchase.GetSignature()` 进入/退出日志，模拟器已真实触发盗版警告和退出，但 `GetSignature.enter=0`、`GetSignature.exit=0`，暂不能以它作为首发校验点。此结果应标明“本轮可观测日志内未命中”，不是所有运行时永不调用。
- `#42375122143` 全量 16,375 Smali 中 `check_sign_failed:I=0x7f0f01d6` 存在于自动生成的 R$string 资源定义；没有其它方法通过常量 ID 或 `R$string;->check_sign_failed` 直接引用它。由于未能由 AAPT2 正向映射文案到 ID，此字段只是高度相关的名字候选。
- `#42375337534` 动态资源 API 索引显示 46 个 `Resources.getIdentifier()` 方法，**没有任何方法包含 `const-string "check_sign_failed"`**。这些动态 API 不能仅凭出现就认作盗版校验入口。
- `#42375534308` SHA 锁定原版 APK 共检查 35 个 DEX/SO 文件，资源名 `check_sign_failed` 仅在六个 DEX 的生成资源字段表中出现，未在 SO 中找到同名明文。不能据此排除原生数值 ID 或加密字符串引用。

### 新增只读 Frida 弹窗调用栈验证

新增 `scripts/offline/frida_warning_stack.js`，仅在 `TextView.setText(CharSequence)` 和 `AlertDialog.Builder.setMessage(CharSequence)` 收到正版警告字样时发送有限 Java 调用栈。Python 端只保留脱敏后的堆栈方法名；不记录用户账户内容、签名实际值或网络凭据。通过 Android 11 飞行模式一次性模拟器实验进行校验，Frida 按官方发布的 16.7.19 服务器/客户端固定版本。

这条动态验证比盲目改资源或屏蔽通用 `Device_ExitApp` 更有价值：只有观测到真实警告调用者，才能考虑局部修复。**不允许以“弹窗不再出现”代替实际本地主菜单、首关、结算和原版存档验收。**

当前仍标记：`offline-playable = false`。
