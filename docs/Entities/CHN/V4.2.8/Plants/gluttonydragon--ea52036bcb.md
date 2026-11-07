---
title: gluttonydragon 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# gluttonydragon

候选中文名：贪吃龙草。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 305 | plant:f29f5e81c6aa1d5373 | TypeName-string-candidate-matched | 4 | "POPANIM_PLANT_GLUTTONYDRAGON" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(GluttonyDragon_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(GluttonyDragon_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(GluttonyDragon_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage4"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"3tiles"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge2"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300.0 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 200 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantGluttonyDragonDefault@PropertySheets | GluttonyDragonProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPEPPERPULT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPepperpult_1200/ATLASES/PLANTPEPPERPULT_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTGLUTTONYDRAGON_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantGluttonydragon_1200/ATLASES/PLANTGLUTTONYDRAGON_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [PLANTGLUTTONYDRAGON_1200_01.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantGluttonydragon_1200/ATLASES/PLANTGLUTTONYDRAGON_1200_01.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_BLUE_BURN/PEPPERPULT_BLUE_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_BURN/PEPPERPULT_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE/PEPPERPULT_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE2/PEPPERPULT_PROJECTILE2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_PF_SPLAT/PEPPERPULT_PROJECTILE_PF_SPLAT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_PF_SPLAT2/PEPPERPULT_PROJECTILE_PF_SPLAT2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SMALL/PEPPERPULT_PROJECTILE_SMALL.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SMALL2/PEPPERPULT_PROJECTILE_SMALL2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SPLAT/PEPPERPULT_PROJECTILE_SPLAT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SPLAT2/PEPPERPULT_PROJECTILE_SPLAT2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PURPLE_BURN/PEPPERPULT_PURPLE_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/PLANT/PEPPERPULT/PEPPERPULT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant1/PlantGluttonydragon_Common/IMAGES/1200/PLANT1/EFFECTS/GLUTTONYDRAGON_EFFECT/GLUTTONYDRAGON_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantGluttonydragon_Common/IMAGES/1200/PLANT1/EFFECTS/GLUTTONYDRAGON_EFFECT1/GLUTTONYDRAGON_EFFECT1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantGluttonydragon_Common/IMAGES/1200/PLANT1/PLANT/GLUTTONYDRAGON/GLUTTONYDRAGON.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantGluttonydragon_Common/IMAGES/1200/PLANT1/PLANT/GLUTTONYDRAGON1/GLUTTONYDRAGON1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantGluttonydragon_Common/IMAGES/1200/PLANT1/PLANT/GLUTTONYDRAGON2/GLUTTONYDRAGON2.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：4 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":[],"AvatarType":"none"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_03a","custom_03b","custom_03c","custom_03d","custom_03e","custom_03f","custom_03g","custom_03h","custom_03i","custom_03j","custom_03k","custom_03o","custom_03p"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPepperpult | PlantPepperpult | exact-resource-group-id |
| PlantChomperAudio | PlantChomperAudio | exact-resource-group-id |
| PlantFirePeaShooterAudio | PlantFirePeaShooterAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
