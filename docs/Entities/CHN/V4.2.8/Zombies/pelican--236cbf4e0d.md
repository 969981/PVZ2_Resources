---
title: pelican 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# pelican

候选中文名：尚未可靠关联。原始配置条目：3。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S33_31_N.json | 29 | zombie:fdb5a96541b65dc273 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_PELICAN" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S33_32_N.json | 32 | zombie:64d30bc5804997a3ed | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_PELICAN" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 38 | zombie:cedeb51c6a6cb9c790 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_PELICAN" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":1.5,"HitPointsLevel":1.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":2.5,"HitPointsLevel":2.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness1"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed4"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 270 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.6 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":1.5,"HitPointsLevel":1.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":2.5,"HitPointsLevel":2.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness1"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed4"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 270 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.6 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

本页仅展示前 20 条；完整 30 条请查看 SQLite/CSV。

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombiePiratePelicanDefault@PropertySheets | ZombiePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-reference | ZombiePiratePelicanDefault@PropertySheets | ZombiePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-reference | ZombiePiratePelicanDefault@PropertySheets | ZombiePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEPELICANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie1/ZombiePelicanGroup_1200/ATLASES/ZOMBIEPELICANGROUP_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [ZOMBIEPELICANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie1/ZombiePelicanGroup_1200/ATLASES/ZOMBIEPELICANGROUP_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [ZOMBIEPELICANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie1/ZombiePelicanGroup_1200/ATLASES/ZOMBIEPELICANGROUP_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_ASH/ZOMBIE_PELICAN_ASH.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK/ZOMBIE_PELICAN_SHOCK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK_BLUE/ZOMBIE_PELICAN_SHOCK_BLUE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK_RED/ZOMBIE_PELICAN_SHOCK_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/PELICAN/PELICAN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_PELICAN/ZOMBIE_PELICAN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_ASH/ZOMBIE_PELICAN_ASH.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK/ZOMBIE_PELICAN_SHOCK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK_BLUE/ZOMBIE_PELICAN_SHOCK_BLUE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK_RED/ZOMBIE_PELICAN_SHOCK_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/PELICAN/PELICAN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_PELICAN/ZOMBIE_PELICAN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_ASH/ZOMBIE_PELICAN_ASH.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK/ZOMBIE_PELICAN_SHOCK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK_BLUE/ZOMBIE_PELICAN_SHOCK_BLUE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_PELICAN_SHOCK_RED/ZOMBIE_PELICAN_SHOCK_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/PELICAN/PELICAN.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombiePelicanGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_PELICAN/ZOMBIE_PELICAN.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombiePelicanGroup |  | unresolved-group-id |
| ZombiePelicanGroup |  | unresolved-group-id |
| ZombiePelicanGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
