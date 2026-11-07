---
title: sportzball_buckethead 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# sportzball_buckethead

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 943 | zombie:8594451136bc6c1645 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_SPORTZBALL_BUCKETHEAD" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness5"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 270 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| Helm | 0 | "bucket" | source-exact-property-alias-no-runtime-formula |
| HelmHitpoints | 0 | 1100 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieSportzballBucketheadDefault@PropertySheets | ZombiePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIESPORTZBALLBASICGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieSportzballBasicGroup_1200/ATLASES/ZOMBIESPORTZBALLBASICGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIELNYGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieLnyGroup_1200/ATLASES/ZOMBIELNYGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieSportzballBasicGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_SPORTZBALL_BUCKETHEAD/ZOMBIE_SPORTZBALL_BUCKETHEAD.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_BASIC/ZOMBIE_LNY_BASIC.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_BUCKETHEAD/ZOMBIE_LNY_BUCKETHEAD.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_CONEHEAD/ZOMBIE_LNY_CONEHEAD.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_FLAG/ZOMBIE_LNY_FLAG.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_NEWSPAPER/ZOMBIE_LNY_NEWSPAPER.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_SUPERFAN/ZOMBIE_LNY_SUPERFAN.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieLnyGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_LNY_WALL/ZOMBIE_LNY_WALL.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieSportzballBasicGroup | ZombieSportzballBasicGroup | exact-resource-group-id |
| ZombieLnyGroup | ZombieLnyGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
