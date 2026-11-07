---
title: peanut 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# peanut

候选中文名：花生射手。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 80 | plant:37e9ba400a32cfc319 | TypeName-string-candidate-matched | 2 | "POPANIM_PLANT_PEANUT" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Peanut_Skill1_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Peanut_Skill1_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Peanut_Skill1_Level5@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage2"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"toughness","Value":"armor2"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge3"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 4000 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 150 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 20 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 2 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PeanutDefault@PropertySheets | PeanutProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | PeanutDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Peanut_Skill1_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Peanut_Skill1_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Peanut_Skill1_Level5@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPEANUT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPeanut_1200/ATLASES/PLANTPEANUT_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_BLUEFIRE/PEANUT_BULLET_BLUEFIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_BLUEFIRE_LV5/PEANUT_BULLET_BLUEFIRE_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_FIRE/PEANUT_BULLET_FIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_FIRE_LV5/PEANUT_BULLET_FIRE_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_FIRE_TX/PEANUT_BULLET_FIRE_TX.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_GHOSTFIRE/PEANUT_BULLET_GHOSTFIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_GHOSTFIRE_LV5/PEANUT_BULLET_GHOSTFIRE_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_LV5/PEANUT_BULLET_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_LV5_HIT/PEANUT_BULLET_LV5_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/SPLAT_PEANUT/SPLAT_PEANUT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/PLANT/PEANUT/PEANUT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/PLANT/PEANUT_LV5/PEANUT_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：2 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_03a","custom_03b"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPeanutAudio | PlantPeanutAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 80 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 80 | 1 | 1.5 | 1.5 | RTID(Peanut_Skill1_Level1@SkillTypes) | [PEANUT_SKILL1_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level1@SkillTypes) | exact-static-SkillTypes-alias |
| 80 | 2 | 2 | 2 | RTID(Peanut_Skill1_Level2@SkillTypes) | [PEANUT_SKILL1_LEVEL2] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level2@SkillTypes) | exact-static-SkillTypes-alias |
| 80 | 3 | 2.5 | 2.5 | RTID(plant_wakeup_level1@SkillTypes) | [PLANT_WAKEUP_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level3@SkillTypes) | exact-static-SkillTypes-alias |
| 80 | 4 | 3 | 3 | RTID(Peanut_Skill1_Level5@SkillTypes) | [PEANUT_SKILL1_LEVEL5] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level4@SkillTypes) | exact-static-SkillTypes-alias |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |
| 0 | normal | ["custom_02"] | source-PlantType-avatar-array-not-runtime-equipped |
| 1 | normal | ["custom_03a","custom_03b"] | source-PlantType-avatar-array-not-runtime-equipped |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |
| PlantNewAvatar | 04_JSON/dynamic/Packages/PACKAGES/PLANTNEWAVATARS.json | 26 | PlantName | typed-field-exact-name-candidate |
| CollectablePlantPieceType | 04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json | 191 | PlantName | typed-field-exact-name-candidate |
| CollectableAvatarPieceType | 04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json | 247 | PlantName | typed-field-exact-name-candidate |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 1 | 12 | 1 | 0 | 0 | 2 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
