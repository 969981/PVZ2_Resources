# PVZ2 CHN 4.2.8 · 逐对象来源关联数据库

本目录来自 [真实 Actions #42356858186](https://github.com/969981/PVZ2_Resources/actions/runs/42356858186)，以 SHA256 核验的 Internal-05 源数据与三个独立 SQLite ZIP 为基础。静态关联可验证，不代表游戏实际动画、伤害和装备加成验证完成。

**推荐入口：** [植物 Obsidian 索引](../../../../docs/Entities/CHN/V4.2.8/Plants/INDEX.md) · [僵尸索引](../../../../docs/Entities/CHN/V4.2.8/Zombies/INDEX.md) · [完整说明](../../../../docs/Unpack/18-植物僵尸跨格式关联数据库.md)

## 文件说明

| 文件 | 作用 |
|---|---|
| `pvz2_chs428_entities.sqlite` | 包含全部下面的关系表与索引 |
| `entities.csv` | 381 PlantType + 1,265 ZombieType 的 source_file/object_index 主键、TypeName、属性和资源引用 |
| `links.csv` | PropertySheets/CurrentLevel 精确源别名和 SkillTypes/ProjectileTypes 显式 RTID，含 unresolved/ambiguous |
| `level_rows.csv` | 16,913 条原始 PlantLevelStats / ZombieLevelStats 等数组或标量 |
| `avatars.csv` | 植物真实 Avatars 数组元素 838 条 |
| `ancillary.csv` | 源 Collectable、Accessory、Avatar、Upgrade、Artifact 等类 3,149 条 |
| `ancillary_links.csv` | 953 条原生类型字段名称候选，不保证装扮实际被装备 |
| `resource_groups.csv` | 资源组 `group_id` 静态关联与未命中状态 |
| `assets.csv` | 7,573 条 PNG/PAM JSON **名称/资源组候选**，保留文件 shard、SHA256、PNG 公开 URL |
| `skill_records.csv` | 857 条 SkillPropertySheet 的名称、描述、图标原始引用 |
| `image_refs.csv` | 1,595 条技能图标/植物碎片/形象碎片标识，当前全部 unresolved-resource-id |
| `SUMMARY.json` | 全部验证分母、外键缺口、源 SHA256 |

注意：1,540 条 PropertySheet 精确匹配、4,760 条 Skill/Projectile 精确静态 RTID 连接，不意味着实际施法或技能解锁。以下 SQL 可直接在 sqlite3、DB Browser for SQLite 或 Python 中执行：

```sql
SELECT entity_id,type_name,chinese_candidate,source_file,object_index
FROM entities WHERE kind='plant' AND lower(type_name)='peashooter';

SELECT e.type_name,l.field,l.ordinal,l.raw_value_json
FROM entities e JOIN level_rows l USING(entity_id)
WHERE e.kind='plant' AND lower(e.type_name)='peashooter'
ORDER BY l.field,CAST(l.ordinal AS INTEGER);

SELECT e.type_name,a.published_png_path,a.source_path,a.association_status
FROM entities e JOIN assets a USING(entity_id)
WHERE e.kind='zombie' AND lower(e.type_name)='modern_balloon';
```

完整属性配置原文件仍应以源 hash 和对象索引复核；本目录不包含任何凭空编造的运行时技能倍率、装扮槽位或动画逐帧图层映射。
