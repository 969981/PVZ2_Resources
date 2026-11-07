---
title: 桑葚药师莲藕虎头菇毒伤削弱历史与国服4.2.8原生验证
type: research
region: CHN
version: 4.2.8
tags: [PVZ2, poison, nerf, version-comparison, mulberry, convallariachemist, lotusshooter, tigerstool]
status: source-4.2.8-verified-historical-version-diff-not-yet-verified
updated: 2026-11-07
---

# 23 · 桑葚、药师、莲藕、虎头菇：早期改版与原生毒伤核对

相关笔记：[[Unpack/21-百分比伤害植物原生字段与实测边界]]、[[Unpack/22-僵尸1到10阶生命攻击倍率及模式差异]]、[[Unpack/18-植物僵尸跨格式关联数据库]]。

## 证据等级和方法

1. **V4.2.8 原始静态数据已验收**：在 [Actions #42360216027](https://github.com/969981/PVZ2_Resources/actions/runs/42360216027) 恢复国服 4.2.8 SHA256 校验的 Internal-05 分片，选取 4 个 PlantType、对应 PropertySheet、ProjectileType 和显式 RTID。实际校验 **7 份 JSON**、选中 **52 个原生对象**、导出 **399 条字段**、**68 条静态 RTID 关系**（60 条唯一静态别名关系，8 条在选定范围内未解）。源文件哈希已记录于 [SOURCE_SUMMARY.json](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/poison_nerf_evidence/SOURCE_SUMMARY.json)。
2. **社区历史数据**：2020-03-17 TapTap 文章、2021-09-15 TapTap 文章以及植物百科记录之间对照。网页文章数值不是可追溯的原始旧版二进制，也不确定作者所处的客户端版本。**版本 nerf 是否发生、发生在哪次更新，最终必须拿旧版 APK/资源的同一原生对象逐字段 diff。**
3. **运行时代码尚未验收**：`PoisonDamage=20` 不自动证明结算时用目标 *最大生命值* 的20%。`PoisonDamage=1` 也不自动等于1%或1点；需要证明该 ClassName 对应原生代码采用怎样的伤害/护甲/状态 tick 逻辑。

## 2020 与 2021 资料的差别

| 角色/机制 | 2020-03-17 旧玩家记录 | 2021-09-15 后玩家记录 | 当前 4.2.8 静态配置 | 推断强度 |
|---|---|---|---|---|
| 桑葚五阶毒气弹 | 触发 5%、毒伤 33%/s、10s | 触发 4%、毒伤 20%/s、10s | `Level5AttackRate=.2`；`PlasmaSection=.2`、`FlashSection=.6`，剩余 .2；气弹 `PoisonDamage=20`、`PoisonDuration=10` | **显著向下修正的强证据**；修改具体版本未找到 |
| 桑葚五阶闪光弹 | 60% 触发 | 12% 触发 | `Level5AttackRate=.2` × `FlashSection=.6` = 12% 候选 | 旧/新数值差别明显，原生代码概率分支尚未追踪 |
| 桑葚五阶爆破弹 | 20% 触发 | 4% 触发 | `Level5AttackRate=.2` × `PlasmaSection=.2` = 4% 候选 | 同上 |
| 芦藜药师 | 1%/s 每层、3层最多、5s | 同样每层 1%/s、总计 3%/s | `PoisonInfos[].PoisonDamage=[1,2,3]`、持续时间均5 | **没有证据证实毒伤倍率曾被砍**；可能调整过范围/概率 |
| 莲藕射手 | 有异常百分比毒的历史说法 | 2021 文章仍说1%/s、3s | `LotusshooterProps.PoisonDamage=1`、`PoisonDuration=3` | 百科称 2.3.0 高百分比属代码错误、后来修为固定；**与2021玩家文章冲突，现有静态数据无法裁定最终单位** |
| 虎头菇 | 历史资料不足 | 玩家攻略写五阶5%触发、10秒毒 | `TigerstoolDefault` 的 `PlantPropertySheet` 和 SkillType 可找到，但未见具体百分比毒数值 | 有五阶技能/资料，不足以证明毒伤倍率改过 |

历史来源：
- [2020-03-17 TapTap 桑葚旧表、药师旧表](https://www.taptap.cn/moment/15229036468898423)；包含桑葚 **5%/33%/10秒**、闪光 **60%**、爆破 **20%**。
- [2021-09-15 TapTap 百分比毒统计](https://www.taptap.cn/moment/187285751396830729)；包含桑葚 **4%/20%/10秒**、药师 **3%叠满**、莲藕 **1%/3秒**。
- [2023 玩家整理五阶植物](https://www.taptap.cn/moment/263029561623580379)；支持桑葚新值4%/20%和虎头菇的五阶毒伤描述。
- [萌娘百科：莲藕射手](https://moegirl.icu/%E6%A4%8D%E7%89%A9%E5%A4%A7%E6%88%98%E5%83%B5%E5%B0%B82%3A%E8%8E%B2%E8%97%95%E5%B0%84%E6%89%8B)；称 **2.3.0** 的高额百分比毒系代码错误，后来修复。
- [百度百科：莲藕射手](https://bkso.baidu.com/item/%E8%8E%B2%E8%97%95%E5%B0%84%E6%89%8B/24484576)；将后续毒伤描述为**固定值**，与旧攻略1%说法冲突。
- [TapTap：2023成长礼包植物](https://www.taptap.cn/moment/489403340581505714)；桑葚仍为4%触发、20%毒、10秒。
- 2026 年引用 5%/33% 的攻略不等于 2026 版数值复原，可能重用了旧表；必须按 **资源版本而不是文章发布日期** 对比。

## 桑葚：V4.2.8 精确参数及静态 RTID

**源**：`PROPERTYSHEETS.json` 对象 index **238**，`MulberryProps` / `MulberryDefault`：

```json
{
  "Level5AttackRate": 0.2,
  "PlasmaSection": 0.2,
  "FlashSection": 0.6,
  "SplitGrenadeRate": 0.1
}
```

`Actions[].Projectile` 明确引用 `RTID(GiantGasGrenade@ProjectileTypes)`、`RTID(GiantFlashGrenade@ProjectileTypes)`、`RTID(GiantPlasmaGrenade@ProjectileTypes)`；**均在 PROJECTILETYPES.json 中静态唯一命中**：

| 原始 ProjectileType | 对象 index | 字段 |
|---|---:|---|
| `MulberryGasGrenadeProps` | 634 | `BaseDamage=100`、`PoisonDamage=20`、`PoisonDuration=10` |
| `MulberryFlashGrenadeProps` | 633 | `BaseDamage=40`、`StunDuration=2` |
| `MulberryPlasmaGrenadeProps` | 632 | `BaseDamage=2500`、`FlickRate=0.8` |

**可检验的概率假说**：若 Level5AttackRate 是五阶特殊攻击触发率，特殊攻击内部以 20% Plasma / 60% Flash / 剩余 20% Gas 划分，则总体概率正好是 **4% 爆破、12% 闪光、4% 毒气**，与2021年起记录一致。这是比单纯攻略复制更强的静态支持，但程序若以累积阈值/先后覆盖判定，实际算法仍需查原生随机数调用。

**削弱幅度（理想化每次攻击期望）**：
- 击中毒气弹时，每秒毒伤率从33%变20%，相对下降 `1-20/33 = 39.39%`；
- 毒气弹触发率5%变4%，下降20%；
- 相同频率、完全独立触发、不存在覆盖/上限时：`(0.04*0.20)/(0.05*0.33)=0.48485`，**毒伤理论期望减少约51.52%**。实际需考虑毒是否持续叠加、重复刷新、Boss抗性以及触发互斥。

**不得错误归因**：`PROPERTYSHEETS.json / GridItemPoisonMistProps._percentOfMaxHealth=0.2` 的效果动画为 `POPANIM_EFFECTS_ZOMBIE_RENAI_PERFUMER_POISON`，不是已证实桑葚自身毒气弹的毒雾表；本次 68 条静态 RTID 中也没有从 `MulberryGasGrenadeProps` 直接连到这个 GridItem 对象的证据。

## 芦藜药师：当前毒层、范围触发与阶数

`PROPERTYSHEETS.json / ConvallariaChemistProps`，对象 index **237**：
- `Level5Rate = 0.5`：五阶特殊投掷率 **候选**。
- 普攻、豆大招、装扮、超阶均通过 `Actions[].Projectile` 静态连接对应 ProjectileTypes。

`PROJECTILETYPES.json / ConvallariaChemistProjectileProps` index **626**：
- `MaximumStackLevel = 3`、`MaximumStacksPerLevel = 3`、`StacksToAdd = 1`。
- `PoisonInfos=[{PoisonDamage:1,PoisonDuration:5},{2,5},{3,5}]`。
- `BasicVenomRate=0.2`、`AdvancedVenomRate=0.3`；与二/三阶攻略说的毒液生成率20%/30%吻合，**不能当成20%/30%每秒扣最大血**。
- `GRIDITEMTYPES.json` 中的 `venom` 原始 GridItemType 静态指向 `GridItemVenomDefault@PropertySheets`；其中 `VenomInfos=[1,1.5,2]`，还需要通过原生行为判断叠层与毒液池的具体单位。

与2020、2021的每层1%数据相比，**当前没有“曾把3%毒削到更低”的充分证据**。仅用这份 4.2.8 文件同样无法证明历史从未改动过。

## 莲藕射手：最容易误认的“当前1%毒”问题

`PROPERTYSHEETS.json / LotusshooterProps` index **234**：
- `PoisonDamage = 1`、`PoisonDuration = 3`。
- `Actions` 明确指向 `LotusshooterPoisonDefault@ProjectileTypes` 与 `LotusshooterVenomDefault@ProjectileTypes`。

`PROJECTILETYPES.json` index **622/623**：
- `LotusshooterPoisonDefault` → `ClassName=LotusPoisonProjectile`，`BaseDamage=40`。
- `LotusshooterVenomDefault` → 同一 `ClassName=LotusPoisonProjectile`，`BaseDamage=20`。

因此应该分析 `LotusPoisonProjectile` 的原生伤害函数如何读取 `PoisonDamage=1`，而不是看见 1 就断言“最新仍是最大 HP 1%/秒”。历史百科的“固定毒修复”与 2021 资料的“1%”矛盾尚未排除。

## 虎头菇：五阶毒数值目前属于代码未知

`PROPERTYSHEETS.json / PlantPropertySheet`、alias `TigerstoolDefault`，对象 index **21**：
- `PlantLevelStats[4].AdvancedSkillType=RTID(tigerstool_Skill1_Level5@SkillTypes)`；
- `Actions[0]` 仅出现 `Type=special`、`Damage=80` 和范围控制信息；
- `SKILLTYPES.json` 中确认 `tigerstool_Skill1_Level5` 的技能名和图标，但其具体毒 Tick 概率和比率没有在目前选择的源属性对象中找到。

玩家五阶「5%触发、10%毒、持续10秒」是**历史玩法记录**，需要在同 Build 的原生 `Tigerstool` 行为代码或单独外部技能配置里核对，不能宣传为原始配置已找到。

## 原始 CSV 和 JSONL 的准确路径

- [四株植物的 52 个原始配置对象 JSONL](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/poison_nerf_evidence/native_selected_objects.jsonl)
- [399 条本体属性/投射物字段](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/poison_nerf_evidence/native_poison_fields.csv)
- [68 条 RTON 静态目标及缺失信息](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/poison_nerf_evidence/native_poison_rtid_edges.csv)
- [源哈希和处理分母](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/poison_nerf_evidence/SOURCE_SUMMARY.json)
- [实际成功 Actions #42360216027](https://github.com/969981/PVZ2_Resources/actions/runs/42360216027)

## 仍需补的验收

1. **改版实锤**：获得 2020 年早期和 2021 年后的两个有 SHA256 的官方国服版本，从原 `MulberryProps` 和三种 `Mulberry...GrenadeProps` 输出逐字段 diff，以版本标识判定削弱发生于哪一次更新。
2. **莲藕修复**：对比国服 2.3.0、后续修复版本和 4.2.8 的 `LotusPoisonProjectile` 原生代码与 `LotusshooterProps`；按原始游戏而非玩家论坛文章确定当前伤害单位。
3. **药师**：检查 `ConvallariaChemistProjectile` 状态 tick 的伤害基准、装备与阶级影响，确认 `MaximumStackLevel=3` 的实机行为。
4. **虎头菇**：寻找 `Tigerstool` 特殊攻击 native 类/跳板、五阶技能判定及目标最大血的实际读取。
5. **护甲和 Boss**：使用同一 ZombieType 的不同 HP/护甲、相同毒层与攻击间隔验证目标是本体最大 HP、总 HP、现 HP 还是固定数值。
