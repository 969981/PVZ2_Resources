---
title: primalpeashooter 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# primalpeashooter

候选中文名：原始豌豆射手。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 165 | plant:3dd579bbe61cdd66e6 | TypeName-string-candidate-matched | 7 | "POPANIM_PLANT_PRIMALPEASHOOTER" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(PrimalPeashooter_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(PrimalPeashooter_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(PrimalPeashooter_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 5 | {"AdvancedSkillType":"RTID(plant_wakeup_level2@SkillTypes)","AttackLevel":1,"HitPointsLevel":1,"PropertySkillType":"RTID(SunflowerLevel5Avatar@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage2"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"straight"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 175 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 5 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PrimalPeashooterDefault@PropertySheets | PeashooterProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterPea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterRockPea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterPlantfoodPea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterPlantfoodRockPea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterLevel5Pea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterPlantfoodLevel5Pea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterAvatarBall@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooter_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooter_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooter_SuperSkill@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SunflowerLevel5Avatar@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPRIMALPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPrimalPeashooter_1200/ATLASES/PLANTPRIMALPEASHOOTER_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTDRAGONFRUIT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantDragonFruit_1200/ATLASES/PLANTDRAGONFRUIT_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTPEPPERPULT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPepperpult_1200/ATLASES/PLANTPEPPERPULT_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/PEA_ROCK_PROJECTILE/PEA_ROCK_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/PEA_ROCK_PROJECTILE_SPLIT/PEA_ROCK_PROJECTILE_SPLIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/SPLAT_ROCK_PEA/SPLAT_ROCK_PEA.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/PLANT/PRIMALPEASHOOTER/PRIMALPEASHOOTER.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDragonFruit_Common/IMAGES/1200/PLANT2/EFFECTS/DRAGONFRUIT_EFFECT/DRAGONFRUIT_EFFECT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDragonFruit_Common/IMAGES/1200/PLANT2/EFFECTS/DRAGONFRUIT_EFFECT_SUPER/DRAGONFRUIT_EFFECT_SUPER.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDragonFruit_Common/IMAGES/1200/PLANT2/EFFECTS/DRAGONFRUIT_EFFECT_SUPER_HIT/DRAGONFRUIT_EFFECT_SUPER_HIT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantDragonFruit_Common/IMAGES/1200/PLANT2/PLANT/DRAGONFRUIT/DRAGONFRUIT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_BLUE_BURN/PEPPERPULT_BLUE_BURN.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_BURN/PEPPERPULT_BURN.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE/PEPPERPULT_PROJECTILE.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE2/PEPPERPULT_PROJECTILE2.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_PF_SPLAT/PEPPERPULT_PROJECTILE_PF_SPLAT.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_PF_SPLAT2/PEPPERPULT_PROJECTILE_PF_SPLAT2.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SMALL/PEPPERPULT_PROJECTILE_SMALL.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SMALL2/PEPPERPULT_PROJECTILE_SMALL2.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SPLAT/PEPPERPULT_PROJECTILE_SPLAT.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SPLAT2/PEPPERPULT_PROJECTILE_SPLAT2.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PURPLE_BURN/PEPPERPULT_PURPLE_BURN.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/PLANT/PEPPERPULT/PEPPERPULT.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：7 条；外围配件原生类候选关联：8 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_04"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":["custom_05a","custom_05b","custom_05c","custom_05d","custom_05e","custom_05f"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[5] | {"AvatarLayers":["custom_06a","custom_06b","custom_06c","custom_06d","custom_06e","custom_06f","custom_06g","custom_06h"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[6] | {"AvatarLayers":["custom_07a","custom_07b","custom_07c","custom_07d","custom_07e","custom_07f","custom_07g","custom_07h"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPrimalPeashooter | PlantPrimalPeashooter | exact-resource-group-id |
| PlantDragonFruit | PlantDragonFruit | exact-resource-group-id |
| PlantPepperpult | PlantPepperpult | exact-resource-group-id |
| PlantPrimalPeaShooterAudio | PlantPrimalPeaShooterAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 165 | 1 | 1.5 | 1.5 | RTID(PrimalPeashooter_Skill_Level1@SkillTypes) | [PRIMALPEASHOOTER_SKILL_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level1@SkillTypes) | exact-static-SkillTypes-alias |
| 165 | 2 | 2 | 2 | RTID(PrimalPeashooter_Skill_Level2@SkillTypes) | [PRIMALPEASHOOTER_SKILL_LEVEL2] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level2@SkillTypes) | exact-static-SkillTypes-alias |
| 165 | 3 | 2.5 | 2.5 | RTID(plant_wakeup_level1@SkillTypes) | [PLANT_WAKEUP_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level3@SkillTypes) | exact-static-SkillTypes-alias |
| 165 | 4 | 3 | 3 | RTID(PrimalPeashooter_SuperSkill@SkillTypes) | [PRIMALPEASHOOTER_SUPERSKILL_NAME] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level4@SkillTypes) | exact-static-SkillTypes-alias |
| 165 | 5 | 1 | 1 | RTID(plant_wakeup_level2@SkillTypes) | [PLANT_WAKEUP_LEVEL2] | exact-static-SkillTypes-alias | RTID(SunflowerLevel5Avatar@SkillTypes) | exact-static-SkillTypes-alias |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |
| 0 | normal | ["custom_01"] | source-PlantType-avatar-array-not-runtime-equipped |
| 1 | normal | ["custom_02"] | source-PlantType-avatar-array-not-runtime-equipped |
| 2 | normal | ["custom_03"] | source-PlantType-avatar-array-not-runtime-equipped |
| 3 | normal | ["custom_04"] | source-PlantType-avatar-array-not-runtime-equipped |
| 4 | normal | ["custom_05a","custom_05b","custom_05c","custom_05d","custom_05e","custom_05f"] | source-PlantType-avatar-array-not-runtime-equipped |
| 5 | normal | ["custom_06a","custom_06b","custom_06c","custom_06d","custom_06e","custom_06f","custom_06g","custom_06h"] | source-PlantType-avatar-array-not-runtime-equipped |
| 6 | normal | ["custom_07a","custom_07b","custom_07c","custom_07d","custom_07e","custom_07f","custom_07g","custom_07h"] | source-PlantType-avatar-array-not-runtime-equipped |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 83 | PlantName | typed-field-exact-name-candidate |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 107 | PlantName | typed-field-exact-name-candidate |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 240 | PlantName | typed-field-exact-name-candidate |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 270 | PlantName | typed-field-exact-name-candidate |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 370 | PlantName | typed-field-exact-name-candidate |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 371 | PlantName | typed-field-exact-name-candidate |
| CollectablePlantPieceType | 04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json | 479 | PlantName | typed-field-exact-name-candidate |
| CollectableAvatarPieceType | 04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json | 480 | PlantName | typed-field-exact-name-candidate |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 3 | 20 | 4 | 0 | 0 | 2 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
