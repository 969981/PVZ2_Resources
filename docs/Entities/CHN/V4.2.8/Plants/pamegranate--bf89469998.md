---
title: pamegranate 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# pamegranate

候选中文名：机枪石榴。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 88 | plant:d1330fe75d34ab62e3 | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_PAMEGRANATE" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Pamegranate_Skill1_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Pamegranate_Skill1_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(plant_wakeup_level2@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(SunflowerLevel5Avatar@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage4"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"1by4"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 4 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 325 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 3 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PamegranateDefault@PropertySheets | PlantPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Pamegranate_Skill1_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Pamegranate_Skill1_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SunflowerLevel5Avatar@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PameBulletNormal@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PameBulletPlantfood@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PameBulletAvatarPlantfood@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPAMEGRANATE_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPamegranate_1200/ATLASES/PLANTPAMEGRANATE_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET/PAMEGRANATE_BULLET.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_BLUE_AVATAR/PAMEGRANATE_BULLET_BLUE_AVATAR.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_BLUE_NORMAL/PAMEGRANATE_BULLET_BLUE_NORMAL.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_BLUE_PLANTFOOD/PAMEGRANATE_BULLET_BLUE_PLANTFOOD.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_FIRE_AVATAR/PAMEGRANATE_BULLET_FIRE_AVATAR.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_FIRE_NORMAL/PAMEGRANATE_BULLET_FIRE_NORMAL.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_FIRE_PLANTFOOD/PAMEGRANATE_BULLET_FIRE_PLANTFOOD.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_HIT/PAMEGRANATE_BULLET_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_PURPLE_AVATAR/PAMEGRANATE_BULLET_PURPLE_AVATAR.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_PURPLE_NORMAL/PAMEGRANATE_BULLET_PURPLE_NORMAL.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/EFFECTS/PAMEGRANATE_BULLET_PURPLE_PLANTFOOD/PAMEGRANATE_BULLET_PURPLE_PLANTFOOD.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPamegranate_Common/IMAGES/1200/PLANT2/PLANT/PAMEGRANATE/PAMEGRANATE.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPeashooterAudio |  | unresolved-group-id |
| PlantPamegranateAudio | PlantPamegranateAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
