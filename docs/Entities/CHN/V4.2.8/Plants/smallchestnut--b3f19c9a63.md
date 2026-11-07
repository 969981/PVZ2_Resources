---
title: smallChestnut 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# smallChestnut

候选中文名：板栗小队。原始配置条目：2。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 114 | plant:aac8218cd58b46f30e | TypeName-string-candidate-matched | 0 | "POPANIM_PLANT_SMALL_CHESTNUT" |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 115 | plant:6bb93a20d5b62f8bbf | TypeName-string-candidate-matched | 0 | "POPANIM_PLANT_SMALL_CHESTNUT_LV5" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AttackLevel":1.5,"HitPointsLevel":1.5} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AttackLevel":2.5,"HitPointsLevel":2.5} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AttackLevel":4,"HitPointsLevel":4} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 750 | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AttackLevel":1.5,"HitPointsLevel":1.5} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AttackLevel":2.5,"HitPointsLevel":2.5} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AttackLevel":4,"HitPointsLevel":4} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 750 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | SmallChestnutDefault@PropertySheets | PlantPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-reference | SmallChestnutDefault@PropertySheets | PlantPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTCHESTNUT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantChestnut_1200/ATLASES/PLANTCHESTNUT_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTCHESTNUT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantChestnut_1200/ATLASES/PLANTCHESTNUT_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/EFFECTS/SMALL_CHESTNUT_HIT/SMALL_CHESTNUT_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/PLANT/CHESTNUT/CHESTNUT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/PLANT/SMALL_CHESTNUT/SMALL_CHESTNUT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/PLANT/SMALL_CHESTNUT_LV5/SMALL_CHESTNUT_LV5.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/EFFECTS/SMALL_CHESTNUT_HIT/SMALL_CHESTNUT_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/PLANT/CHESTNUT/CHESTNUT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/PLANT/SMALL_CHESTNUT/SMALL_CHESTNUT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantChestnut_Common/IMAGES/1200/PLANT2/PLANT/SMALL_CHESTNUT_LV5/SMALL_CHESTNUT_LV5.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantChestnut | PlantChestnut | exact-resource-group-id |
| PlantChestnut | PlantChestnut | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 114 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 114 | 1 | 1.5 | 1.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 114 | 2 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 114 | 3 | 2.5 | 2.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 114 | 4 | 4 | 4 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 115 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 115 | 1 | 1.5 | 1.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 115 | 2 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 115 | 3 | 2.5 | 2.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 115 | 4 | 4 | 4 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 1 | 4 | 1 | 0 | 0 | 0 |
| 1 | 4 | 1 | 0 | 0 | 0 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
