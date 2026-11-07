# 国服 PVZ2 4.2.8 — 26,774 份独立解析记录

这里的内容已在 [Actions #42333570856](https://github.com/969981/PVZ2_Resources/actions/runs/42333570856) **真实生成并提交**，不再需要打开聚合数据库才能找到每个文件的解析结果。

- [INDEX.csv](INDEX.csv) — 将源文件相对路径映射到对应 .parsed.json 文件（26,774 行）。
- [MANIFEST.json](MANIFEST.json) — 格式、状态、分片、原索引 SHA256 与总数。
- [Internal/](Internal/) — 14,869 份原始内部成员的独立解析结果。
- [Media/](Media/) — 11,905 份已归档派生媒体的独立解析结果。
- [解析器与一键重建脚本](../../../scripts/catalog/split_parsed_records.py)。
- [Obsidian 操作和验收文档](../../../docs/Unpack/14-独立解析文件导出与Git管理.md)。

**每份独立 JSON** 提供源路径/文件大小/SHA256、format、parser status、真实元数据、对象类别和 RTID 样本。示例：
[UI_MainMenu PNG 的独立解析](Media/shard-00/PNG/07/07c10bbd3cf97bb639976614--UI_MAINMENU_1200_00.png.parsed.json)。

注意：这里是**解析后的证据记录**，而不是原始 PNG、音频 WAV、游戏代码或完整配置文件的副本。原始文件的可恢复分卷位于仓库 Unpack/；在本地执行 scripts/catalog/export_all_local.py 可恢复原始路径文件。媒体 Media-06 的原始 Git 归档尚未补齐，因此本目录不含该分片。
