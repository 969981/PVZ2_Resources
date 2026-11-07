# PNG 原始图片（可直接在 GitHub 预览）

这是 **PVZ2 国服 4.2.8** 的逐文件 PNG 目录，不是 `*.parsed.json`，也不是 tar.zst 分卷。

- 路径：`Images/CHN/V4.2.8/Media/shard-XX/PNG/`
- 原始路径和大小：`Catalog/CHN/V4.2.8/shards/Media-XX/files.csv`，缺失正式归档的 06 使用 `Catalog/CHN/V4.2.8/recovery/Media-06/files.csv`。
- SHA256、宽高和完整像素解码结果：每个 shard 的 `PNG-MANIFEST.csv`。
- 执行：`.github/workflows/pvz2-publish-licensed-png.yml`。

## 来源与授权记录

仓库维护者在 **2026-11-07** 明确声明已取得公开发布游戏 PNG 图片的许可，并要求将图片以可直接浏览的单文件形式发布。该权利声明**未由此自动化流程独立核验**；请勿将其视为已经获得版权方的正式公开证明。原游戏中的美术作品权利仍归相关权利人，发布者应保留授权文件并遵守许可范围。

当前工作流只处理已经有来源 SHA256 的 PNG 图片，不包含 WEM 音频、原始游戏主程序、私人玩家数据或不明格式二进制。单张图片超过 GitHub 技术限制、校验失败或像素解码失败的分片将停止上传，而不是忽略错误。

## 计划数量

| shard | PNG |
|---|---:|
| 00 | 72 |
| 01 | 367 |
| 02 | 168 |
| 03 | 227 |
| 04 | 173 |
| 05 | 133 |
| 06 | 175 |
| 07 | 205 |
| **合计** | **1,520** |

以上数量来自已归档 7 个 Media 源清单和源 Artifact 的 Media-06 审计清单，是**发布前的计划分母**。必须在 Actions 完成、分片 `PNG-MANIFEST.csv` 进入 master 且 Git 中逐文件可读以后才能宣称发布成功。

示例：`Images/CHN/V4.2.8/Media/shard-00/PNG/init/UI_MainMenu_1200/ATLASES/UI_MAINMENU_1200_00.png`。

如需本地恢复，参见 `docs/Unpack/15-Media06缺失分片恢复与素材查看.md`。如需技术、结构化 JSON 记录，请进入 `Parsed/CHN/V4.2.8`。
