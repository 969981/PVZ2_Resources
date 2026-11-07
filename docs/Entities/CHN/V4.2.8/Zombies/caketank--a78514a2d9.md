---
title: caketank 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# caketank

候选中文名：尚未可靠关联。原始配置条目：3。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_24_N.json | 34 | zombie:b9e1b4dc6cf38a7783 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_CAKE_TANK" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S32_24_N.json | 32 | zombie:b6152ebc6c8e50ce9e | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_GIANT_HERMIT_CRAB" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 812 | zombie:1fa4681d0651f886fe | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_CAKE_TANK" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieCakeTankDefault@CurrentLevel | PropertySheet |  | unresolved |
| property-reference | ZombieGiantHermitCrabDefault@CurrentLevel | PropertySheet |  | unresolved |
| property-reference | ZombieCakeTankDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIECAKETANKGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCakeTankGroup_1200/ATLASES/ZOMBIECAKETANKGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIECAKETANKGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCakeTankGroup_1200/ATLASES/ZOMBIECAKETANKGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEGIANTHERMITCRABGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieGiantHermitCrabGroup_1200/ATLASES/ZOMBIEGIANTHERMITCRABGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEICEAGEWALRUSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieIceAgeWalrusGroup_1200/ATLASES/ZOMBIEICEAGEWALRUSGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEBEACHSURFERGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieBeachSurferGroup_1200/ATLASES/ZOMBIEBEACHSURFERGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEBEACHOCTOPUSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieBeachOctopusGroup_1200/ATLASES/ZOMBIEBEACHOCTOPUSGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEBEACHGARGANTUARGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieBeachGargantuarGroup_1200/ATLASES/ZOMBIEBEACHGARGANTUARGROUP_1200_00.png) | $.ResourceGroups[5] | resource-group-name-candidate |
| [ZOMBIEBEACHIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieBeachImpGroup_1200/ATLASES/ZOMBIEBEACHIMPGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIEATLANTISGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieAtlantisGroup_1200/ATLASES/ZOMBIEATLANTISGROUP_1200_00.png) | $.ResourceGroups[7] | resource-group-name-candidate |
| [ZOMBIECAKETANKGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCakeTankGroup_1200/ATLASES/ZOMBIECAKETANKGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieCakeTankGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/CAKE_BREAK_FX/CAKE_BREAK_FX.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCakeTankGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/CAKE_TANK/CAKE_TANK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCakeTankGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/CAKE_BREAK_FX/CAKE_BREAK_FX.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCakeTankGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/CAKE_TANK/CAKE_TANK.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieGiantHermitCrabGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_GIANT_HERMIT_CRAB_CHAIN/ZOMBIE_GIANT_HERMIT_CRAB_CHAIN.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieGiantHermitCrabGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_GIANT_HERMIT_CRAB_PROJECTILE/ZOMBIE_GIANT_HERMIT_CRAB_PROJECTILE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieGiantHermitCrabGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_GIANT_HERMIT_CRAB/ZOMBIE_GIANT_HERMIT_CRAB.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeWalrusGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/WALRUS_EARTH_TILE/WALRUS_EARTH_TILE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeWalrusGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/WALRUS_STATUE/WALRUS_STATUE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceAgeWalrusGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ICEAGE_SEAL/ZOMBIE_ICEAGE_SEAL.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachSurferGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SURF_BOARD/SURF_BOARD.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachSurferGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SURF_BOARD_PARTICLES/SURF_BOARD_PARTICLES.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachSurferGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_BEACH_SURFER/ZOMBIE_BEACH_SURFER.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachOctopusGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_OCTOPUS_PROJECTILE/ZOMBIE_OCTOPUS_PROJECTILE.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachOctopusGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_OCTOPUS_PROJECTILE_ARTIFACT/ZOMBIE_OCTOPUS_PROJECTILE_ARTIFACT.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachOctopusGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_BEACH_OCTOPUS/ZOMBIE_BEACH_OCTOPUS.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachGargantuarGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/BEACH_GARGANTUAR/BEACH_GARGANTUAR.pam.json | $.ResourceGroups[5] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachImpGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_BEACH_IMP_MERMAID/ZOMBIE_BEACH_IMP_MERMAID.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieBeachImpGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_BEACH_IMP_QUIFF/ZOMBIE_BEACH_IMP_QUIFF.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieAtlantisGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ATLANTIS_BASIC/ZOMBIE_ATLANTIS_BASIC.pam.json | $.ResourceGroups[7] | resource-group-name-candidate |

本页仅展示前 20 条；完整 23 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieCakeTankGroup | ZombieCakeTankGroup | exact-resource-group-id |
| PlantHypnoShroom | PlantHypnoShroom | exact-resource-group-id |
| ZombieCakeTankGroup | ZombieCakeTankGroup | exact-resource-group-id |
| ZombieGiantHermitCrabGroup | ZombieGiantHermitCrabGroup | exact-resource-group-id |
| ZombieIceAgeWalrusGroup | ZombieIceAgeWalrusGroup | exact-resource-group-id |
| ZombieBeachSurferGroup | ZombieBeachSurferGroup | exact-resource-group-id |
| ZombieBeachOctopusGroup | ZombieBeachOctopusGroup | exact-resource-group-id |
| ZombieBeachGargantuarGroup | ZombieBeachGargantuarGroup | exact-resource-group-id |
| ZombieBeachImpGroup | ZombieBeachImpGroup | exact-resource-group-id |
| ZombieAtlantisGroup | ZombieAtlantisGroup | exact-resource-group-id |
| PlantHypnoShroom | PlantHypnoShroom | exact-resource-group-id |
| ZombieCakeTankGroup | ZombieCakeTankGroup | exact-resource-group-id |
| PlantHypnoShroom | PlantHypnoShroom | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
