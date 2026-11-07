---
title: missiletoe 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# missiletoe

候选中文名：槲寄冰仙子。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 199 | plant:d75742008911489858 | TypeName-string-candidate-matched | 5 | "POPANIM_PLANT_MISSILETOE" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | MissileToeDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTMISSILETOE_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantMissileToe_1200/ATLASES/PLANTMISSILETOE_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantMissileToe_Common/IMAGES/1200/PLANT3/EFFECTS/MISSILE_TOE_AVATAR/MISSILE_TOE_AVATAR.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMissileToe_Common/IMAGES/1200/PLANT3/EFFECTS/MISSILE_TOE_LV5_PROJECTILE/MISSILE_TOE_LV5_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMissileToe_Common/IMAGES/1200/PLANT3/EFFECTS/MISSILE_TOE_RETICLE/MISSILE_TOE_RETICLE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMissileToe_Common/IMAGES/1200/PLANT3/EFFECTS/T_MISSILE_TOE_PROJECTILE/T_MISSILE_TOE_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMissileToe_Common/IMAGES/1200/PLANT3/PLANT/MISSILETOE/MISSILETOE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMissileToe_Common/IMAGES/1200/PLANT3/PLANT/MISSILETOE1/MISSILETOE1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：5 条；外围配件原生类候选关联：6 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_bowhou","custom_broomhou","custom_clotheshou","custom_collarhou","custom_hat01hou","custom_maoyanhou","custom_pumpkin01hou","custom_pumpkin02hou","custom_pumpkin03hou"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":["custom_bowbin","custom_broombin","custom_clothesbin","custom_collarbin","custom_hat01bin","custom_maoyanbin","custom_pumpkin01bin","custom_pumpkin02bin","custom_pumpkin03bin"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantMissileToe | PlantMissileToe | exact-resource-group-id |
| PlantMissileToeAudio | PlantMissileToeAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
