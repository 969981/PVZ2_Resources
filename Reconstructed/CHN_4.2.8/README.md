# PVZ2 国服 4.2.8：可复建代码项目

> 这是重建入口与项目结构规范，不是游戏原生 C++ 工程，也不是已通过游玩测试的离线 APK。

## 源 APK 与边界

- 固定来源：`PVZ2_4.2.8.apk`，SHA256 `64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4`。
- 完整独立项目生成在临时工作目录，不写入公开 Git 历史。
- `java_reference/sources/`：六个 DEX 的 JADX 参考 Java 代码；不能直接 Android Studio 编译。
- `apktool_smali/smali*/`：六个 DEX 的可汇编 Smali；这才是 APK 中 Java/Dalvik 层的实际重建源码。
- `dex_original/`：原版六个 DEX，用于字节／类型对账。
- `original_payload/`：原版所有非 DEX、非 META-INF ZIP 成员，包括 Manifest、resource.arsc、assets 和 native SO。原生 SO 仍是机器码，不是原始 C++ 源码。
- `reports/`：各文件 SHA、DEX class defs 对账、资源 CRC 核验、构建签名状态。
- `build/PVZ2_CHN_4.2.8_reassembled_test.apk`：仅在本地生成的临时签名测试包。

## 还原工程

Linux/WSL2 上，从项目根目录执行（`JAVA_HOME`、Android SDK Build-Tools、7z、zip、JADX 与 APKTool 需预先配置）：

```bash
bash scripts/offline/reconstruct_ch428_project.sh \
  /path/to/PVZ2_4.2.8.apk \
  /tmp/pvz2-full-reconstruction \
  /path/to/apktool_2.12.1.jar \
  /path/to/jadx/bin/jadx
```

更推荐使用 [自动重建工作流](../../.github/workflows/pvz2-offline-reconstructed-apk-build.yml)，由 Actions 从已提交的 88 个源分卷恢复原版 APK。Android 模拟器测试与代码重建分开记录；编译成功不等于进入主菜单。

## 为什么不直接用 Gradle 编译反编译 Java

JADX 的 Java 是便于检查数据流的近似反编译输出：可能包含反编译失败的方法、不可还原的匿名类结构、混淆符号、与原版不一致的异常边界。直接建立 Android Gradle 项目把这批 Java 当成原始源码，通常不能完整编译。需要真正控制打包内容时，应该修改可重建 Smali，然后重新汇编 DEX 并保留原本资源与 SO。

## 何时算完成

1. 六 DEX、Java/Smali 源恢复数量和原始索引闭合；
2. APKTool 六个 DEX 回编成功、类数量对应；
3. 原始资源及 SO 文件 CRC/大小对账；
4. zipalign + apksigner 通过；
5. Android 11 真实安装、飞行模式启动、接受隐私政策；
6. **原版主菜单、第一关完整结算、退出重启后原版存档读取全部独立通过**。

前四项是**构筑**，后两项才是**游戏运行验收**。特别注意前一阶段真实对照已经证明，原版不改代码只重新签名，也可能在接受隐私条款后的十秒内退出，因此重建 APK 本身不解决离线会话和签名检查。

## 代码分发

当前 `PVZ2_Resources` 是公开仓库。本目录提交的是原创构建工具和工程结构规范，不自动把商业游戏反编译源码、SO、素材、原版存档或重新签名 APK 上传到公开仓库及其公开 Actions Artifacts。如需长期保存完整重建工程，应使用拥有相应发布权限的私有仓库或本地加密存储，不得把公开分卷存在视为二次发布授权。
