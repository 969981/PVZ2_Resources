---
title: PvZ2 国服 4.2.8 离线 M0 真实 APK 审计
type: evidence-report
region: CHN
version: 4.2.8
status: verified-static-not-runtime
tags: [pvz2, offline, apk, m0, evidence]
updated: 2026-11-07
---

# M0 — 真实 APK 静态审计证据

> [!success] 已完成真实 APK 的只读审计
> [GitHub Actions #42325659025](https://github.com/969981/PVZ2_Resources/actions/runs/42325659025) 成功。由仓库 88 个原始 7z 分卷还原 APK，SHA256 检查通过，`aapt2 37.0.0` 解读真实二进制 Manifest。**此结果不是离线启动、服务器协议或者存档功能已验证的证据。**

## 版本身份

| 字段 | 实测值 |
| --- | --- |
| 原始文件 | PVZ2_4.2.8.apk |
| 大小 | 2,271,168,082 字节 |
| SHA256 | `64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4` |
| `package_name` | `com.popcap.pvz2cthdbk` |
| `versionName` | `4.2.8` |
| `versionCode` | `1895` |
| `targetSdkVersion` | `30` |
| AndroidManifest | binary AXML，由 aapt2 实样解读 |
| ZIP 条目 | 1,374 |
| classes DEX | 6 个（classes.dex 至 classes6.dex） |
| native SO | 28 个；ABI = arm64-v8a、armeabi-v7a |
| 原生主程序 | ARM64 `libSrc.so` 100,514,400 字节；ARM32 64,808,616 字节 |
| RSB / 直接 RTON | 33 / 18 |
| ZIP 不安全相对路径 | 未发现 |

## 静态域名扫描

- 34 个被采样的 DEX/SO 文件，累计读取 **94,154,916 字节**。
- 每个单独文件最多采样前 32 MiB；部分 ELF 尾部及非 DEX/SO 的资源不会被此工具扫描。
- 去重后 **142 个域名/IP 字符串候选**，来源-主机组合 **209 行**（`candidate_hosts.csv`）。
- 不导出完整 URL、query 参数或凭据。扫描内容中还包含第三方 SDK、SDK 自带说明字符串、XML 示例、测试域名和内网 IP。**无法推断出现频次就是访问次数。**

以下为下一步**候选优先级**，仅依据名称和原文件归属进行研究排序，不赋予已经证实的功能：

| 候选主机字符串 | 实见静态来源 | 后续排查 |
| --- | --- | --- |
| `gapi.hrgame.com.cn` | classes.dex、classes2.dex | 优先追踪 Java 调用和异常处理 |
| `pvzu.ditwan.cn`、`pvzu-test.ditwan.cn` | classes.dex、classes6.dex | 区分测试/正式地址配置 |
| `cloudpvz2android.ditwan.cn`、`cloudpvz2androidbeta.ditwan.cn` | 两 ABI 的 libSrc.so | 优先定位 native 调用与本地状态关系 |
| `pvz2cdn.ditwan.cn` | 两 ABI 的 libSrc.so | 检查资源清单和缓存回退条件 |
| `pvz2.hrgame.com.cn` | 两 ABI 的 libSrc.so | 检查游戏侧引用场景 |
| `pnserver.intelligent.popcap.com.cn` | classes.dex | 核验是否由当前启动路径使用 |
| `pvz-shop-almost.pt.popcap.com.cn` | 两 ABI 的 libSrc.so | 记录即可；不模拟付费交易 |
| `pvz2androidtga.talkyun.com.cn` | classes.dex | 研究 SDK/运营配置与游戏启动的隔离性 |

这些只是静态路径提示，不要尝试连接测试/内部/不明服务，也不得向真实支付域名发送实验交易。

## 证据包与复现

工作流会在 `Artifacts` 中保存 `pvz2-chn-4.2.8-offline-m0-real-audit`（保存期 7 天），包括：

- `static_audit.json`：来源、APK 身份、扫描限制、主要计数。
- `apk_entries.csv`：各 ZIP 条目的名称、长度、压缩信息。
- `native_libraries.csv`：SO、ABI、ELF 类型及字节数。
- `candidate_hosts.csv`：候选 host、原文件路径、字符串出现次数。

不上传 APK、DEX、SO 或资源内容。仓库工作流为 `.github/workflows/pvz2-offline-chn-4.2.8-real-audit.yml`。

## M1/M2 下一验证

**M1**：专用设备开启飞行模式，用 `scripts/offline/collect_adb_evidence.py` 记录首次启动、已初始化后启动、结算重启三条独立日志；另记实际屏幕观察。**M2**：只针对 M1 明确出现阻塞的调用做 Java/native 定位、输入输出、存档持久化、错误回退；一律使用相同 APK SHA 和原始日志。未观察到请求的候选地址不得宣称为活跃服务。

返回 [[00-离线版总览]] · [[01-启动与网络依赖]] · [[05-实验日志]] · [[versions/CHN/4.2.8]]
