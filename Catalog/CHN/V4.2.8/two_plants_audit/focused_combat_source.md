# 芦藜药师与桑葚爆破手：CHN 4.2.8 原生伤害字段审计

> 状态：原始字段已核验；实际战斗结算、叠毒上限、概率抽样及单位仍待运行时验证。

## 核验过的原始源文件

| 文件 | SHA256 | 对象数 |
|---|---|---:|
| `PLANTTYPES.json` | `7564cc46eaa436984b5a4f98e2c40b3df18d2d7a37b83e2c98105ffe1d76c59b` | 386 |
| `PROPERTYSHEETS.json` | `c4902eacafe4ba6bfd3721ffdc9e3d783c81b1c6a8b329af0cd21f2108ad93a7` | 2028 |
| `PROJECTILETYPES.json` | `6e4f95b2b3b03f76c2816532829a58d85235a4714506623c250bda300177c7d5` | 987 |
| `SKILLTYPES.json` | `4337efe46cfc043268358593cd2ae0f32339ccc19a2f949fcd6c595d9cd09422` | 857 |

## PLANTTYPES.json: PlantType / index 204

Aliases: `convallariachemist`

| 原始字段路径 | 原值 |
|---|---|
| `$.Attribute.SpecialTags[0].MinLevel` | `1` |
| `$.TypeName` | `"convallariachemist"` |
| `$.PlantFramework` | `"PlantConvallariaChemist"` |
| `$.Properties` | `"RTID(ConvallariaChemistDefault@PropertySheets)"` |
| `$.AnimRigClass` | `"PlantAnimRig_ConvallariaChemist"` |
| `$.PopAnim` | `"POPANIM_PLANT_CONVALLARIACHEMIST"` |
| `$.PlantPieceImageName` | `"IMAGE_UI_FRAGMENT_PIECES_PACKETS_CONVALLARIACHEMIST"` |
| `$.AvatarPieceImageName` | `"IMAGE_UI_FRAGMENT_AVATAR_AVATAR_CONVALLARIACHEMIST"` |

## PLANTTYPES.json: PlantType / index 206

Aliases: `mulberry`

| 原始字段路径 | 原值 |
|---|---|
| `$.Attribute.SpecialTags[0].MinLevel` | `5` |
| `$.Attribute.SpecialTags[1].MinLevel` | `5` |
| `$.TypeName` | `"mulberry"` |
| `$.PlantFramework` | `"PlantMulberry"` |
| `$.PlantResourceGroups[0]` | `"PlantMulberry"` |
| `$.PlantResourceGroups[1]` | `"PlantMulberryAudio"` |
| `$.Properties` | `"RTID(MulberryDefault@PropertySheets)"` |
| `$.AnimRigClass` | `"PlantAnimRig_Mulberry"` |
| `$.PopAnim` | `"POPANIM_PLANT_MULBERRY"` |
| `$.PlantPieceImageName` | `"IMAGE_UI_FRAGMENT_PIECES_PACKETS_MULBERRY"` |
| `$.AvatarPieceImageName` | `"IMAGE_UI_FRAGMENT_AVATAR_AVATAR_MULBERRY"` |

## PROPERTYSHEETS.json: ConvallariaChemistProps / index 237

