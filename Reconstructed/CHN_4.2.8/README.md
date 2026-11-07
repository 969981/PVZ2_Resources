# PVZ2 国服 4.2.8：已提交的可重建 Smali 工程

> **已完成：全部六个 DEX 的 16,375 份 Smali 源码已作为独立 Git 文件提交到本仓库的功能分支。**
> 这些 Smali 确实可以回编六个 DEX，并与原始 APK 内容重新打包、签名；**游戏因原始渠道/完整性警告仍无法作为离线可玩版验收**。

## 打开工程

- [SmaliProject：可以直接浏览和修改的完整六 DEX 工程](SmaliProject)
- [源码与成员数来源记录](SmaliProject/SOURCE_PROVENANCE.json)
- [完整生成并公开提交 Smali 的 Actions #42361183196](https://github.com/969981/PVZ2_Resources/actions/runs/42361183196)
- [从已提交的 Smali **直接**生成 APK 的脚本](../../scripts/offline/build_from_committed_smali.sh)
- [从原始 APK 重新导出 Smali 的脚本](../../scripts/offline/export_reconstructed_smali.py)
- [Obsidian 验证记录](../../docs/Offline/26-国服4.2.8完整源码还原与APK构筑.md)

```text
Reconstructed/CHN_4.2.8/
├── README.md
└── SmaliProject/
    ├── .gitignore                  # 忽略 APKTool 临时 build/dist
    ├── SOURCE_PROVENANCE.json      # 精确来源 SHA、成员数量
    ├── apktool.yml                 # 真实 APKTool 工程元数据
    ├── AndroidManifest.xml        # 原始二进制 manifest，必要时用 APKTool 查看
    ├── smali/                     # classes.dex       1,032
    ├── smali_classes2/            # classes2.dex      5,069
    ├── smali_classes3/            # classes3.dex      2,061
    ├── smali_classes4/            # classes4.dex        365
    ├── smali_classes5/            # classes5.dex      2,753
    └── smali_classes6/            # classes6.dex      5,095
```

**源码实际体量：** 16,375 个 `.smali`，149,187,235 字节；不包含额外复制的 2.13 GiB 游戏资源、原始 SO 或完整 APK。Java 参考源码（JADX 恢复的 7,805 个 .java）可通过 `reconstruct_ch428_project.sh` 单独生成，并未混入 Smali 工程。原始 C++ 源码无法从 SO 无损恢复。

## 用仓库里的 Smali 重新构筑 APK

前置条件：Linux 或 WSL2、Java 21、Android SDK Build Tools（`ANDROID_HOME`）、7z、zip、APKTool 2.12.1。

源 APK 的 SHA256 固定为：

```text
64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4
```

如果尚未恢复原版 APK，可以用本仓库已存在的分卷提取：

```bash
mkdir -p /tmp/ch428-original
7z x ROMS/CHN/V4.2.8/PVZ2_4.2.8.7z.001 -o/tmp/ch428-original -y
find /tmp/ch428-original -type f -iname '*.apk'
```

找到实际原版 APK 路径之后执行：

```bash
bash scripts/offline/build_from_committed_smali.sh \
  /tmp/ch428-original/PVZ2_4.2.8.apk \
  Reconstructed/CHN_4.2.8/SmaliProject \
  /tmp/ch428-rebuilt \
  /path/to/apktool_2.12.1.jar
```

如果分卷内的 APK 不在顶层目录，请按上面的 `find` 实际输出替换第一个参数。输出：

```text
/tmp/ch428-rebuilt/
├── smali-compiled.apk                  # APKTool 编译的中间包
├── dex_reassembly_report.json         # 六 DEX 的 class_defs 对账
├── unsigned.apk                        # 原版 ZIP 资产 + 新 DEX
├── aligned.apk
├── PVZ2_CHN_4.2.8_from_repo_smali_test.apk
├── signature_verification.txt
└── build_from_committed_smali_report.json
```

**修改流程：** 直接编辑相应的 `SmaliProject/smali*/...` 文件，执行上述脚本，新 APK 会从**编辑后的 Git 文件**重新编译，而不会重新提取原版 DEX 覆盖你的修改。

## 真正通过的技术验收

[Actions #42361183196](https://github.com/969981/PVZ2_Resources/actions/runs/42361183196) 在提交 16,375 个文件之前执行了以下验证：

1. 从严格 SHA256 校验的原版 APK 解出六 DEX。
2. 形成当前 Git 中的六个 Smali 根目录以及 APKTool 元数据。
3. **从准备上传的 SmaliProject 本身**回编，六 DEX 的 class_defs 与原版逐个一致。
4. 把新 DEX 合入原始 APK，核验其他 1,363 个游戏 ZIP 成员 CRC/大小均保持不变。
5. zipalign 与 apksigner 签名通过。
6. Git 实际提交了 16,379 个项目文件条目（其中 16,375 个 Smali 文件）；后续清理了 APKTool 在源码目录中生成的一个临时 build 缓存文件。

> [!warning] 仍然不是完整离线 APK
> 已知独立 Android 11 模拟器中，重构签名版首次同意隐私条款后出现“盗版游戏随时可能会崩溃，请使用正版游戏”的完整性/渠道提示；5 秒尚在进程、25 秒已退出。主菜单、第一关和原版存档尚未验证。完整还原代码并不等于已经处理好原生认证与运行态。

## 代码版本和发布注意事项

当前本仓库为 **public**，该分支的全部 Smali 现在是公开可见的；这里**按明确请求提交了完整代码层**，而没有另行把原始商业游戏 APK、素材和 SO 复制到 SmaliProject 或上传新的可下载安装包。请自行确认后续再分发时的授权和第三方代码许可。

此工程仍保留静态逆向事实与运行时证据的界限。适合代码查阅、定位关键类、实验性 Smali 修改和重新回编 APK，不要将编译通过等同于已完成单机化。
