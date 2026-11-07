---
title: LevelDefinition、RTID、WaveManager 与动态生成规则的研究操作
type: runbook
tags: [pvz2, levels, wave, RTID, zombies, SQLite, graph]
region: CHN
version: 4.2.8
status: static-graph-verified-runtime-semantics-unresolved
updated: 2026-11-07
---

# 05 · 关卡 → 模块 → 波次 → 生成事件

返回 [[Unpack/00-完整解包导航]] · [[Unpack/07-数据中文名与SQLite]] · [[Unpack/09-离线版阶段门槛]]。

> [!warning] 不要把 RTID 引用解析成功当成已重建实际遭遇
> 源文件中的 WaveCount、Waves、生成权重和难度缩放是静态数据；玩家在特定条件下真正刷出的僵尸仍需要追踪客户端引擎和运行时状态。

## 对象外键链

~~~text
LevelDefinition
  ├─ StageModule → RTID(...@LevelModules)
  ├─ Modules[] → RTID(...@CurrentLevel / LevelModules)
  │     └─ WaveManagerModuleProperties
  │            └─ WaveManagerProperties
  │                  ├─ WaveCount（声明值）
  │                  ├─ FlagWaveInterval
  │                  └─ Waves[wave_index][action_index]
  │                        ├─ SpawnZombiesJitteredWaveActionProps
  │                        ├─ StormZombieSpawnerProps
  │                        ├─ SpawnModernPortalsWaveActionProps
  │                        ├─ SpawnGravestonesWaveActionProps
  │                        └─ 其他原始生成事件/修正器
  ├─ SeedBank / StarChallenge / LevelMutator 等模块
  └─ VictoryModule、关卡奖励与条件
~~~

此树描述可能出现的类和引用，而不是每个关卡都含有所有类型。一个 Wave 槽位可能引用多条生成事件，不能用 WaveCount 乘固定生成数估算僵尸数量。

## 已经取得的真实图谱

脚本 scripts/catalog/build_level_graph.py 从 8,017 份源 JSON 建立 SQLite，关键表：
- level_definitions：关卡原始字段、模块数组、来源文件及对象序号；
- wave_managers：WaveCount、Waves 实际数组长度及完整原字段；
- waves：每波事件、RTID 文本、目标类、解析状态；
- reference_edges：对象引用的源和目标；
- aliases：原始对象别名；
- spawn_action_objects：保留各类生成事件未经改写的 objdata_json。

实测：[关卡图谱 #42325195497](https://github.com/969981/PVZ2_Resources/actions/runs/42325195497)，Git 数据库 [pvz2_chs428_level_wave_graph.zip](https://github.com/969981/PVZ2_Resources/blob/master/Database/CHN/V4.2.8/pvz2_chs428_level_wave_graph.zip)。

| 内容 | 实测记录 |
|---|---:|
| LevelDefinition | 6,636 |
| WaveManagerProperties | 6,010 |
| WaveManagerModuleProperties | 5,931 |
| Wave 槽位 | 86,553 |
| 波次事件 RTID | 108,709 |
| 波次精确目标解析 | 108,655 |
| 缺失目标 / 歧义目标 | 38 / 16 |
| 通用 RTID | 646,089 |
| 通用已解析 / 缺失 / 歧义 | 645,325 / 246 / 518 |
| WaveCount 与数组长度不相等 | 324 |

## 从 Git 中恢复源数据并重建图谱

在 Linux/WSL Bash 的仓库根目录操作（需要 tar、zstd）：

~~~bash
python3 scripts/archive/restore_git_shard.py \
  Unpack/CHN/V4.2.8/Internal/shard-05 \
  --out "audit/local/CHN-4.2.8/recovered-05"
python3 scripts/catalog/build_level_graph.py \
  "audit/local/CHN-4.2.8/recovered-05" \
  --out "audit/local/CHN-4.2.8/level-graph" \
  --zip "audit/local/CHN-4.2.8/level-wave-graph.zip"
~~~

此脚本不应忽略不支持的对象或自行猜测 namespace。当前解析规则：
- RTID(X@CurrentLevel) → **同一 JSON 源文件内 alias=X**；
- RTID(X@PropertySheets) 等 → **与该命名空间对应的源 JSON 名称**里精确 alias=X；
- 一个 alias 多目标 → ambiguous；没有目标 → missing；原记录全部保留。

## SQLite 调试查询

解压 ZIP 得到 pvz2_chs428_level_wave_graph.sqlite，再使用 sqlite3：

~~~sql
SELECT source_file, name_token, level_number, module_count
FROM level_definitions LIMIT 30;

SELECT source_file, wave_count_declared, wave_count_actual
FROM wave_managers
WHERE CAST(wave_count_declared AS INTEGER) <> wave_count_actual
LIMIT 30;

SELECT source_file, manager_object_index, wave_index, action_index,
       reference_text, target_objclass, resolve_status
FROM waves
WHERE resolve_status <> 'resolved'
ORDER BY source_file, wave_index;

SELECT source_file, source_object_index, source_objclass,
       json_path, reference_text, namespace, status
FROM reference_edges
WHERE status <> 'resolved';
~~~

## 解决 54 条波次未闭合引用的步骤（待继续实测）

1. 将 **38 missing、16 ambiguous** 逐条导出 CSV，带关卡源路径、Wave 索引、原 RTID、上下文及引用对象类型。
2. 检查同一文件中的 alias、重复对象、大小写、被嵌套或按模块重写的别名；不可按近似名称乱补。
3. 对照其他 JSON 所定义的实际命名空间，区分合法外部对象、同级重用以及原始配置错误。
4. 对 324 处 WaveCount 差异，确认是否运行时插波、动态生成、难度调整、活动特殊规则或数组结构未解释；差异不等于损坏。
5. 建立 action 的 type、spawn list、weight、delay、lane、count、ZombieType 等原生字段字典，仅在真实出现这些字段时导出。
6. 使用同一 Build 的游戏行为/日志验证关卡内实际刷怪顺序、波次标志、胜负条件；静态分析不能替代运行验证。

## 后续验收等级

- **已达**：8,017 JSON → 原始对象/RTID 关系，精确解析和未解决引用的计数。
- **未达**：54 引用全部闭合；324 差异分类完成；实际遭遇的物种/位置/时序可回放；运行时生成器实现已重建。

关联 [[versions/CHN/4.2.8-completeness-audit|审计结论]]、[[研究证据规范]]。
