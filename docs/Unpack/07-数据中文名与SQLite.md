---
title: 游戏数据、LawnStrings 中文名、CSV 与 SQLite 导出
type: runbook
tags: [pvz2, database, rton, lawnstrings, sqlite, csv, plant, zombie, levels]
region: CHN
version: 4.2.8
status: source-backed-joins-with-unresolved-names
updated: 2026-11-07
---

# 07 · 游戏配置数据 → CSV / SQLite / 官方中文文本

返回 [[Unpack/00-完整解包导航]] · [[Unpack/05-关卡与波次RTID]]。

## 当前 Git 中已经交付的数据库

| 文件（Database/CHN/V4.2.8） | 内容 | 正确解释 |
|---|---|---|
| pvz2_chs428_resource_catalog.zip | 18 个直属资源 RTON、128,426 个资源记录 | 不是 128,426 个物理文件 |
| pvz2_chs428_gameplay_shard05.zip | 植物、僵尸、PropertySheets、关卡、技能等原生对象 | 部分字段尚未闭合真实运行时含义 |
| pvz2_chs428_lawnstrings.zip | 30,123 条 ID/中文记录，29,785 个不同 ID | 保留重复 ID 与源文件行号 |
| pvz2_chs428_localized_entities.zip | 游戏对象与原始字符串 ID 的对应 | TypeName 候选不等于游戏 UI 的官方显示行为 |
| pvz2_chs428_level_wave_graph.zip | 关卡、波次、生成事件与 RTID 外键 | 静态引用图谱，非实时刷怪模拟 |
| pvz2_chs428_localization_candidates.zip | 8 分片原始中文字符串候选 | 不全是 UI 名称，也不等同于 LawnStrings 键表 |

原始对象记录数：植物 381、僵尸 1,265、关卡 6,636、技能 857；和物种数、关卡数、升级后战斗实例数不完全等价。

## 从真实 JSON 导出

本版关卡与大部分游戏配置位于 Git 归档 Internal/shard-05。使用 Linux/WSL 的 tar/zstd 先恢复：

~~~bash
python3 scripts/archive/restore_git_shard.py \
  Unpack/CHN/V4.2.8/Internal/shard-05 --out "audit/local/recovered-05"
python3 scripts/catalog/export_gameplay.py \
  "audit/local/recovered-05" --out "audit/local/db/gameplay" \
  --zip "audit/local/db/gameplay.zip"
python3 scripts/catalog/build_level_graph.py \
  "audit/local/recovered-05" --out "audit/local/db/level-graph" \
  --zip "audit/local/db/level-graph.zip"
python3 scripts/catalog/export_lawnstrings.py \
  "audit/local/recovered-05" --out "audit/local/db/lawnstrings" \
  --zip "audit/local/db/lawnstrings.zip"
~~~

export_lawnstrings.py 会校验原始 LawnStrings 的固定 SHA256：
456919ff3866c82e55629d0f8af39420ddaa90b873e50eb84a6286b60122d9cb。
源文件为 dynamic/LawnStrings/PROPERTIES/LAWNSTRINGS.TXT，格式是 [STRING_ID] 下一行/后续正文，94,291 行。SHA 或行数异常应立即停止，不要混用不同地区/版本。

将 **正式文件名**的 gameplay ZIP 与 lawnstrings ZIP 放在同一输入目录，才能执行 join_entity_names.py：

~~~bash
python3 scripts/catalog/join_entity_names.py \
  Database/CHN/V4.2.8 --out "audit/local/db/named" \
  --zip "audit/local/db/localized_entities.zip"
~~~

直属资源 RTON 的导出需单独将 18 个 resources*.json 收集至目录：

~~~bash
python3 scripts/catalog/export_direct_rton.py \
  "audit/local/direct-rton-json" --out "audit/local/db/resources" \
  --zip "audit/local/db/resource_catalog.zip"
~~~

源数目、失败、缺字段必须留在报告；不存在预期来源时不能生成空的成功数据库。

## 名称匹配必须分证据级别

| 配置类型 | 原生行数 | 唯一字符串匹配 | 证据程度 |
|---|---:|---:|---|
| 植物 | 381 | 344 | TypeName 大写后与原始 ID 相同：候选 |
| 僵尸 | 1,265 | 28 | 同上，大多数名字尚未对应 |
| 关卡 | 6,636 | 6,437 | 源字段 Name 明确引用 [STRING_ID] |
| 技能 | 857 | 818 | 源字段 SkillName 明确引用 [STRING_ID] |

例如 PlantType 的 TypeName=peashooter，对应 [PEASHOOTER] 原始中文文本“豌豆射手”；但该关系并不自动证明所有 TypeName 均会作为游戏最终显示名。重复 key 出现不同文本时标记 ambiguous-duplicate，不按遇到的最后一条覆盖。

## 从属性表到真实数值的必经验证

1. PlantType.Properties → RTID(某 alias@PropertySheets)；
2. ZombieType.Properties → ZombiePropertySheet；
3. PropertySheet 的 Hitpoints、Cost、Speed、EatDPS、Actions 等字段保留原始 JSON 类型和缺省信息；
4. 根据 PlantLevelStats、ZombieLevelStats、难度缩放等配置建立等级层，不把基础值误写成实机值；
5. ProjectileType、SkillPropertySheet、WaveAction 引用在 SQLite 中保持清晰外键；
6. 最后独立验证客户端运行时公式。没有代码或实机证据时只填原始配置值。

## 表设计的最小溯源字段

每张最终 CSV/SQLite 行至少需要 region、game_version、source_apk_sha256、source_file、object_index、alias/RTID、raw_json 或 raw_value、parser_commit、match_status、warning。引用成功率须以真实对象记录为分母，不以“名字看起来合理”代替。