Aliases: `ConvallariaChemistDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.SoudacheAttackScale` | `1.0` |
| `$.SoudacheHealthScale` | `1.0` |
| `$.Cost` | `175` |
| `$.PowerCost` | `7` |
| `$.MinLevel` | `1` |
| `$.MaxLevel` | `5` |
| `$.Hitpoints` | `300` |
| `$.PacketCooldown` | `20` |
| `$.PlantFoodPlayCount` | `1` |
| `$.PlantfoodPineconeCount` | `20` |
| `$.Level5Rate` | `0.5` |
| `$.ProjectileLobHeight` | `350` |
| `$.ProjectileTimeOfFlight` | `1.2` |
| `$.Actions[0].Projectile` | `"RTID(ConvallariaChemistDefault@ProjectileTypes)"` |
| `$.Actions[0].InitialMinCooldownTime` | `1` |
| `$.Actions[0].CooldownTimeMin` | `2.85` |
| `$.Actions[0].CooldownTimeMax` | `3` |
| `$.Actions[1].Projectile` | `"RTID(ConvallariaChemistPlantfoodDefault@ProjectileTypes)"` |
| `$.Actions[2].Projectile` | `"RTID(ConvallariaChemistAvatarDefault@ProjectileTypes)"` |
| `$.Actions[3].Projectile` | `"RTID(ConvallariaChemistSuperDefault@ProjectileTypes)"` |
| `$.Actions[3].InitialMinCooldownTime` | `1` |
| `$.Actions[3].CooldownTimeMin` | `2.85` |
| `$.Actions[3].CooldownTimeMax` | `3` |
| `$.PlantLevelStats[0].AttackLevel` | `1` |
| `$.PlantLevelStats[0].HitPointsLevel` | `1` |
| `$.PlantLevelStats[1].AttackLevel` | `1.5` |
| `$.PlantLevelStats[1].HitPointsLevel` | `1.5` |
| `$.PlantLevelStats[1].PropertySkillType` | `"RTID(Plant_PropertyUp_Level1@SkillTypes)"` |
| `$.PlantLevelStats[1].AdvancedSkillType` | `"RTID(ConvallariaChemist_Skill_Level1@SkillTypes)"` |
| `$.PlantLevelStats[2].AttackLevel` | `2` |
| `$.PlantLevelStats[2].HitPointsLevel` | `2` |
| `$.PlantLevelStats[2].PropertySkillType` | `"RTID(Plant_PropertyUp_Level2@SkillTypes)"` |
| `$.PlantLevelStats[2].AdvancedSkillType` | `"RTID(ConvallariaChemist_Skill_Level2@SkillTypes)"` |
| `$.PlantLevelStats[3].AttackLevel` | `2.5` |
| `$.PlantLevelStats[3].HitPointsLevel` | `2.5` |
| `$.PlantLevelStats[3].PropertySkillType` | `"RTID(Plant_PropertyUp_Level3@SkillTypes)"` |
| `$.PlantLevelStats[3].AdvancedSkillType` | `"RTID(plant_wakeup_level1@SkillTypes)"` |
| `$.PlantLevelStats[4].AttackLevel` | `3` |
| `$.PlantLevelStats[4].HitPointsLevel` | `3` |
| `$.PlantLevelStats[4].PropertySkillType` | `"RTID(Plant_PropertyUp_Level4@SkillTypes)"` |
| `$.PlantLevelStats[4].AdvancedSkillType` | `"RTID(ConvallariaChemist_SuperSkill@SkillTypes)"` |
| `$.PlantLevelStats[5].AttackLevel` | `1` |
| `$.PlantLevelStats[5].HitPointsLevel` | `1` |
| `$.PlantLevelStats[5].PropertySkillType` | `"RTID(SunflowerLevel5Avatar@SkillTypes)"` |
| `$.PlantLevelStats[5].AdvancedSkillType` | `"RTID(plant_wakeup_level2@SkillTypes)"` |
| `$.DetailProps.Damages[0]` | `30` |
| `$.DetailProps.Damages[1]` | `45` |
| `$.DetailProps.Damages[2]` | `60` |
| `$.DetailProps.Damages[3]` | `75` |
| `$.DetailProps.Damages[4]` | `90` |
| `$.DetailProps.AttackInterval[0]` | `2.9` |
| `$.DetailProps.AttackInterval[1]` | `2.9` |
| `$.DetailProps.AttackInterval[2]` | `2.9` |
| `$.DetailProps.AttackInterval[3]` | `2.9` |
| `$.DetailProps.AttackInterval[4]` | `2.9` |
| `$.DisplayActions` | `"RTID(ConvallariaChemistDefault@DisplayActions)"` |
| `$.DisplayAvatarActions` | `"RTID(ConvallariaChemistDefault@DisplayAvatarActions)"` |

