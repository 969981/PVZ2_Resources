---
title: bowlingbulb 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# bowlingbulb

候选中文名：保龄泡泡。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 92 | plant:2d2eb81a7459eb2d9e | TypeName-string-candidate-matched | 2 | "POPANIM_PLANT_BOWLINGBULB" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Bowlingbulb_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Bowlingbulb_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Bowlingbulb_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 5 | {"AdvancedSkillType":"RTID(plant_wakeup_level2@SkillTypes)","AttackLevel":1,"HitPointsLevel":1,"PropertySkillType":"RTID(SunflowerLevel5Avatar@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage4"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"multihit"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 200 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | BowlingBulbDefault@PropertySheets | BowlingBulbProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | BowlingBulbDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | PlantfoodBowlerDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | BowlingBulbDefault2@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | BowlingBulbDefault3@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | AvatarBowlingBulb1@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | AvatarBowlingBulb2@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | AvatarBowlingBulb3@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | BowlingBulbSuper@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Bowlingbulb_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Bowlingbulb_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Bowlingbulb_SuperSkill@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | SunflowerLevel5Avatar@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTBOWLINGBULB_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantBowlingBulb_1200/ATLASES/PLANTBOWLINGBULB_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_BULLET_SUPER/BOWLINGBULB_BULLET_SUPER.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_BULLET_SUPER01/BOWLINGBULB_BULLET_SUPER01.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_BULLET_SUPER02/BOWLINGBULB_BULLET_SUPER02.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_BULLET_SUPER03/BOWLINGBULB_BULLET_SUPER03.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PLANTFOOD_PROJECTILE/BOWLINGBULB_PLANTFOOD_PROJECTILE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PROJECTILE1/BOWLINGBULB_PROJECTILE1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PROJECTILE2/BOWLINGBULB_PROJECTILE2.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PROJECTILE3/BOWLINGBULB_PROJECTILE3.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PROJECTILE_FIRE/BOWLINGBULB_PROJECTILE_FIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PROJECTILE_ICE/BOWLINGBULB_PROJECTILE_ICE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/EFFECTS/BOWLINGBULB_PROJECTILE_LIGHTNING/BOWLINGBULB_PROJECTILE_LIGHTNING.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantBowlingBulb_Common/IMAGES/1200/PLANT2/PLANT/BOWLINGBULB/BOWLINGBULB.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：2 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_1"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02a","custom_02b","custom_02c"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantBowlingBulbAudio | PlantBowlingBulbAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
