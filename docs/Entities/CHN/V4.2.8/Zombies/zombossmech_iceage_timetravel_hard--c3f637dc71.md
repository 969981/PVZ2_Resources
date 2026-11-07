---
title: zombossmech_iceage_TimeTravel_hard 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# zombossmech_iceage_TimeTravel_hard

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 425 | zombie:373a5429060144842d | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ICEAGE_ZOMBOSS" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieZombossMechIceAgeTimeTravelHard@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEICEAGEZOMBOSSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieIceAgeZombossGroup_1200/ATLASES/ZOMBIEICEAGEZOMBOSSGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_GLACIER_BLOCK/ZOMBOSS_GLACIER_BLOCK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_GLACIER_BOTTOM/ZOMBOSS_GLACIER_BOTTOM.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_GLACIER_FOGGING/ZOMBOSS_GLACIER_FOGGING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_GLACIER_MIDDLE/ZOMBOSS_GLACIER_MIDDLE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_GLACIER_TOP/ZOMBOSS_GLACIER_TOP.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_MISSILE_EXPLOSION_ICEAGE/ZOMBOSS_MISSILE_EXPLOSION_ICEAGE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeZombossGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ICEAGE_ZOMBOSS/ZOMBIE_ICEAGE_ZOMBOSS.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieIceAgeZombossGroup | ZombieIceAgeZombossGroup | exact-resource-group-id |
| ZombossCommonGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
