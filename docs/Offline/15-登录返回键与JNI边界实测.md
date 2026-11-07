---
title: PVZ2 国服 4.2.8 登录返回键、JNI 登录边界与本地档案
type: verified-evidence-and-next-gate
version: 4.2.8
region: CHN
updated: 2026-11-07
status: login-back-failed-jni-methods-confirmed
tags: [pvz2, offline, android, twpurchase, login, jni, ghidra]
---

# 从拓维手机登录界面进入游戏的真实阻塞

## 已做过的真实飞行模式实验

[Actions #42335037684](https://github.com/969981/PVZ2_Resources/actions/runs/42335037684) 完整成功，在同 SHA256 原版 APK、Android 11/API30、ARM 转译、飞行模式环境中执行：

1. 首次安装 → 显示隐私政策 → 只在真实画面通过 8/8 像素校验后点击“同意”；
2. 本地解压完成后约 480 秒，Android UIAutomator 证实显示拓维登录界面（手机号、短信验证码、账号密码登录，27 个 UI 节点）；
3. 发送一次 Android `KEYCODE_BACK`，8 秒、35 秒、90 秒后分别截图；
4. **返回前与之后三张 PNG 的 SHA256 完全相同**：`deac07cf8401bec02aba6b306f6cfa698a9ca3624dd7ffd396003a5e2b185b3d`；进程持续存活且 Activity 在前台，未进入主界面。

这排除“按返回关闭登录弹窗直接继续游戏”作为可行离线路径。后台能见到 PvZ2 资源加载画面，但登录层未释放，不能声称已经可玩。

该次最多 9271 行 logcat 记录中统计到 22 次 DNS 失败、5 次连接失败，没发现 Java FATAL、Native fatal 或缺库。**具体失败尚无法归属到登录回调、选关或其他 SDK。**

## Ghidra 原生代码函数级证据

[Actions #42334189205](https://github.com/969981/PVZ2_Resources/actions/runs/42334189205) 在同一份 ARM64 `libSrc.so` 上成功恢复 **21/21 条网络域名字符串指令引用所属函数**（静态证据）：

| 原生字符串 | 指令参考 RVA | Ghidra 所属函数 | 直接调用者 |
| --- | --- | --- | --- |
| `pvz2cdn.ditwan.cn` | `0x423322c` | `FUN_04232f1c` | 14 |
| `cloudpvz2android.ditwan.cn` | `0x42d526c` | `FUN_042d521c` | 1 |
| `cloudpvz2androidbeta.ditwan.cn` | `0x42d5280` | `FUN_042d521c` | 1 |

**该 RVA 是“形成服务器字符串地址的指令”而非认证判断或关卡联网判定。** 只有配合 GDB/Frida 动态命中和参数/返回值才能判断是否执行及能否安全地改本地回退。Ghidra 项目不会公开上传。

## 更接近游戏状态的 JNI 边界

当前真实 JADX 调用索引明确存在 `com.popcap.pvz2cthddev.TWPurchase` 的：

- `Native_SDKInitStart` / `Native_SDKInitEnd`；
- `Native_SDKLoginStart` / `Native_SDKLoginEnd`；
- `Native_CallCertification` / `Native_ExitGame`。

`AndroidGameApp.Native_GameAppInitialize` 与 `Native_applicationDidFinishLaunching` 是单独的引擎生命周期入口，不能假定它们与登录成功属于同一状态。

`scripts/offline/twpurchase_bridge_contract.py` 以私有 JADX 输出为输入，提取 `TWPurchase`、`TwOfflineSDK`、`GameSDK`、`UserDataManager` 等相关类的 JNI 声明、调用站点与回调分派线索；额外检查原始 ARM64 ELF 的导出 JNI 符号（没有导出不等于不存在动态 `RegisterNatives` 绑定）。上传的仅为方法名、行号、类、参数数量和 SHA256，不包含源码、凭据或游戏资产。

下一步务必确认 `Native_SDKLoginEnd` 的实际参数类型、Java 回调是否调用它、原生层消费哪些用户字段，以及认证失败时原生游戏如何保持登录 UI。**在拿到真实调用关系前不填假参数，也不修改 SDK 返回值。**

## 本地玩家模块的真实进度

[PR #23](https://github.com/969981/PVZ2_Resources/pull/23) 的 `Offline/adapter/java/org/pvz2/offline/LocalProfileStore.java` 已通过 Java 测试，实现与在线账号隔离的本地 ID、关卡结果幂等写入及重启读回。这**不是已经接入原版游戏存档**；关卡 ID、胜利事件和原生存档 schema 必须验证之后才能建立桥接。

### 进入主菜单、过关、读档的验收标准

- **主界面**：飞行模式，无手机号/短信，无拓维登录弹窗，实际可点击地图或第一关；
- **关卡**：以原生 `LevelDefinition` 实例启动，完成胜利/失败，记录真实回调和无网络结果；
- **存档**：退出进程、冷启动、读取同一关卡完成记录且进度/解锁一致；
- **隔离**：不冒充联网账号、充值或在线权益，不生成对远端服务器有效的 token。

返回 [[13-解压完成后的拓维登录阻塞]] · [[14-登录到原生引擎的桥接追踪]] · [[12-Ghidra原生调用图与离线分支]]

## 2026-11-07：真实 JNI 连接点已进一步缩小

[Actions #42337879073](https://github.com/969981/PVZ2_Resources/actions/runs/42337879073) **成功**。同一 SHA256 的 4.2.8 APK 在一次性 GitHub Runner 中完成 6 DEX + 28 SO 解析与 JADX，新增 `twpurchase_bridge_contract.py` 的真实审计：

| 检验项 | 实测 |
| --- | --- |
| 本轮针对的 Java 类 | 8/8 实际找到 |
| 结构化 Java/JNI 记录 | 193 |
| JNI 方法声明 | 27 |
| Java → Native 调用候选 | 28 |
| Java → SDK 调用候选 | 121 |
| 回调分派线索 | 17 |
| ARM64 直接命名 JNI 导出 | 0（不能排除 `RegisterNatives`） |

**已从源码行号确认的事件顺序**：

```text
TWPurchase.run()
  :145 Native_SDKInitStart(...)
  :146 TwOfflineSDK.init(...)
        ↓ 回调 onResponse
  :154 Native_SDKInitEnd(...)
  :155 Native_SDKLoginStart(...)
  :156 TwOfflineSDK.login(...)
        ↓ 回调 onResponse 内的多个路径
  :169 / :173 / :177 / :180 / :185 Native_SDKLoginEnd(...)
```

对应静态 JNI 方法类型（来自 [Actions #42336710982](https://github.com/969981/PVZ2_Resources/actions/runs/42336710982)）：

- `TWPurchase.Native_SDKInitStart(long): void`
- `TWPurchase.Native_SDKInitEnd(long,int): void`
- `TWPurchase.Native_SDKLoginStart(long): void`
- `TWPurchase.Native_SDKLoginEnd(long,int,String): void`
- `TwOfflineCallback.onResponse(int,String): void`
- `CallbackManager.onLoginCallBack(int,String,String,String): void`

这些声明/调用站点是**实际版本的 Java 静态证据**；哪条 `onResponse` 分支属于成功、`String` 内容是什么、`long` 是否为原生对象指针、是否能用本地档案替代，仍需严格验证。特别不能把在线用户 token 或在线身份直接替换为虚假的“登录成功”。

原生 ELF 中另有 `Native_SDKLoginEnd` 的字符串 RVA `0x1654227`，以及 `TWPurchase` 类名字符串 RVA `0x16331f7`（[Actions #42336321650](https://github.com/969981/PVZ2_Resources/actions/runs/42336321650)）。**它们是字符串而非函数地址**，可作为查询 `RegisterNatives` 映射表的起点。下一步应确定该映射表的函数指针，并在飞行模式下记录真实 native 命中，之后才讨论本地会话接入。

证据包在 GitHub Actions 短期 Artifact `pvz2-chn428-offline-code-dependency-index` 内；脚本位于 `scripts/offline/twpurchase_bridge_contract.py`。没有将商业游戏 APK、原生库、源码或账号凭据提交到仓库。
