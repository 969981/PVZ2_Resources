---
title: hatmushroom 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# hatmushroom

候选中文名：疯帽菇。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 221 | plant:a3b23b94263abf1586 | TypeName-string-candidate-matched | 2 | "POPANIM_PLANT_HATMUSHROOM" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | HatMushroomDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTHYDROCOTYLEDRUMMER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantHydrocotyledrummer_1200/ATLASES/PLANTHYDROCOTYLEDRUMMER_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTHATMUSHROOM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantHatMushroom_1200/ATLASES/PLANTHATMUSHROOM_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantHydrocotyledrummer_Common/IMAGES/1200/PLANT3/EFFECTS/HYDROCOTYLEDRUMMER_EFFECT/HYDROCOTYLEDRUMMER_EFFECT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantHydrocotyledrummer_Common/IMAGES/1200/PLANT3/PLANT/HYDROCOTYLEDRUMMER/HYDROCOTYLEDRUMMER.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_1/HATMUSHROOM_BULLET_1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_2/HATMUSHROOM_BULLET_2.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_3/HATMUSHROOM_BULLET_3.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_4/HATMUSHROOM_BULLET_4.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_FLOOR_EFFECT/HATMUSHROOM_FLOOR_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_HIT/HATMUSHROOM_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_TRANSPORT_EFFECT/HATMUSHROOM_TRANSPORT_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_TRANSPORT_NORMAL/HATMUSHROOM_TRANSPORT_NORMAL.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_TRANSPORT_SPECIAL/HATMUSHROOM_TRANSPORT_SPECIAL.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/PLANT/HATMUSHROOM/HATMUSHROOM.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：2 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantHatMushroomAudio | PlantHatMushroomAudio | exact-resource-group-id |
| PlantHydrocotyledrummer | PlantHydrocotyledrummer | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
