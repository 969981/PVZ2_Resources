---
title: doomshroom 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# doomshroom

候选中文名：毁灭菇。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 332 | plant:14b8707da226342605 | TypeName-string-candidate-matched | 4 | "POPANIM_PLANT_DOOMSHROOM" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(DoomShroom_Skill1_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(DoomShroom_Skill1_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(DoomShroom_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage5"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"area","Value":"3by3"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 200 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 35 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | DoomShroomDefault@PropertySheets | DoomShroomProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTNUKELAUNCHER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantNukeLauncher_1200/ATLASES/PLANTNUKELAUNCHER_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |
| [PLANTWITCHHAZEL_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantWitchHazel_1200/ATLASES/PLANTWITCHHAZEL_1200_00.png) | $.PlantResourceGroups[3] | resource-group-name-candidate |
| [PLANTDOOMSHROOM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantDoomShroom_1200/ATLASES/PLANTDOOMSHROOM_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [PLANTDOOMSHROOM_1200_01.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantDoomShroom_1200/ATLASES/PLANTDOOMSHROOM_1200_01.png) | $.TypeName | filename-exact-normalized-candidate |
| [PLANTDOOMSHROOM_1200_02.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantDoomShroom_1200/ATLASES/PLANTDOOMSHROOM_1200_02.png) | $.TypeName | filename-exact-normalized-candidate |
| [PLANTDOOMSHROOM_1200_03.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantDoomShroom_1200/ATLASES/PLANTDOOMSHROOM_1200_03.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantNukeLauncher_Common/IMAGES/1200/PLANT3/EFFECTS/NUKELAUNCHER_NORMAL/NUKELAUNCHER_NORMAL.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantNukeLauncher_Common/IMAGES/1200/PLANT3/EFFECTS/NUKELAUNCHER_NORMAL_EXPLOSION/NUKELAUNCHER_NORMAL_EXPLOSION.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantNukeLauncher_Common/IMAGES/1200/PLANT3/PLANT/NUKELAUNCHER/NUKELAUNCHER.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_ATTACK/WITCHHAZEL_ATTACK.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_BOLT/WITCHHAZEL_BOLT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_EFFECT/WITCHHAZEL_EFFECT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_GENE_BOLT/WITCHHAZEL_GENE_BOLT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/EFFECTS/WITCHHAZEL_PLANTFOOD_BOLT/WITCHHAZEL_PLANTFOOD_BOLT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWitchHazel_Common/IMAGES/1200/PLANT2/PLANT/WITCHHAZEL/WITCHHAZEL.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantDoomShroom_Common/IMAGES/1200/PLANT3/PLANT/DOOMSHROOM/DOOMSHROOM.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant3/PlantDoomShroom_Common/IMAGES/1200/PLANT3/PLANT/DOOMSHROOM1/DOOMSHROOM1.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：4 条；外围配件原生类候选关联：5 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01a","custom_01b","custom_01c","custom_01d"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02a","custom_02b"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03a","custom_03b","custom_03c"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":[],"AvatarType":"none"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| BeghouledGroup | BeghouledGroup | exact-resource-group-id |
| ZombieDarkZombossEffectsGroup | ZombieDarkZombossEffectsGroup | exact-resource-group-id |
| PlantNukeLauncher | PlantNukeLauncher | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| PlantDoomShroomAudio | PlantDoomShroomAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
