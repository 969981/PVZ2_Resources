---
title: soudache_d2_n12_electric_elite 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# soudache_d2_n12_electric_elite

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 1024 | zombie:d603b361d40d766c68 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_SKYCITY_ELECTRIC_ELITE" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieSoudacheD2N12ElectricElite@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIESKYCITYELECTRICGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieSkyCityElectricGroup_1200/ATLASES/ZOMBIESKYCITYELECTRICGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIESKYCITYBASICGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieSkycityBasicGroup_1200/ATLASES/ZOMBIESKYCITYBASICGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_ELECTRIC_BULLET/ZOMBIE_ELECTRIC_BULLET.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_ELECTRIC_BULLET_HIT/ZOMBIE_ELECTRIC_BULLET_HIT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_SKYCITY_ELECTRIC/ZOMBIE_SKYCITY_ELECTRIC.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_SKYCITY_ELECTRIC_ELITE/ZOMBIE_SKYCITY_ELECTRIC_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkycityBasicGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_ATTACK_FIRE/ZOMBIE_ATTACK_FIRE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkycityBasicGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_SKYCITY_ASH/ZOMBIE_SKYCITY_ASH.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkycityBasicGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_SKYCITY_BASIC/ZOMBIE_SKYCITY_BASIC.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieSkyCityElectricGroup | ZombieSkyCityElectricGroup | exact-resource-group-id |
| ZombieSkycityBasicGroup | ZombieSkycityBasicGroup | exact-resource-group-id |
| thunder | thunder | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
