---
title: dracaena 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# dracaena

候选中文名：剑叶龙血树。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 300 | plant:fab7748a371a741041 | TypeName-string-candidate-matched | 4 | "POPANIM_PLANT_DRACAENA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantDracaenaDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTDRACAENA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantDracaena_1200/ATLASES/PLANTDRACAENA_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PLANTFOOD_HIT/DRACAENA_PLANTFOOD_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PLANTFOOD_PROJECTILE/DRACAENA_PLANTFOOD_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PROJECTILE01/DRACAENA_PROJECTILE01.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PROJECTILE02/DRACAENA_PROJECTILE02.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PROJECTILE02_HIT01/DRACAENA_PROJECTILE02_HIT01.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PROJECTILE02_HIT02/DRACAENA_PROJECTILE02_HIT02.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/EFFECTS/DRACAENA_PROJECTILE_LV5/DRACAENA_PROJECTILE_LV5.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDracaena_Common/IMAGES/1200/PLANT2/PLANT/DRACAENA/DRACAENA.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：4 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02a","custom_02b"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03a","custom_03b","custom_03c","custom_03d","custom_03e","custom_03f","custom_03g","custom_03h"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_04a","custom_04b","custom_04c","custom_04d","custom_04e","custom_04f","custom_04g","custom_04h"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantDracaena | PlantDracaena | exact-resource-group-id |
| PlantDracaenaAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
