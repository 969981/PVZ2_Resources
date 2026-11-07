---
title: bitpeashooter 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# bitpeashooter

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 279 | plant:4e8d094f03ed50ec43 | TypeName-string-candidate-not-found | 0 | "POPANIM_PLANT_BITPEASHOOTER" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | BitPeashooter@PropertySheets | PeashooterProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | PeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | FirePeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | UltraFirePeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SnowPeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterRockPea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterPea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | PrimalPeashooterLevel5Pea@ProjectileTypes | PrimalPeashooterProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTBITPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantBitPeashooter_1200/ATLASES/PLANTBITPEASHOOTER_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTPRIMALPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPrimalPeashooter_1200/ATLASES/PLANTPRIMALPEASHOOTER_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantBitPeashooter_Common/IMAGES/1200/PLANT2/PLANT/BITPEASHOOTER/BITPEASHOOTER.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/PEA_ROCK_PROJECTILE/PEA_ROCK_PROJECTILE.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/PEA_ROCK_PROJECTILE_SPLIT/PEA_ROCK_PROJECTILE_SPLIT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/SPLAT_ROCK_PEA/SPLAT_ROCK_PEA.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/PLANT/PRIMALPEASHOOTER/PRIMALPEASHOOTER.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantBitPeashooter | PlantBitPeashooter | exact-resource-group-id |
| PlantPrimalPeashooter | PlantPrimalPeashooter | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