## PROPERTYSHEETS.json: MulberryProps / index 238

Aliases: `MulberryDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.SoudacheAttackScale` | `0.6` |
| `$.SoudacheHealthScale` | `0.6` |
| `$.Cost` | `150` |
| `$.PowerCost` | `7` |
| `$.MinLevel` | `1` |
| `$.MaxLevel` | `5` |
| `$.Hitpoints` | `300` |
| `$.SplitGrenadeRate` | `0.1` |
| `$.ImprovedGrenadeBonus` | `1.0` |
| `$.Level5AttackRate` | `0.2` |
| `$.PlasmaSection` | `0.2` |
| `$.FlashSection` | `0.6` |
| `$.PacketCooldown` | `20` |
| `$.PlantFoodPlayCount` | `1` |
| `$.PlantfoodPineconeCount` | `20` |
| `$.ProjectileLobHeight` | `350` |
| `$.ProjectileTimeOfFlight` | `1.2` |
| `$.Actions[0].Projectile` | `"RTID(MulberryDefault@ProjectileTypes)"` |
| `$.Actions[0].CooldownTimeMin` | `5.0` |
| `$.Actions[0].CooldownTimeMax` | `5.0` |
| `$.Actions[1].Projectile` | `"RTID(MulberryAdvancedDefault@ProjectileTypes)"` |
| `$.Actions[1].CooldownTimeMin` | `5.0` |
| `$.Actions[1].CooldownTimeMax` | `5.0` |
| `$.Actions[2].Projectile` | `"RTID(GiantPlasmaGrenade@ProjectileTypes)"` |
| `$.Actions[2].TriggerType` | `"manual"` |
| `$.Actions[3].Projectile` | `"RTID(GiantFlashGrenade@ProjectileTypes)"` |
| `$.Actions[3].TriggerType` | `"manual"` |
| `$.Actions[4].Projectile` | `"RTID(GiantGasGrenade@ProjectileTypes)"` |
| `$.Actions[4].TriggerType` | `"manual"` |
| `$.Actions[5].Projectile` | `"RTID(MulberryPlantfoodDefault@ProjectileTypes)"` |
| `$.Actions[6].Projectile` | `"RTID(MulberryAvatarDefault@ProjectileTypes)"` |
| `$.PlantLevelStats[0].AttackLevel` | `1` |
| `$.PlantLevelStats[0].HitPointsLevel` | `1` |
| `$.PlantLevelStats[1].AttackLevel` | `1.5` |
| `$.PlantLevelStats[1].HitPointsLevel` | `1.5` |
| `$.PlantLevelStats[1].PropertySkillType` | `"RTID(Plant_PropertyUp_Level1@SkillTypes)"` |
| `$.PlantLevelStats[1].AdvancedSkillType` | `"RTID(Mulberry_Skill_Level1@SkillTypes)"` |
| `$.PlantLevelStats[2].AttackLevel` | `2` |
| `$.PlantLevelStats[2].HitPointsLevel` | `2` |
| `$.PlantLevelStats[2].PropertySkillType` | `"RTID(Plant_PropertyUp_Level2@SkillTypes)"` |
| `$.PlantLevelStats[2].AdvancedSkillType` | `"RTID(Mulberry_Skill_Level2@SkillTypes)"` |
| `$.PlantLevelStats[3].AttackLevel` | `2.5` |
| `$.PlantLevelStats[3].HitPointsLevel` | `2.5` |
| `$.PlantLevelStats[3].PropertySkillType` | `"RTID(Plant_PropertyUp_Level3@SkillTypes)"` |
| `$.PlantLevelStats[3].AdvancedSkillType` | `"RTID(plant_wakeup_level1@SkillTypes)"` |
| `$.PlantLevelStats[4].AttackLevel` | `3` |
| `$.PlantLevelStats[4].HitPointsLevel` | `3` |
| `$.PlantLevelStats[4].PropertySkillType` | `"RTID(Plant_PropertyUp_Level4@SkillTypes)"` |
| `$.PlantLevelStats[4].AdvancedSkillType` | `"RTID(Mulberry_SuperSkill@SkillTypes)"` |
| `$.PlantLevelStats[5].AttackLevel` | `1` |
| `$.PlantLevelStats[5].HitPointsLevel` | `1` |
| `$.PlantLevelStats[5].PropertySkillType` | `"RTID(SunflowerLevel5Avatar@SkillTypes)"` |
| `$.PlantLevelStats[5].AdvancedSkillType` | `"RTID(plant_wakeup_level2@SkillTypes)"` |
| `$.DetailProps.Damages[0]` | `200` |
| `$.DetailProps.Damages[1]` | `300` |
| `$.DetailProps.Damages[2]` | `400` |
| `$.DetailProps.Damages[3]` | `500` |
| `$.DetailProps.Damages[4]` | `600` |
| `$.DetailProps.AttackInterval[0]` | `5` |
| `$.DetailProps.AttackInterval[1]` | `5` |
| `$.DetailProps.AttackInterval[2]` | `5` |
| `$.DetailProps.AttackInterval[3]` | `5` |
| `$.DetailProps.AttackInterval[4]` | `5` |
| `$.DisplayActions` | `"RTID(MulberryDefault@DisplayActions)"` |
| `$.DisplayAvatarActions` | `"RTID(MulberryDefault@DisplayAvatarActions)"` |

