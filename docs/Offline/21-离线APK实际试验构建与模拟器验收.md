---
title: PVZ2 国服 4.2.8 - 离线 APK 私有试验构建及实机验收
date: 2026-11-07
updated: 2026-11-07
version: CHN 4.2.8
type: experiment-log
status: signed-apk-emulator-test-running
tags: [pvz2, offline, apk, smali, android, save, test]
---

# 4.2.8 完全单机 APK：第一次实际改包实验

> [!warning] 实验补丁不是已通过验收的可玩 APK
> 当前确定登录结束 JNI `Native_SDKLoginEnd(JILjava/lang/String;)V` 收到 `mNativeDriverPtr`、整数 `0/1`、`loginResultBean.token`。这**不等于**能够用自定义字符串取代线上 token，原生消费与校验未闭合。本页按真实 Actions 结果更新，不能提前标记主菜单/第一关/读档通过。

## 为什么开始实际改包

源 APK：`PVZ2_4.2.8.apk`，SHA256：

`64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4`

经 [[18-离线单机里程碑与验收台账-2026-11-07]]、[[17-登录结束回调分支结构]] 与 [[20-原生登录状态与玩家数据消费核验]]：

- 飞行模式能完成原版资源解包，但出现拓维手机登录；按返回键无法关闭。
- Java 真实调用链：`TWPurchase.run()` → 原生初始化开始 → 拓维 SDK 初始化 → 回调 → 原生初始化结束 → 原生登录开始 → SDK 登录 → `Native_SDKLoginEnd`。
- 四个 `JNINativeMethod` 注册表结构已确认，`Native_SDKLoginEnd` 候选函数 RVA 为 `0x4A9B678`。
- 原生 ARM64 指令确实直接读取 `x2`、`w3`、`x4`，但静态数据流和线上 token 校验语义未完全确认。
- 原版游戏的主菜单、第一关、结算与读档还没有通过真实验收。

## 本次新增的可复现文件

| 文件 | 目的 |
| --- | --- |
| `scripts/offline/patch_tw_local_trial.py` | 严格校验目标 Smali 类、`run()V`、原生方法签名与字段；只替换初始化/登录流程为明确的**离线沙盒试验分支** |
| `scripts/offline/build_private_local_trial.sh` | 原始 APK SHA→Apktool 2.12.1 严格固定版本/哈希→DEX 重组→APK 对齐/试验密钥签名→校验 |
| `scripts/offline/local_trial_gameplay_probe.py` | 真实 Android 11 飞行模式安装、确认隐私协议后点击同意、捕获屏幕、登录 UI 判定、重启、文件清单 |
| `tests/test_offline_tw_local_trial.py` | 合成 Smali 的失败关闭与单方法改动测试 |
| `.github/workflows/pvz2-offline-local-apk-experiment.yml` | **实际生成**私有测试 APK 并尝试安装运行，而非只用解释性脚本 |

首次工作流尝试从 Smali release 下载失败（404），已改为官方 [Apktool 2.12.1](https://apktool.org/blog/apktool-2.12.1/)（SHA256 `66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa`）。构建脚本只创建单 DEX 最小 APK 供反汇编/重汇编，不展开完整游戏资源。

## 安全与还原

- 不覆盖原版 APK；保留原始文件的 SHA256 与替换前后 DEX SHA256。实验改动只在原版单个 `TWPurchase.run()V` 中尝试按顺序调用本机 JNI 入口。
- 本次仅用占位 `offline-local-test-only` 与状态 `init=0/login=0` 验证**离线游戏流程可否继续**，不是声称这些值具备在线认证资格；也不向任何外部服务器提交凭据。不同状态分支未验证前不任意宣称“登录成功”。
- 修改后的 APK 仅位于 GitHub Actions 一次性临时工作目录，**不提交或公开上传**原版商业 APK、游戏资源、DLL/SO 或签名后的完整安装包。
- 使用飞行模式、关闭 Wi-Fi 和移动数据的全新模拟器，不登录真实手机号或真实账号。
- 试验密钥为每次构建的临时证书，与原版发行商签名不同，不保证安装更新、正版数据继承或线上功能可用。**不要安装到已有真实存档的设备上**。
- 仅上传 1 天的截图、签名验证元数据、进程/屏幕/文件清单，禁止完整游戏二进制或包含账号隐私的日志作为公共 Artifact。

## 本轮 APK 构建与 QA

真实 Actions：

首次 [Actions #42351580970](https://github.com/969981/PVZ2_Resources/actions/runs/42351580970) 只通过源包还原，随后工具下载 404，**未构建 APK**；已替换 Apktool 后的实测以对应的新 Actions 记录为准。

| 目标 | 本次开始时状态 | 完成标准 |
| --- | --- | --- |
| Java→Smali 试验补丁 | 待实际运行结果 | 原类、字段及签名完全匹配，重新生成且可解析的 DEX |
| 2.27GB APK 重新打包与签名 | 待实际运行结果 | `apksigner verify` 成功，原始 ZIP 内容除替换 DEX 和签名保持 |
| Android 11 安装启动 | 待实际运行结果 | 原包名 `com.popcap.pvz2cthdbk`、前台进程、无崩溃 |
| 断网绕过拓维手机号界面进入菜单 | **未验收** | 真实原版图形主菜单截图 + 可点击 |
| 原版第一关战斗/结算 | **未验收** | 真实开始与结算画面、关卡 ID 与运行日志 |
| 原版存档冷启动读回 | **未验收** | 原版游戏状态与持久文件 diff 双向对账 |

如果试验仍出现手机号登录、Android 校验失败或游戏原生崩溃，**应当记录失败原因并回到对应 JNI/本地会话合同分析**；不能盲目把线上认证结果改为 HTTP 200。

## 本地复现（Windows WSL）

在安装 Java、Android SDK Build-Tools、`zipalign`、`apksigner`、`python3`、`zip`、`unzip` 的 WSL/Linux 环境，并 `git pull origin master` 后：

```bash
export ANDROID_HOME="$HOME/Android/Sdk"  # 调整为实际 SDK 路径
bash scripts/offline/build_private_local_trial.sh \
  /mnt/x/ROMS/Android/PVZ2/PVZ2_4.2.8/PVZ2_4.2.8.apk \
  /mnt/x/ROMS/Android/PVZ2/PVZ2_4.2.8/OfflineBuild \
  0 0
```

APK 只会出现在本机输出目录，签名是本地测试证书。**不要将此试验包认作可正式游玩的离线版。**

## 下一阶段

如果第一版签名包可安装且能进入菜单，下一步应按 [[19-离线主菜单关卡结算重启读档验收规范]] **实际选择并完成第一关**；之后才研究 `AndroidGameApp.GetUserDataFolder` 与结算写档路径。若登录依然阻挡，先检查 `Native_SDKLoginEnd` 原生如何消费 `token` 和状态，再设计真正独立本地玩家会话而不是向联网 SDK 伪造账号。

返回 [[18-离线单机里程碑与验收台账-2026-11-07]] · [[20-原生登录状态与玩家数据消费核验]]。
