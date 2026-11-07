---
title: applemortar 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# applemortar

候选中文名：苹果迫击炮。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 181 | plant:07f80770e568dca073 | TypeName-string-candidate-matched | 5 | "POPANIM_PLANT_APPLEMORTAR" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | AppleMortarDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_EXPLOSION/APPLEMORTAR_EXPLOSION.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_EXPLOSION1/APPLEMORTAR_EXPLOSION1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PF_EXPLOSION/APPLEMORTAR_PF_EXPLOSION.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PF_EXPLOSION1/APPLEMORTAR_PF_EXPLOSION1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PF_EXPLOSION_GOLDEN/APPLEMORTAR_PF_EXPLOSION_GOLDEN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PF_EXPLOSION_GOLDEN1/APPLEMORTAR_PF_EXPLOSION_GOLDEN1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PF_EXPLOSION_VIOLET/APPLEMORTAR_PF_EXPLOSION_VIOLET.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PF_EXPLOSION_VIOLET1/APPLEMORTAR_PF_EXPLOSION_VIOLET1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PLANTFOOD_PROJECTILE/APPLEMORTAR_PLANTFOOD_PROJECTILE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PLANTFOOD_PROJECTILE1/APPLEMORTAR_PLANTFOOD_PROJECTILE1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PLANTFOOD_PROJECTILE_GOLDEN/APPLEMORTAR_PLANTFOOD_PROJECTILE_GOLDEN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PLANTFOOD_PROJECTILE_GOLDEN1/APPLEMORTAR_PLANTFOOD_PROJECTILE_GOLDEN1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PLANTFOOD_PROJECTILE_VIOLET/APPLEMORTAR_PLANTFOOD_PROJECTILE_VIOLET.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PLANTFOOD_PROJECTILE_VIOLET1/APPLEMORTAR_PLANTFOOD_PROJECTILE_VIOLET1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantAppleMortar_Common/IMAGES/1200/PLANT2/EFFECTS/APPLEMORTAR_PROJECTILE/APPLEMORTAR_PROJECTILE.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：5 条；外围配件原生类候选关联：6 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03body","custom_03head"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_04a","custom_04b","custom_04c","custom_04d","custom_04e","custom_04f","custom_04g"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":[],"AvatarType":"none"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantAppleMortarAudio |  | unresolved-group-id |
| PlantAppleMortarIceAudio | PlantAppleMortarIceAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
