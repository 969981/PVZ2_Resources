---
title: animnuts 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# animnuts

候选中文名：球果训练家。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 329 | plant:cb55fc7ba4c326dc33 | TypeName-string-candidate-matched | 4 | "POPANIM_PLANT_ANIMNUTS" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantAnimnutsDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTAQUAWEED_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantAquaWeed_1200/ATLASES/PLANTAQUAWEED_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |
| [PLANTWITCHHAZEL_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantWitchHazel_1200/ATLASES/PLANTWITCHHAZEL_1200_00.png) | $.PlantResourceGroups[4] | resource-group-name-candidate |
| [PLANTHYPNOSHROOM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantHypnoShroom_1200/ATLASES/PLANTHYPNOSHROOM_1200_00.png) | $.PlantResourceGroups[6] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/NORMAL_SHARK/NORMAL_SHARK.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/NORMAL_SHARK_PLANTFOOD/NORMAL_SHARK_PLANTFOOD.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/REDWATER_SHARK/REDWATER_SHARK.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/RED_SHARK/RED_SHARK.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/WATER_SHARK/WATER_SHARK.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/WATER_SHARK_PLANTFOOD/WATER_SHARK_PLANTFOOD.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/PLANT/AQUAWEED/AQUAWEED.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_ATTACK/WITCHHAZEL_ATTACK.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_BOLT/WITCHHAZEL_BOLT.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_EFFECT/WITCHHAZEL_EFFECT.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_GENE_BOLT/WITCHHAZEL_GENE_BOLT.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_PLANTFOOD_BOLT/WITCHHAZEL_PLANTFOOD_BOLT.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/PLANT/WITCHHAZEL/WITCHHAZEL.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHypnoShroom_Common/IMAGES/1200/PLANT2/EFFECTS/HYPNO_ZOMBIE_EFFECT/HYPNO_ZOMBIE_EFFECT.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHypnoShroom_Common/IMAGES/1200/PLANT2/PLANT/HYPNOSHROOM/HYPNOSHROOM.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAnimnuts_Common/IMAGES/1200/PLANT3/EFFECTS/PET_DINOSAUR/PET_DINOSAUR.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantAnimnuts_Common/IMAGES/1200/PLANT3/EFFECTS/PET_DINOSAUR1/PET_DINOSAUR1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantAnimnuts_Common/IMAGES/1200/PLANT3/EFFECTS/PET_EFFECT/PET_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantAnimnuts_Common/IMAGES/1200/PLANT3/EFFECTS/PET_EFFECT_1/PET_EFFECT_1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantAnimnuts_Common/IMAGES/1200/PLANT3/EFFECTS/PET_GHOSTHORSE/PET_GHOSTHORSE.pam.json | $.TypeName | filename-exact-normalized-candidate |

本页仅展示前 20 条；完整 30 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：4 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02a","custom_02b","custom_02c","custom_02d","custom_02e","custom_02f","custom_02g","custom_02h","custom_02i","custom_02j","custom_02k","custom_02l","custom_02m","custom_02n","custom_02o","custom_02p","cust | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":[],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| AquaweedAudio | AquaweedAudio | exact-resource-group-id |
| PlantNekotail |  | unresolved-group-id |
| PlantAquaWeed | PlantAquaWeed | exact-resource-group-id |
| ZombieCthulhuJellyfishGroup | ZombieCthulhuJellyfishGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| PlantCactus |  | unresolved-group-id |
| PlantHypnoShroom | PlantHypnoShroom | exact-resource-group-id |
| PlantAnimnutsAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
