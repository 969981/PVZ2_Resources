---
title: rhubarbarian 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# rhubarbarian

候选中文名：蛮族大黄。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 320 | plant:997b8943f9f4767e69 | TypeName-string-candidate-matched | 3 | "POPANIM_PLANT_RHUBARBARIAN" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Rhubarbarian_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Rhubarbarian_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Rhubarbarian_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage3"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"close"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 900 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 200 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 7.5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantRhubarbarianDefault@PropertySheets | PlantRhubarbarianProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTMANGOSTEEN_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantMangosteen_1200/ATLASES/PLANTMANGOSTEEN_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTMANGOSTEEN_1200_01.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantMangosteen_1200/ATLASES/PLANTMANGOSTEEN_1200_01.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTMANGOSTEEN_1200_02.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantMangosteen_1200/ATLASES/PLANTMANGOSTEEN_1200_02.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTMANGOSTEEN_1200_03.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantMangosteen_1200/ATLASES/PLANTMANGOSTEEN_1200_03.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTRHUBARBARIAN_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantRhubarbarian_1200/ATLASES/PLANTRHUBARBARIAN_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_AVATAR/MANGOSTEEN_ATTACK_AVATAR.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_AVATAR1/MANGOSTEEN_ATTACK_AVATAR1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_AVATAR_EXPLODE/MANGOSTEEN_ATTACK_AVATAR_EXPLODE.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_AVATAR_EXPLODE1/MANGOSTEEN_ATTACK_AVATAR_EXPLODE1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_HIT/MANGOSTEEN_ATTACK_HIT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_HIT1/MANGOSTEEN_ATTACK_HIT1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_NORMAL/MANGOSTEEN_ATTACK_NORMAL.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_NORMAL1/MANGOSTEEN_ATTACK_NORMAL1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_ATTACK_PLANTFOOD/MANGOSTEEN_ATTACK_PLANTFOOD.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_LIGHTNING_CHARGE/MANGOSTEEN_LIGHTNING_CHARGE.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/EFFECTS/MANGOSTEEN_LIGHTNING_CHARGE1/MANGOSTEEN_LIGHTNING_CHARGE1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/PLANT/MANGOSTEEN/MANGOSTEEN.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMangosteen_Common/IMAGES/1200/PLANT2/PLANT/MANGOSTEEN1/MANGOSTEEN1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant1/PlantRhubarbarian_Common/IMAGES/1200/PLANT1/EFFECTS/RHUBARBARIAN_EFFECT/RHUBARBARIAN_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantRhubarbarian_Common/IMAGES/1200/PLANT1/PLANT/RHUBARBARIAN/RHUBARBARIAN.pam.json | $.TypeName | filename-exact-normalized-candidate |

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
| PlantHeavenDatura |  | unresolved-group-id |
| PlantMangosteen | PlantMangosteen | exact-resource-group-id |
| PlantRhubarbarianAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
