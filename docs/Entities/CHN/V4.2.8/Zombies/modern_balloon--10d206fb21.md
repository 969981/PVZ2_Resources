---
title: modern_balloon 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# modern_balloon

候选中文名：尚未可靠关联。原始配置条目：4。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_15.json | 32 | zombie:d26f816cccc7907d14 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_20_N.json | 49 | zombie:99f00568a20b00d712 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_MODERN_BALLOON" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_32_N.json | 64 | zombie:f9d8525bf25985edce | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_MODERN_BALLOON" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 430 | zombie:b2916f293f01137ac7 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_MODERN_BALLOON" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieJourneyToTheWestBalloonDefault@PropertySheets | PropertySheet |  | unresolved |
| property-reference | ZombieModernBalloonDefault@CurrentLevel | PropertySheet |  | unresolved |
| property-reference | ZombieModernBalloonDefault@CurrentLevel | PropertySheet |  | unresolved |
| property-reference | ZombieModernBalloonDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEJOURNEYTOTHEWESTBALLOONGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieJourneyToTheWestBalloonGroup_1200/ATLASES/ZOMBIEJOURNEYTOTHEWESTBALLOONGROUP_ | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEMODERNBALLOONGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieModernBalloonGroup_1200/ATLASES/ZOMBIEMODERNBALLOONGROUP_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [ZOMBIEMODERNBALLOONGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieModernBalloonGroup_1200/ATLASES/ZOMBIEMODERNBALLOONGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEMODERNBALLOONGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieModernBalloonGroup_1200/ATLASES/ZOMBIEMODERNBALLOONGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEMODERNBALLOONGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieModernBalloonGroup_1200/ATLASES/ZOMBIEMODERNBALLOONGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieJourneyToTheWestBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON_ASH/ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON_ASH.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieJourneyToTheWestBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON_SHOCK/ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON_SHOCK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieJourneyToTheWestBalloonGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON/ZOMBIE_JOURNEY_TO_THE_WEST_BALLOON.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_ASH/ZOMBIE_MODERN_BALLOON_ASH.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_SHOCK/ZOMBIE_MODERN_BALLOON_SHOCK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MODERN_BALLOON/ZOMBIE_MODERN_BALLOON.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_ASH/ZOMBIE_MODERN_BALLOON_ASH.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_SHOCK/ZOMBIE_MODERN_BALLOON_SHOCK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MODERN_BALLOON/ZOMBIE_MODERN_BALLOON.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_ASH/ZOMBIE_MODERN_BALLOON_ASH.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_SHOCK/ZOMBIE_MODERN_BALLOON_SHOCK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MODERN_BALLOON/ZOMBIE_MODERN_BALLOON.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_ASH/ZOMBIE_MODERN_BALLOON_ASH.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MODERN_BALLOON_SHOCK/ZOMBIE_MODERN_BALLOON_SHOCK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieModernBalloonGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MODERN_BALLOON/ZOMBIE_MODERN_BALLOON.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieJourneyToTheWestBalloonGroup | ZombieJourneyToTheWestBalloonGroup | exact-resource-group-id |
| PlantThymeWarp |  | unresolved-group-id |
| ZombieModernBalloonGroup | ZombieModernBalloonGroup | exact-resource-group-id |
| PlantThymeWarp |  | unresolved-group-id |
| ZombieModernBalloonGroup | ZombieModernBalloonGroup | exact-resource-group-id |
| PlantThymeWarp |  | unresolved-group-id |
| ZombieModernBalloonGroup | ZombieModernBalloonGroup | exact-resource-group-id |
| PlantThymeWarp |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
