---
title: exorcislily 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# exorcislily

候选中文名：钟馗石蒜。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 333 | plant:1a8ce8708922c7aad9 | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_EXORCISLILY" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ExorcisLilyDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTRAPEFLOWER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantRapeflower_1200/ATLASES/PLANTRAPEFLOWER_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTEXORCISLILY_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantExorcisLily_1200/ATLASES/PLANTEXORCISLILY_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantRapeflower_Common/IMAGES/1200/PLANT2/EFFECTS/RAPEFLOWER/RAPEFLOWER.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantRapeflower_Common/IMAGES/1200/PLANT2/EFFECTS/RAPEFLOWER_BURN/RAPEFLOWER_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantRapeflower_Common/IMAGES/1200/PLANT2/PLANT/RAPEFLOWER/RAPEFLOWER.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantExorcisLily_Common/IMAGES/1200/PLANT3/EFFECTS/EXORCISLILY_PROJECTILE/EXORCISLILY_PROJECTILE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantExorcisLily_Common/IMAGES/1200/PLANT3/EFFECTS/EXORCISLILY_PROJECTILE_EFFECT/EXORCISLILY_PROJECTILE_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantExorcisLily_Common/IMAGES/1200/PLANT3/EFFECTS/EXORCISLILY_PROJECTILE_HIT/EXORCISLILY_PROJECTILE_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantExorcisLily_Common/IMAGES/1200/PLANT3/PLANT/EXORCISLILY/EXORCISLILY.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantRapeflower | PlantRapeflower | exact-resource-group-id |
| PlantExorcisLilyAudio | PlantExorcisLilyAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
