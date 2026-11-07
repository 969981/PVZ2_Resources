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
