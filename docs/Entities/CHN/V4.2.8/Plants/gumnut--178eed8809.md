---
title: gumnut 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# gumnut

候选中文名：粘液桉果。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 277 | plant:78e850f457a7271d91 | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_GUMNUT" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | GumnutDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTGUMNUT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantGumnut_1200/ATLASES/PLANTGUMNUT_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTHYPNOSHROOM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantHypnoShroom_1200/ATLASES/PLANTHYPNOSHROOM_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantGumnut_Common/IMAGES/1200/PLANT3/EFFECTS/GUMNUT_POISON_ATTACK/GUMNUT_POISON_ATTACK.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantGumnut_Common/IMAGES/1200/PLANT3/EFFECTS/GUMNUT_POISON_CLOUD/GUMNUT_POISON_CLOUD.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantGumnut_Common/IMAGES/1200/PLANT3/EFFECTS/GUMNUT_PROJECTILE/GUMNUT_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantGumnut_Common/IMAGES/1200/PLANT3/EFFECTS/GUMNUT_PROJECTILE_HIT/GUMNUT_PROJECTILE_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantGumnut_Common/IMAGES/1200/PLANT3/PLANT/GUMNUT/GUMNUT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHypnoShroom_Common/IMAGES/1200/PLANT2/EFFECTS/HYPNO_ZOMBIE_EFFECT/HYPNO_ZOMBIE_EFFECT.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHypnoShroom_Common/IMAGES/1200/PLANT2/PLANT/HYPNOSHROOM/HYPNOSHROOM.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantGumnut | PlantGumnut | exact-resource-group-id |
| ZombieGumGroup | ZombieGumGroup | exact-resource-group-id |
| PlantHypnoShroom | PlantHypnoShroom | exact-resource-group-id |
| PlantGumnutAudio | PlantGumnutAudio | exact-resource-group-id |
| PlantChilibeanAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
