---
title: zombie_pumpkin_wizard_imp 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# zombie_pumpkin_wizard_imp

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 321 | zombie:a71850fd9da5c7115e | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_PUMPKIN_WIZARD_IMP" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness1"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 1500 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombiePumpkinWizardImp@PropertySheets | ZombiePumpkinWizardProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | PumpkinWizardMagicDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEPUMPKINWIZARDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombiePumpkinWizardGroup_1200/ATLASES/ZOMBIEPUMPKINWIZARDGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEPUMPKINGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombiePumpkinGroup_1200/ATLASES/ZOMBIEPUMPKINGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombiePumpkinWizardGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_PUMPKIN_WIZARD/ZOMBIE_PUMPKIN_WIZARD.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePumpkinWizardGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_PUMPKIN_WIZARD_IMP/ZOMBIE_PUMPKIN_WIZARD_IMP.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePumpkinGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_PUMPKIN_DIE/ZOMBIE_PUMPKIN_DIE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePumpkinGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_PUMPKIN_HOUSE/ZOMBIE_PUMPKIN_HOUSE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePumpkinGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_PUMPKIN_HOUSE_GHOST_EFFECT/ZOMBIE_PUMPKIN_HOUSE_GHOST_EFFECT.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePumpkinGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_PUMPKIN_WIZARD_EFFECT/ZOMBIE_PUMPKIN_WIZARD_EFFECT.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePumpkinGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_PUMPKIN_NORMAL/ZOMBIE_PUMPKIN_NORMAL.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombiePumpkinWizardGroup | ZombiePumpkinWizardGroup | exact-resource-group-id |
| ZombiePumpkinGroup | ZombiePumpkinGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
