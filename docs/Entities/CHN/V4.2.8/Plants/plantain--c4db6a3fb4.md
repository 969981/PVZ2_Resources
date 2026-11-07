---
title: plantain 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# plantain

候选中文名：芭蕉舞蹈家。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 243 | plant:82d9f2c8d3ed0c3c07 | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_PLANTAIN" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantainDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPLANTAIN_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantPlantain_1200/ATLASES/PLANTPLANTAIN_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantPlantain_Common/IMAGES/1200/PLANT3/EFFECTS/CONFUSION_ZOMBIE_EFFECT/CONFUSION_ZOMBIE_EFFECT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantPlantain_Common/IMAGES/1200/PLANT3/EFFECTS/PLANTAIN_PLANTFOOD_PROJECTILE/PLANTAIN_PLANTFOOD_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantPlantain_Common/IMAGES/1200/PLANT3/EFFECTS/PLANTAIN_PLANTFOOD_PROJECTILE_AVATAR/PLANTAIN_PLANTFOOD_PROJECTILE_AVATAR.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantPlantain_Common/IMAGES/1200/PLANT3/EFFECTS/PLANTAIN_PROJECTILE_EXPLOSION/PLANTAIN_PROJECTILE_EXPLOSION.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantPlantain_Common/IMAGES/1200/PLANT3/EFFECTS/PLANTAIN_SUPERSKILL_PROJECTILE/PLANTAIN_SUPERSKILL_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantPlantain_Common/IMAGES/1200/PLANT3/PLANT/PLANTAIN/PLANTAIN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPlantain | PlantPlantain | exact-resource-group-id |
| PlantCoconutCannonAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
