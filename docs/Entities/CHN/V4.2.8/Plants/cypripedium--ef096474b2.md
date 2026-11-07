---
title: cypripedium 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# cypripedium

候选中文名：厨师杓兰。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 271 | plant:417a28f5c3c5378874 | TypeName-string-candidate-matched | 3 | "POPANIM_PLANT_CYPRIPEDIUM" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | CypripediumDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTCYPRIPEDIUM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantCypripedium_1200/ATLASES/PLANTCYPRIPEDIUM_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantCypripedium_Common/IMAGES/1200/PLANT3/EFFECTS/CYPRIPEDIUM_PLANTFOOD/CYPRIPEDIUM_PLANTFOOD.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantCypripedium_Common/IMAGES/1200/PLANT3/EFFECTS/CYPRIPEDIUM_PLANTFOOD_AVATAR/CYPRIPEDIUM_PLANTFOOD_AVATAR.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantCypripedium_Common/IMAGES/1200/PLANT3/EFFECTS/CYPRIPEDIUM_PROJECTILE/CYPRIPEDIUM_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantCypripedium_Common/IMAGES/1200/PLANT3/EFFECTS/CYPRIPEDIUM_PROJECTILE_2/CYPRIPEDIUM_PROJECTILE_2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantCypripedium_Common/IMAGES/1200/PLANT3/EFFECTS/CYPRIPEDIUM_PROJECTILE_5/CYPRIPEDIUM_PROJECTILE_5.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantCypripedium_Common/IMAGES/1200/PLANT3/PLANT/CYPRIPEDIUM/CYPRIPEDIUM.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：3 条；外围配件原生类候选关联：4 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantCypripedium | PlantCypripedium | exact-resource-group-id |
| PlantCabbagepult |  | unresolved-group-id |
| PlantCabbagepultAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
