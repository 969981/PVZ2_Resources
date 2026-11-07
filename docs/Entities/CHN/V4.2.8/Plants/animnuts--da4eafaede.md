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
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Animnuts_Skill1_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Animnuts_Skill1_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Animnuts_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage5"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"frontback"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge3"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 12 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantAnimnutsDefault@PropertySheets | PlantAnimnutsProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | jellyDefault@ProjectileTypes | JellyProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Animnuts_Skill1_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Animnuts_Skill1_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Animnuts_SuperSkill@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

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

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 329 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 329 | 1 | 1.5 | 1.5 | RTID(Animnuts_Skill1_Level1@SkillTypes) | [ANIMNUTS_SKILL_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level1@SkillTypes) | exact-static-SkillTypes-alias |
| 329 | 2 | 2 | 2 | RTID(Animnuts_Skill1_Level2@SkillTypes) | [ANIMNUTS_SKILL_LEVEL2] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level2@SkillTypes) | exact-static-SkillTypes-alias |
| 329 | 3 | 2.5 | 2.5 | RTID(plant_wakeup_level1@SkillTypes) | [PLANT_WAKEUP_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level3@SkillTypes) | exact-static-SkillTypes-alias |
| 329 | 4 | 3 | 3 | RTID(Animnuts_SuperSkill@SkillTypes) | [ANIMNUTS_SKILL_LEVEL5] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level4@SkillTypes) | exact-static-SkillTypes-alias |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |
| 0 | normal | ["custom_01"] | source-PlantType-avatar-array-not-runtime-equipped |
| 1 | normal | ["custom_02a","custom_02b","custom_02c","custom_02d","custom_02e","custom_02f","custom_02g","custom_02h","custom_02i","custom_02j","custom_02k","custom_02l","custom_02m","custom_02n","custom_02o","custom_02p","custom_02q","custom_02r"] | source-PlantType-avatar-array-not-runtime-equipped |
| 2 | normal | ["custom_03"] | source-PlantType-avatar-array-not-runtime-equipped |
| 3 | normal | [] | source-PlantType-avatar-array-not-runtime-equipped |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 61 | PlantName | typed-field-exact-name-candidate |
| NewAvatarPetSkillBoost | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 69 | PlantName | typed-field-exact-name-candidate |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 392 | PlantName | typed-field-exact-name-candidate |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 3 | 30 | 5 | 3 | 0 | 2 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