## PROJECTILETYPES.json: ConvallariaChemistProjectileProps / index 626

Aliases: `ConvallariaChemistDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"ConvallariaChemistProjectile"` |
| `$.BaseDamage` | `30` |
| `$.SplashDamage` | `0` |
| `$.SplashRadius` | `1` |
| `$.MaximumStackLevel` | `3.0` |
| `$.MaximumStacksPerLevel` | `3.0` |
| `$.BasicVenomRate` | `0.2` |
| `$.AdvancedVenomRate` | `0.3` |
| `$.VenomItemName` | `"venom"` |
| `$.StacksToAdd` | `1.0` |
| `$.DamageType[0]` | `"poison"` |
| `$.PoisonInfos[0].PoisonDuration` | `5.0` |
| `$.PoisonInfos[0].PoisonDamage` | `1.0` |
| `$.PoisonInfos[1].PoisonDuration` | `5.0` |
| `$.PoisonInfos[1].PoisonDamage` | `2.0` |
| `$.PoisonInfos[2].PoisonDuration` | `5.0` |
| `$.PoisonInfos[2].PoisonDamage` | `3.0` |
| `$.RotateToMatchVelocity` | `true` |
| `$.DamageFlags[0]` | `"poison"` |
| `$.DamageFlags[1]` | `"lobbed"` |
| `$.DamageFlags[2]` | `"catapult"` |
| `$.InitialVelocity[0].Min` | `290` |
| `$.InitialVelocity[0].Max` | `310` |
| `$.InitialVelocity[1].Min` | `-10` |
| `$.InitialVelocity[1].Max` | `10` |
| `$.InitialVelocity[2].Min` | `500` |
| `$.InitialVelocity[2].Max` | `700` |
| `$.InitialAcceleration[0].Min` | `0` |
| `$.InitialAcceleration[0].Max` | `0` |
| `$.InitialAcceleration[1].Min` | `0` |
| `$.InitialAcceleration[1].Max` | `0` |
| `$.InitialAcceleration[2].Min` | `-10` |
| `$.InitialAcceleration[2].Max` | `-10` |
| `$.InitialAngularVelocity.Min` | `0` |
| `$.InitialAngularVelocity.Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET_HIT"` |

## PROJECTILETYPES.json: ConvallariaChemistPlantfoodProjectileProps / index 627

Aliases: `ConvallariaChemistPlantfoodDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"ConvallariaChemistPlantfoodProjectile"` |
| `$.BaseDamage` | `300` |
| `$.SplashDamage` | `0` |
| `$.SplashRadius` | `1` |
| `$.ExplodeDamage` | `300.0` |
| `$.DamageType[0]` | `"poison"` |
| `$.PoisonInfos[0].PoisonDuration` | `5.0` |
| `$.PoisonInfos[0].PoisonDamage` | `1.0` |
| `$.PoisonInfos[1].PoisonDuration` | `5.0` |
| `$.PoisonInfos[1].PoisonDamage` | `2.0` |
| `$.PoisonInfos[2].PoisonDuration` | `5.0` |
| `$.PoisonInfos[2].PoisonDamage` | `3.0` |
| `$.RotateToMatchVelocity` | `true` |
| `$.DamageFlags[0]` | `"poison"` |
| `$.DamageFlags[1]` | `"lobbed"` |
| `$.DamageFlags[2]` | `"catapult"` |
| `$.InitialVelocity[0].Min` | `290` |
| `$.InitialVelocity[0].Max` | `310` |
| `$.InitialVelocity[1].Min` | `-10` |
| `$.InitialVelocity[1].Max` | `10` |
| `$.InitialVelocity[2].Min` | `500` |
| `$.InitialVelocity[2].Max` | `700` |
| `$.InitialAcceleration[0].Min` | `0` |
| `$.InitialAcceleration[0].Max` | `0` |
| `$.InitialAcceleration[1].Min` | `0` |
| `$.InitialAcceleration[1].Max` | `0` |
| `$.InitialAcceleration[2].Min` | `-10` |
| `$.InitialAcceleration[2].Max` | `-10` |
| `$.InitialAngularVelocity.Min` | `0` |
| `$.InitialAngularVelocity.Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET_HIT"` |

## PROJECTILETYPES.json: ConvallariaChemistPlantfoodProjectileProps / index 628

Aliases: `ConvallariaChemistAvatarDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"ConvallariaChemistAvatarProjectile"` |
| `$.BaseDamage` | `450` |
| `$.SplashDamage` | `0` |
| `$.SplashRadius` | `1` |
| `$.ExplodeDamage` | `650.0` |
| `$.MaximumStackLevel` | `3.0` |
| `$.DamageType[0]` | `"poison"` |
| `$.PoisonInfos[0].PoisonDuration` | `5.0` |
| `$.PoisonInfos[0].PoisonDamage` | `1.0` |
| `$.PoisonInfos[1].PoisonDuration` | `5.0` |
| `$.PoisonInfos[1].PoisonDamage` | `2.0` |
| `$.PoisonInfos[2].PoisonDuration` | `5.0` |
| `$.PoisonInfos[2].PoisonDamage` | `3.0` |
| `$.RotateToMatchVelocity` | `true` |
| `$.DamageFlags[0]` | `"poison"` |
| `$.DamageFlags[1]` | `"lobbed"` |
| `$.DamageFlags[2]` | `"catapult"` |
| `$.InitialVelocity[0].Min` | `290` |
| `$.InitialVelocity[0].Max` | `310` |
| `$.InitialVelocity[1].Min` | `-10` |
| `$.InitialVelocity[1].Max` | `10` |
| `$.InitialVelocity[2].Min` | `500` |
| `$.InitialVelocity[2].Max` | `700` |
| `$.InitialAcceleration[0].Min` | `0` |
| `$.InitialAcceleration[0].Max` | `0` |
| `$.InitialAcceleration[1].Min` | `0` |
| `$.InitialAcceleration[1].Max` | `0` |
| `$.InitialAcceleration[2].Min` | `-10` |
| `$.InitialAcceleration[2].Max` | `-10` |
| `$.InitialAngularVelocity.Min` | `0` |
| `$.InitialAngularVelocity.Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET_HIT"` |

## PROJECTILETYPES.json: ConvallariaChemistProjectileProps / index 629

Aliases: `ConvallariaChemistSuperDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"ConvallariaChemistSuperProjectile"` |
| `$.BaseDamage` | `200` |
| `$.SplashDamage` | `0` |
| `$.SplashRadius` | `1` |
| `$.MaximumStackLevel` | `3.0` |
| `$.MaximumStacksPerLevel` | `3.0` |
| `$.BasicVenomRate` | `0.2` |
| `$.AdvancedVenomRate` | `0.3` |
| `$.VenomItemName` | `"venom"` |
| `$.StacksToAdd` | `1.0` |
| `$.DamageType[0]` | `"poison"` |
| `$.PoisonInfos[0].PoisonDuration` | `5.0` |
| `$.PoisonInfos[0].PoisonDamage` | `1.0` |
| `$.PoisonInfos[1].PoisonDuration` | `5.0` |
| `$.PoisonInfos[1].PoisonDamage` | `2.0` |
| `$.PoisonInfos[2].PoisonDuration` | `5.0` |
| `$.PoisonInfos[2].PoisonDamage` | `3.0` |
| `$.RotateToMatchVelocity` | `true` |
| `$.DamageFlags[0]` | `"poison"` |
| `$.DamageFlags[1]` | `"lobbed"` |
| `$.DamageFlags[2]` | `"catapult"` |
| `$.InitialVelocity[0].Min` | `290` |
| `$.InitialVelocity[0].Max` | `310` |
| `$.InitialVelocity[1].Min` | `-10` |
| `$.InitialVelocity[1].Max` | `10` |
| `$.InitialVelocity[2].Min` | `500` |
| `$.InitialVelocity[2].Max` | `700` |
| `$.InitialAcceleration[0].Min` | `0` |
| `$.InitialAcceleration[0].Max` | `0` |
| `$.InitialAcceleration[1].Min` | `0` |
| `$.InitialAcceleration[1].Max` | `0` |
| `$.InitialAcceleration[2].Min` | `-10` |
| `$.InitialAcceleration[2].Max` | `-10` |
| `$.InitialAngularVelocity.Min` | `0` |
| `$.InitialAngularVelocity.Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_CONVALLARIACHEMIST_BULLET_HIT"` |

## PROJECTILETYPES.json: ProjectilePropertySheet / index 630

