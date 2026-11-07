---
title: roman_medusa 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# roman_medusa

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 603 | zombie:5b263e09d119317da9 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_MEDUSA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieRomanMedusa@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEMEDUSAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieMedusaGroup_1200/ATLASES/ZOMBIEMEDUSAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEROMANBASICRESGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBasicResGroup_1200/ATLASES/ZOMBIEROMANBASICRESGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEPETRIFIEDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombiePetrifiedGroup_1200/ATLASES/ZOMBIEPETRIFIEDGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIESTONEBLOCKEDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieStoneBlockedGroup_1200/ATLASES/ZOMBIESTONEBLOCKEDGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEICEAGETROGLOBITEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieIceageTroglobiteGroup_1200/ATLASES/ZOMBIEICEAGETROGLOBITEGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEICEAGEIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieIceageImpGroup_1200/ATLASES/ZOMBIEICEAGEIMPGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT_MOV/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT_MOV.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_SNAKE_EFFECT/ZOMBIE_ROMAN_MEDUSA_SNAKE_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_STATUE_EFFECT/ZOMBIE_ROMAN_MEDUSA_STATUE_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_MEDUSA/ZOMBIE_ROMAN_MEDUSA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBasicResGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BASIC/ZOMBIE_ROMAN_BASIC.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePetrifiedGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/STONE_BLOCK_ZOMBIE_EFFECT/STONE_BLOCK_ZOMBIE_EFFECT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePetrifiedGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/STONE_BLOCK_ZOMBIE/STONE_BLOCK_ZOMBIE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieStoneBlockedGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ARMOR_STATUE_EFFECT/ZOMBIE_ARMOR_STATUE_EFFECT.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieStoneBlockedGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ARMOR_STATUE_FULL/ZOMBIE_ARMOR_STATUE_FULL.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieStoneBlockedGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ARMOR_STATUE_FULL/ZOMBIE_ARMOR_STATUE_FULL.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceageTroglobiteGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ICEAGE_TROGLOBITE/ZOMBIE_ICEAGE_TROGLOBITE.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceageImpGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ICEAGE_IMP/ZOMBIE_ICEAGE_IMP.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieMedusaGroup | ZombieMedusaGroup | exact-resource-group-id |
| ZombieRomanBasicResGroup | ZombieRomanBasicResGroup | exact-resource-group-id |
| ZombiePetrifiedGroup | ZombiePetrifiedGroup | exact-resource-group-id |
| ZombieStoneBlockedGroup | ZombieStoneBlockedGroup | exact-resource-group-id |
| ZombieIceageTroglobiteGroup | ZombieIceageTroglobiteGroup | exact-resource-group-id |
| FrostbiteIceBlockZombieGroup | FrostbiteIceBlockZombieGroup | exact-resource-group-id |
| ZombieIceageImpGroup | ZombieIceageImpGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
