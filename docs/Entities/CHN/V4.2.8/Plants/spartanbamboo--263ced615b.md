---
title: spartanbamboo 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# spartanbamboo

候选中文名：斯巴达竹。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 314 | plant:1bdc8540865077fa61 | TypeName-string-candidate-matched | 2 | "POPANIM_PLANT_SPARTANBAMBOO" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | SpartanBambooDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTSPARTANBAMBOO_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantSpartanBamboo_1200/ATLASES/PLANTSPARTANBAMBOO_1200_00.png) | $.PlantResourceGroups[4] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantSpartanBamboo_Common/IMAGES/1200/PLANT2/EFFECTS/SPARTANBAMBOO_EFFECT/SPARTANBAMBOO_EFFECT.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantSpartanBamboo_Common/IMAGES/1200/PLANT2/EFFECTS/SPARTANBAMBOO_EFFECT_MATRIX/SPARTANBAMBOO_EFFECT_MATRIX.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantSpartanBamboo_Common/IMAGES/1200/PLANT2/PLANT/SPARTANBAMBOO/SPARTANBAMBOO.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：2 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01a","custom_01b"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantHocusCrocusAudio | PlantHocusCrocusAudio | exact-resource-group-id |
| ZombieStoneBlockedGroup | ZombieStoneBlockedGroup | exact-resource-group-id |
| ZombieMedusaGroup | ZombieMedusaGroup | exact-resource-group-id |
| PlantUltomatoAudio | PlantUltomatoAudio | exact-resource-group-id |
| PlantSpartanBamboo | PlantSpartanBamboo | exact-resource-group-id |
| PlantBirthSunflowerAudio |  | unresolved-group-id |
| SpartanBambooAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