Aliases: `MulberryDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"MulberryProjectile"` |
| `$.BaseDamage` | `200` |
| `$.SplashDamage` | `500` |
| `$.SplashRadius` | `1` |
| `$.DamageFlags[0]` | `"hits_submerged"` |
| `$.InitialVelocity[0].Min` | `200.0` |
| `$.InitialVelocity[0].Max` | `200.0` |
| `$.InitialVelocity[1].Min` | `0.0` |
| `$.InitialVelocity[1].Max` | `0.0` |
| `$.InitialVelocity[2].Min` | `0.0` |
| `$.InitialVelocity[2].Max` | `0.0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_PROJECTILE"` |
| `$.AttachedPAMAnimRigClass` | `"PlantAnimRig_Mulberry"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |

## PROJECTILETYPES.json: ProjectilePropertySheet / index 631

Aliases: `MulberryAdvancedDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"MulberryProjectile"` |
| `$.BaseDamage` | `200` |
| `$.SplashDamage` | `500` |
| `$.SplashRadius` | `2.0736` |
| `$.DamageFlags[0]` | `"hits_submerged"` |
| `$.InitialVelocity[0].Min` | `200.0` |
| `$.InitialVelocity[0].Max` | `200.0` |
| `$.InitialVelocity[1].Min` | `0.0` |
| `$.InitialVelocity[1].Max` | `0.0` |
| `$.InitialVelocity[2].Min` | `0.0` |
| `$.InitialVelocity[2].Max` | `0.0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_ADV_PROJECTILE"` |
| `$.AttachedPAMAnimRigClass` | `"PlantAnimRig_Mulberry"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |

## PROJECTILETYPES.json: MulberryPlasmaGrenadeProps / index 632

Aliases: `GiantPlasmaGrenade`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"MulberryPlasmaGrenade"` |
| `$.BaseDamage` | `2500` |
| `$.DamageFlags[0]` | `"shooter"` |
| `$.DamageType[0]` | `"lightning"` |
| `$.InitialVelocity[0].Min` | `200` |
| `$.InitialVelocity[0].Max` | `220` |
| `$.InitialVelocity[1].Min` | `0` |
| `$.InitialVelocity[1].Max` | `0` |
| `$.InitialVelocity[2].Min` | `0` |
| `$.InitialVelocity[2].Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_PLASMA"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |
| `$.TossSpeed` | `500` |

## PROJECTILETYPES.json: MulberryFlashGrenadeProps / index 633

Aliases: `GiantFlashGrenade`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"MulberryFlashGrenade"` |
| `$.BaseDamage` | `40` |
| `$.DamageFlags[0]` | `"lightning"` |
| `$.DamageFlags[1]` | `"shooter"` |
| `$.DamageType[0]` | `"lightning"` |
| `$.InitialVelocity[0].Min` | `200` |
| `$.InitialVelocity[0].Max` | `220` |
| `$.InitialVelocity[1].Min` | `0` |
| `$.InitialVelocity[1].Max` | `0` |
| `$.InitialVelocity[2].Min` | `0` |
| `$.InitialVelocity[2].Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_FLASH"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |
| `$.StunDuration` | `2.0` |

## PROJECTILETYPES.json: MulberryGasGrenadeProps / index 634

Aliases: `GiantGasGrenade`

| 原始字段路径 | 原值 |
|---|---|
| `$.ClassName` | `"MulberryGasGrenade"` |
| `$.BaseDamage` | `100` |
| `$.DamageFlags[0]` | `"poison"` |
| `$.DamageFlags[1]` | `"shooter"` |
| `$.DamageType[0]` | `"poison"` |
| `$.InitialVelocity[0].Min` | `200` |
| `$.InitialVelocity[0].Max` | `220` |
| `$.InitialVelocity[1].Min` | `0` |
| `$.InitialVelocity[1].Max` | `0` |
| `$.InitialVelocity[2].Min` | `0` |
| `$.InitialVelocity[2].Max` | `0` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_GAS"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |
| `$.PoisonDuration` | `10.0` |
| `$.PoisonDamage` | `20.0` |

## PROJECTILETYPES.json: ProjectilePropertySheet / index 635

Aliases: `MulberryPlantfoodDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.BaseDamage` | `270` |
| `$.SplashDamage` | `270` |
| `$.SplashRadius` | `1` |
| `$.DamageFlags[0]` | `"lobbed"` |
| `$.DamageFlags[1]` | `"catapult"` |
| `$.InitialVelocity[0].Min` | `290` |
| `$.InitialVelocity[0].Max` | `310` |
| `$.InitialVelocity[1].Min` | `-10` |
| `$.InitialVelocity[1].Max` | `10` |
| `$.InitialVelocity[2].Min` | `500` |
| `$.InitialVelocity[2].Max` | `700` |
| `$.InitialAcceleration[0].Min` | `0` |
| `$.InitialAcceleration[0].Max` | `0` |
| `$.InitialAcceleration[1].Min` | `0` |
| `$.InitialAcceleration[1].Max` | `0` |
| `$.InitialAcceleration[2].Min` | `-10` |
| `$.InitialAcceleration[2].Max` | `-10` |
| `$.InitialAngularVelocity.Min` | `1` |
| `$.InitialAngularVelocity.Max` | `20` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_PROJECTILE"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |

## PROJECTILETYPES.json: ProjectilePropertySheet / index 636

Aliases: `MulberryAvatarDefault`

| 原始字段路径 | 原值 |
|---|---|
| `$.BaseDamage` | `350` |
| `$.SplashDamage` | `350` |
| `$.SplashRadius` | `2.0736` |
| `$.DamageFlags[0]` | `"lobbed"` |
| `$.DamageFlags[1]` | `"catapult"` |
| `$.InitialVelocity[0].Min` | `290` |
| `$.InitialVelocity[0].Max` | `310` |
| `$.InitialVelocity[1].Min` | `-10` |
| `$.InitialVelocity[1].Max` | `10` |
| `$.InitialVelocity[2].Min` | `500` |
| `$.InitialVelocity[2].Max` | `700` |
| `$.InitialAcceleration[0].Min` | `0` |
| `$.InitialAcceleration[0].Max` | `0` |
| `$.InitialAcceleration[1].Min` | `0` |
| `$.InitialAcceleration[1].Max` | `0` |
| `$.InitialAcceleration[2].Min` | `-10` |
| `$.InitialAcceleration[2].Max` | `-10` |
| `$.InitialAngularVelocity.Min` | `1` |
| `$.InitialAngularVelocity.Max` | `20` |
| `$.AttachedPAM` | `"POPANIM_EFFECTS_MULBERRY_AVATAR_PROJECTILE"` |
| `$.ImpactPAM` | `"POPANIM_EFFECTS_MULBERRY_ALL_HIT"` |

## SKILLTYPES.json: SkillPropertySheet / index 424

Aliases: `ConvallariaChemist_Skill_Level1`

| 原始字段路径 | 原值 |
|---|---|
| `$.SkillName` | `"[CONVALLARIACHEMIST_SKILL_LEVEL1]"` |
| `$.SkillDescription` | `"[CONVALLARIACHEMIST_SKILL_LEVEL1_DES]"` |
| `$.SkillIconImage` | `"IMAGE_UI_LEVELUP_CONVALLARIACHEMIST_SKILL_LEVEL1"` |

## SKILLTYPES.json: SkillPropertySheet / index 425

Aliases: `ConvallariaChemist_Skill_Level2`

| 原始字段路径 | 原值 |
|---|---|
| `$.SkillName` | `"[CONVALLARIACHEMIST_SKILL_LEVEL2]"` |
| `$.SkillDescription` | `"[CONVALLARIACHEMIST_SKILL_LEVEL2_DES]"` |
| `$.SkillIconImage` | `"IMAGE_UI_LEVELUP_CONVALLARIACHEMIST_SKILL_LEVEL2"` |

## SKILLTYPES.json: SkillPropertySheet / index 426

Aliases: `ConvallariaChemist_SuperSkill`

| 原始字段路径 | 原值 |
|---|---|
| `$.SkillName` | `"[CONVALLARIACHEMIST_SKILL_LEVEL5]"` |
| `$.SkillDescription` | `"[CONVALLARIACHEMIST_SKILL_LEVEL5_DES]"` |
| `$.SkillIconImage` | `"IMAGE_UI_LEVELUP_CONVALLARIACHEMIST_SKILL_LEVEL5"` |

## SKILLTYPES.json: SkillPropertySheet / index 427

Aliases: `Mulberry_Skill_Level1`

| 原始字段路径 | 原值 |
|---|---|
| `$.SkillName` | `"[MULBERRY_SKILL_LEVEL1]"` |
| `$.SkillDescription` | `"[MULBERRY_SKILL_LEVEL1_DES]"` |
| `$.SkillIconImage` | `"IMAGE_UI_LEVELUP_MULBERRY_SKILL_LEVEL1"` |

## SKILLTYPES.json: SkillPropertySheet / index 428

Aliases: `Mulberry_Skill_Level2`

| 原始字段路径 | 原值 |
|---|---|
| `$.SkillName` | `"[MULBERRY_SKILL_LEVEL2]"` |
| `$.SkillDescription` | `"[MULBERRY_SKILL_LEVEL2_DES]"` |
| `$.SkillIconImage` | `"IMAGE_UI_LEVELUP_MULBERRY_SKILL_LEVEL2"` |

## SKILLTYPES.json: SkillPropertySheet / index 429

Aliases: `Mulberry_SuperSkill`

| 原始字段路径 | 原值 |
|---|---|
| `$.SkillName` | `"[MULBERRY_SKILL_LEVEL5]"` |
| `$.SkillDescription` | `"[MULBERRY_SKILL_LEVEL5_DES]"` |
| `$.SkillIconImage` | `"IMAGE_UI_LEVELUP_MULBERRY_SKILL_LEVEL5"` |
