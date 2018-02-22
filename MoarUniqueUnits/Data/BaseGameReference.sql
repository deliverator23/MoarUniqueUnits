 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, FoundCity, PopulationCost, PrereqPopulation, AdvisorType, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType) 
VALUES ('UNIT_SETTLER', '80', '2', '3', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'true', '1', '2', 'ADVISOR_GENERIC', 'LOC_UNIT_SETTLER_NAME', 'LOC_UNIT_SETTLER_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '30', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_SETTLER');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, AdvisorType, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, BuildCharges) 
VALUES ('UNIT_BUILDER', '50', '2', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'ADVISOR_GENERIC', 'LOC_UNIT_BUILDER_NAME', 'LOC_UNIT_BUILDER_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '4', 'YIELD_GOLD', '3');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, AdvisorType, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType, IgnoreMoves, MakeTradeRoute, PrereqCivic) 
VALUES ('UNIT_TRADER', '40', '2', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'ADVISOR_GENERIC', 'LOC_UNIT_TRADER_NAME', 'LOC_UNIT_TRADER_DESCRIPTION', 'False', 'COST_PROGRESSION_GAME_PROGRESS', '400', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_TRADE', 'true', 'true', 'CIVIC_FOREIGN_TRADE');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType, ReligiousStrength, SpreadCharges, TrackReligion, MustPurchase, ReligionEvictPercent) 
VALUES ('UNIT_MISSIONARY', '75', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_MISSIONARY_NAME', 'LOC_UNIT_MISSIONARY_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '6', 'YIELD_FAITH', 'PSEUDOYIELD_UNIT_RELIGIOUS', '100', '3', 'TRUE', 'TRUE', '10');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType, ReligiousStrength, SpreadCharges, TrackReligion, MustPurchase, ReligionEvictPercent, EvangelizeBelief, LaunchInquisition, InitialLevel, NumRandomChoices) 
VALUES ('UNIT_APOSTLE', '200', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'PROMOTION_CLASS_APOSTLE', 'LOC_UNIT_APOSTLE_NAME', 'LOC_UNIT_APOSTLE_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '15', 'YIELD_FAITH', 'PSEUDOYIELD_UNIT_RELIGIOUS', '110', '3', 'TRUE', 'TRUE', '25', 'true', 'true', '2', '3');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType, ReligiousStrength, SpreadCharges, TrackReligion, MustPurchase, ReligionEvictPercent, RequiresInquisition) 
VALUES ('UNIT_INQUISITOR', '75', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'PROMOTION_CLASS_INQUISITOR', 'LOC_UNIT_INQUISITOR_NAME', 'LOC_UNIT_INQUISITOR_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '6', 'YIELD_FAITH', 'PSEUDOYIELD_UNIT_RELIGIOUS', '75', '3', 'TRUE', 'TRUE', '100', 'true');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType, ReligiousStrength, ReligiousHealCharges, TrackReligion, MustPurchase) 
VALUES ('UNIT_GURU', '120', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GURU_NAME', 'LOC_UNIT_GURU_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '12', 'YIELD_FAITH', 'PSEUDOYIELD_UNIT_RELIGIOUS', '90', '3', 'TRUE', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, Name, Description, PurchaseYield, TrackReligion, MustPurchase, EnabledByReligion) 
VALUES ('UNIT_WARRIOR_MONK', '100', '2', '3', '2', 'true', 'DOMAIN_LAND', '35', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MONK', 'LOC_UNIT_WARRIOR_MONK_NAME', 'LOC_UNIT_WARRIOR_MONK_DESCRIPTION', 'YIELD_FAITH', 'TRUE', 'TRUE', 'true');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, AdvisorType, Name, Description, CanCapture, PurchaseYield, PseudoYieldType, PrereqCivic, ExtractsArtifacts, CanRetreatWhenCaptured) 
VALUES ('UNIT_ARCHAEOLOGIST', '400', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'ADVISOR_CULTURE', 'LOC_UNIT_ARCHAEOLOGIST_NAME', 'LOC_UNIT_ARCHAEOLOGIST_DESCRIPTION', 'False', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 'CIVIC_NATURAL_HISTORY', 'true', 'True');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_GENERAL', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_GENERAL_NAME', 'LOC_UNIT_GREAT_GENERAL_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_ADMIRAL', '1', '4', '2', 'false', 'DOMAIN_SEA', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_ADMIRAL_NAME', 'LOC_UNIT_GREAT_ADMIRAL_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_ENGINEER', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_ENGINEER_NAME', 'LOC_UNIT_GREAT_ENGINEER_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_MERCHANT', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_MERCHANT_NAME', 'LOC_UNIT_GREAT_MERCHANT_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain, FoundReligion) 
VALUES ('UNIT_GREAT_PROPHET', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_PROPHET_NAME', 'LOC_UNIT_GREAT_PROPHET_DESCRIPTION', 'False', 'True', 'False', 'true');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_SCIENTIST', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_SCIENTIST_NAME', 'LOC_UNIT_GREAT_SCIENTIST_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_WRITER', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_WRITER_NAME', 'LOC_UNIT_GREAT_WRITER_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_ARTIST', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_ARTIST_NAME', 'LOC_UNIT_GREAT_ARTIST_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CanRetreatWhenCaptured, CanTrain) 
VALUES ('UNIT_GREAT_MUSICIAN', '1', '4', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_MUSICIAN_NAME', 'LOC_UNIT_GREAT_MUSICIAN_DESCRIPTION', 'False', 'True', 'False');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, AdvisorType, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PseudoYieldType, IgnoreMoves, NumRandomChoices, Spy, TeamVisibility) 
VALUES ('UNIT_SPY', '225', '4', '1', '3', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'PROMOTION_CLASS_SPY', 'ADVISOR_TECHNOLOGY', 'LOC_UNIT_SPY_NAME', 'LOC_UNIT_SPY_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '75', 'PSEUDOYIELD_UNIT_SPY', 'true', '3', 'true', 'true');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, CanCapture, CostProgressionModel, CostProgressionParam1, PurchaseYield, PseudoYieldType, PrereqCivic, MustPurchase, CanRetreatWhenCaptured, ParkCharges) 
VALUES ('UNIT_NATURALIST', '800', '4', '3', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_NATURALIST_NAME', 'LOC_UNIT_NATURALIST_DESCRIPTION', 'False', 'COST_PROGRESSION_PREVIOUS_COPIES', '100', 'YIELD_FAITH', 'PSEUDOYIELD_UNIT_RELIGIOUS', 'CIVIC_CONSERVATION', 'TRUE', 'True', '1');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType) 
VALUES ('UNIT_SCOUT', '30', '3', '2', 'true', 'DOMAIN_LAND', '10', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RECON', 'ADVISOR_GENERIC', 'LOC_UNIT_SCOUT_NAME', 'LOC_UNIT_SCOUT_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_EXPLORER');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech) 
VALUES ('UNIT_WARRIOR', '40', '2', '2', 'true', 'DOMAIN_LAND', '20', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_WARRIOR_NAME', 'LOC_UNIT_WARRIOR_DESCRIPTION', 'YIELD_GOLD', 'TECH_GUNPOWDER');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech) 
VALUES ('UNIT_SLINGER', '35', '2', '2', 'false', 'DOMAIN_LAND', '5', '15', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_SLINGER_NAME', 'LOC_UNIT_SLINGER_DESCRIPTION', 'YIELD_GOLD', 'TECH_MACHINERY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType) 
VALUES ('UNIT_BARBARIAN_HORSEMAN', '40', '1', '3', '2', 'true', 'DOMAIN_LAND', '20', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_LIGHT_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_BARBARIAN_HORSEMAN_NAME', 'LOC_UNIT_BARBARIAN_HORSEMAN_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_BARBARIAN');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType) 
VALUES ('UNIT_BARBARIAN_HORSE_ARCHER', '35', '1', '3', '2', 'false', 'DOMAIN_LAND', '10', '15', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_BARBARIAN_HORSE_ARCHER_NAME', 'LOC_UNIT_BARBARIAN_HORSE_ARCHER_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_BARBARIAN');
 
INSERT INTO Units (UnitType, Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType) 
VALUES ('UNIT_SUMERIAN_WAR_CART', '55', '3', '2', 'true', 'DOMAIN_LAND', '30', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_SUMERIAN_WAR_CART_NAME', 'LOC_UNIT_SUMERIAN_WAR_CART_DESCRIPTION', 'YIELD_GOLD', 'TECH_STIRRUPS', 'TRAIT_CIVILIZATION_UNIT_SUMERIAN_WAR_CART');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType, PrereqTech) 
VALUES ('UNIT_BARBARIAN_RAIDER', '65', '1', '3', '2', 'true', 'DOMAIN_SEA', '25', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RAIDER', 'ADVISOR_CONQUEST', 'LOC_UNIT_BARBARIAN_GALLEY_NAME', 'LOC_UNIT_BARBARIAN_GALLEY_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_BARBARIAN', 'TECH_SAILING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_GALLEY', '65', '1', '3', '2', 'true', 'DOMAIN_SEA', '25', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_GALLEY_NAME', 'LOC_UNIT_GALLEY_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_STEAM_POWER', 'TECH_SAILING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_NORWEGIAN_LONGSHIP', '65', '1', '3', '2', 'true', 'DOMAIN_SEA', '30', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_NORWEGIAN_LONGSHIP_NAME', 'LOC_UNIT_NORWEGIAN_LONGSHIP_DESCRIPTION', 'YIELD_GOLD', 'TECH_ELECTRICITY', 'TRAIT_LEADER_UNIT_NORWEGIAN_LONGSHIP', 'TECH_SAILING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_ARCHER', '60', '1', '2', '2', 'false', 'DOMAIN_LAND', '15', '25', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_ARCHER_NAME', 'LOC_UNIT_ARCHER_DESCRIPTION', 'YIELD_GOLD', 'TECH_BALLISTICS', 'TECH_ARCHERY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_SPEARMAN', '65', '1', '2', '2', 'true', 'DOMAIN_LAND', '25', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_ANTI_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_SPEARMAN_NAME', 'LOC_UNIT_SPEARMAN_DESCRIPTION', 'YIELD_GOLD', 'TECH_METAL_CASTING', 'TECH_BRONZE_WORKING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_HEAVY_CHARIOT', '65', '1', '2', '2', 'true', 'DOMAIN_LAND', '28', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_HEAVY_CHARIOT_NAME', 'LOC_UNIT_HEAVY_CHARIOT_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMBUSTION', 'TECH_THE_WHEEL');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech, ObsoleteCivic) 
VALUES ('UNIT_BATTERING_RAM', '65', '1', '2', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_BATTERING_RAM_NAME', 'LOC_UNIT_BATTERING_RAM_DESCRIPTION', 'YIELD_GOLD', 'TECH_MASONRY', 'CIVIC_CIVIL_ENGINEERING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_GREEK_HOPLITE', '65', '1', '2', '2', 'true', 'DOMAIN_LAND', '25', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_ANTI_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_GREEK_HOPLITE_NAME', 'LOC_UNIT_GREEK_HOPLITE_DESCRIPTION', 'YIELD_GOLD', 'TECH_METAL_CASTING', 'TRAIT_CIVILIZATION_UNIT_GREEK_HOPLITE', 'TECH_BRONZE_WORKING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_SWORDSMAN', '90', '2', '2', '2', 'true', 'DOMAIN_LAND', '36', 'RESOURCE_IRON', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_SWORDSMAN_NAME', 'LOC_UNIT_SWORDSMAN_DESCRIPTION', 'YIELD_GOLD', 'TECH_REPLACEABLE_PARTS', 'TECH_IRON_WORKING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_HORSEMAN', '80', '2', '4', '2', 'true', 'DOMAIN_LAND', '36', 'RESOURCE_HORSES', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_LIGHT_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_HORSEMAN_NAME', 'LOC_UNIT_HORSEMAN_DESCRIPTION', 'YIELD_GOLD', 'TECH_SYNTHETIC_MATERIALS', 'TECH_HORSEBACK_RIDING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_SCYTHIAN_HORSE_ARCHER', '100', '2', '4', '2', 'false', 'DOMAIN_LAND', '15', '25', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_SCYTHIAN_HORSE_ARCHER_NAME', 'LOC_UNIT_SCYTHIAN_HORSE_ARCHER_DESCRIPTION', 'YIELD_GOLD', 'TECH_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_SCYTHIAN_HORSE_ARCHER', 'TECH_HORSEBACK_RIDING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, BuildCharges, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_ROMAN_LEGION', '110', '2', '2', '2', 'true', 'DOMAIN_LAND', '40', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_ROMAN_LEGION_NAME', 'LOC_UNIT_ROMAN_LEGION_DESCRIPTION', 'YIELD_GOLD', '1', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_ROMAN_LEGION', 'TECH_IRON_WORKING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_KONGO_SHIELD_BEARER', '110', '2', '2', '2', 'true', 'DOMAIN_LAND', '35', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_KONGO_SHIELD_BEARER_NAME', 'LOC_UNIT_KONGO_SHIELD_BEARER_DESCRIPTION', 'YIELD_GOLD', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_KONGO_SHIELD_BEARER', 'TECH_IRON_WORKING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, Bombard, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_CATAPULT', '120', '2', '2', '2', 'false', 'DOMAIN_LAND', '23', '35', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_SIEGE', 'ADVISOR_CONQUEST', 'LOC_UNIT_CATAPULT_NAME', 'LOC_UNIT_CATAPULT_DESCRIPTION', 'YIELD_GOLD', 'TECH_STEEL', 'TECH_ENGINEERING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech, ObsoleteCivic) 
VALUES ('UNIT_SIEGE_TOWER', '100', '2', '2', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_SIEGE_TOWER_NAME', 'LOC_UNIT_SIEGE_TOWER_DESCRIPTION', 'YIELD_GOLD', 'TECH_CONSTRUCTION', 'CIVIC_CIVIL_ENGINEERING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_QUADRIREME', '120', '2', '3', '2', 'true', 'DOMAIN_SEA', '20', '25', '1', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_QUADRIREME_NAME', 'LOC_UNIT_QUADRIREME_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_STEEL', 'TECH_SHIPBUILDING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_EGYPTIAN_CHARIOT_ARCHER', '120', '2', '2', '2', 'false', 'DOMAIN_LAND', '25', '35', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_EGYPTIAN_CHARIOT_ARCHER_NAME', 'LOC_UNIT_EGYPTIAN_CHARIOT_ARCHER_DESCRIPTION', 'YIELD_GOLD', 'TECH_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_EGYPTIAN_CHARIOT_ARCHER', 'TECH_THE_WHEEL');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_JAPANESE_SAMURAI', '180', '3', '2', '2', 'true', 'DOMAIN_LAND', '45', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_JAPANESE_SAMURAI_NAME', 'LOC_UNIT_JAPANESE_SAMURAI_DESCRIPTION', 'YIELD_GOLD', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_JAPANESE_SAMURAI', 'TECH_MILITARY_TACTICS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_NORWEGIAN_BERSERKER', '180', '3', '2', '2', 'true', 'DOMAIN_LAND', '40', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_NORWEGIAN_BERSERKER_NAME', 'LOC_UNIT_NORWEGIAN_BERSERKER_DESCRIPTION', 'YIELD_GOLD', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_BERSERKER', 'TECH_MILITARY_TACTICS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_KNIGHT', '180', '3', '4', '2', 'true', 'DOMAIN_LAND', '48', 'RESOURCE_IRON', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_KNIGHT_NAME', 'LOC_UNIT_KNIGHT_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMPOSITES', 'TECH_STIRRUPS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_INDIAN_VARU', '120', '3', '2', '3', 'true', 'DOMAIN_LAND', '40', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_INDIAN_VARU_NAME', 'LOC_UNIT_INDIAN_VARU_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMBUSTION', 'TRAIT_CIVILIZATION_UNIT_INDIAN_VARU', 'TECH_HORSEBACK_RIDING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_ARABIAN_MAMLUK', '180', '3', '4', '2', 'true', 'DOMAIN_LAND', '48', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_ARABIAN_MAMLUK_NAME', 'LOC_UNIT_ARABIAN_MAMLUK_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_ARABIAN_MAMLUK', 'TECH_STIRRUPS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_CROSSBOWMAN', '180', '3', '2', '2', 'false', 'DOMAIN_LAND', '30', '40', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_CROSSBOWMAN_NAME', 'LOC_UNIT_CROSSBOWMAN_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS', 'TECH_MACHINERY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_CHINESE_CROUCHING_TIGER', '160', '3', '2', '2', 'false', 'DOMAIN_LAND', '30', '50', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_CHINESE_CROUCHING_TIGER_NAME', 'LOC_UNIT_CHINESE_CROUCHING_TIGER_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_CHINESE_CROUCHING_TIGER', 'TECH_MACHINERY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, BuildCharges, PrereqTech) 
VALUES ('UNIT_MILITARY_ENGINEER', '170', '4', '2', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_MILITARY_ENGINEER_NAME', 'LOC_UNIT_MILITARY_ENGINEER_DESCRIPTION', 'YIELD_GOLD', '2', 'TECH_MILITARY_ENGINEERING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_PIKEMAN', '200', '3', '2', '2', 'true', 'DOMAIN_LAND', '41', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_ANTI_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_PIKEMAN_NAME', 'LOC_UNIT_PIKEMAN_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMPOSITES', 'TECH_MILITARY_TACTICS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_MUSKETMAN', '240', '4', '2', '2', 'true', 'DOMAIN_LAND', '55', 'RESOURCE_NITER', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_MUSKETMAN_NAME', 'LOC_UNIT_MUSKETMAN_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS', 'TECH_GUNPOWDER');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, TraitType, PrereqTech) 
VALUES ('UNIT_SPANISH_CONQUISTADOR', '250', '4', '2', '2', 'true', 'DOMAIN_LAND', '55', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_SPANISH_CONQUISTADOR_NAME', 'LOC_UNIT_SPANISH_CONQUISTADOR_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_SPANISH_CONQUISTADOR', 'TECH_GUNPOWDER');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_CARAVEL', '240', '4', '4', '3', 'true', 'DOMAIN_SEA', '50', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_CARAVEL_NAME', 'LOC_UNIT_CARAVEL_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_COMBINED_ARMS', 'TECH_CARTOGRAPHY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, Bombard, Range, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_BOMBARD', '280', '4', '2', '2', 'false', 'DOMAIN_LAND', '43', '55', '2', 'RESOURCE_NITER', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_SIEGE', 'ADVISOR_CONQUEST', 'LOC_UNIT_BOMBARD_NAME', 'LOC_UNIT_BOMBARD_DESCRIPTION', 'YIELD_GOLD', 'TECH_GUIDANCE_SYSTEMS', 'TECH_METAL_CASTING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_FRIGATE', '280', '5', '4', '2', 'true', 'DOMAIN_SEA', '45', '55', '2', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_FRIGATE_NAME', 'LOC_UNIT_FRIGATE_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_LASERS', 'TECH_SQUARE_RIGGING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqCivic, MandatoryObsoleteTech) 
VALUES ('UNIT_PRIVATEER', '280', '4', '4', '2', 'true', 'DOMAIN_SEA', '40', '50', '2', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RAIDER', 'ADVISOR_CONQUEST', 'LOC_UNIT_PRIVATEER_NAME', 'LOC_UNIT_PRIVATEER_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'CIVIC_MERCANTILISM', 'TECH_LASERS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqCivic, MandatoryObsoleteTech, TraitType) 
VALUES ('UNIT_ENGLISH_SEADOG', '280', '4', '4', '2', 'true', 'DOMAIN_SEA', '40', '50', '2', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RAIDER', 'ADVISOR_CONQUEST', 'LOC_UNIT_ENGLISH_SEADOG_NAME', 'LOC_UNIT_ENGLISH_SEADOG_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'CIVIC_MERCANTILISM', 'TECH_TELECOMMUNICATIONS', 'TRAIT_CIVILIZATION_UNIT_ENGLISH_SEADOG');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech) 
VALUES ('UNIT_FIELD_CANNON', '330', '5', '2', '2', 'false', 'DOMAIN_LAND', '50', '60', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_FIELD_CANNON_NAME', 'LOC_UNIT_FIELD_CANNON_DESCRIPTION', 'YIELD_GOLD', 'TECH_TELECOMMUNICATIONS', 'TECH_BALLISTICS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_CAVALRY', '330', '5', '5', '2', 'true', 'DOMAIN_LAND', '62', 'RESOURCE_HORSES', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_LIGHT_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_CAVALRY_NAME', 'LOC_UNIT_CAVALRY_DESCRIPTION', 'YIELD_GOLD', 'TECH_MILITARY_SCIENCE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType, PrereqTech) 
VALUES ('UNIT_RUSSIAN_COSSACK', '340', '5', '5', '2', 'true', 'DOMAIN_LAND', '67', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_LIGHT_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_RUSSIAN_COSSACK_NAME', 'LOC_UNIT_RUSSIAN_COSSACK_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_CIVILIZATION_UNIT_RUSSIAN_COSSACK', 'TECH_MILITARY_SCIENCE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType, PrereqTech) 
VALUES ('UNIT_ENGLISH_REDCOAT', '340', '5', '2', '2', 'true', 'DOMAIN_LAND', '65', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_ENGLISH_REDCOAT_NAME', 'LOC_UNIT_ENGLISH_REDCOAT_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_LEADER_UNIT_ENGLISH_REDCOAT', 'TECH_MILITARY_SCIENCE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType, PrereqTech) 
VALUES ('UNIT_FRENCH_GARDE_IMPERIALE', '340', '5', '2', '2', 'true', 'DOMAIN_LAND', '65', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_FRENCH_GARDE_IMPERIALE_NAME', 'LOC_UNIT_FRENCH_GARDE_IMPERIALE_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_CIVILIZATION_UNIT_FRENCH_GARDE_IMPERIALE', 'TECH_MILITARY_SCIENCE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_MEDIC', '370', '5', '2', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_MEDIC_NAME', 'LOC_UNIT_MEDIC_DESCRIPTION', 'YIELD_GOLD', 'TECH_SANITATION');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech) 
VALUES ('UNIT_IRONCLAD', '380', '5', '5', '3', 'true', 'DOMAIN_SEA', '60', 'RESOURCE_COAL', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_IRONCLAD_NAME', 'LOC_UNIT_IRONCLAD_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_STEAM_POWER');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, TraitType, PrereqTech) 
VALUES ('UNIT_AMERICAN_ROUGH_RIDER', '385', '2', '5', '2', 'true', 'DOMAIN_LAND', '67', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_AMERICAN_ROUGH_RIDER_NAME', 'LOC_UNIT_AMERICAN_ROUGH_RIDER_DESCRIPTION', 'YIELD_GOLD', 'TRAIT_LEADER_UNIT_AMERICAN_ROUGH_RIDER', 'TECH_RIFLING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_RANGER', '380', '5', '3', '2', 'false', 'DOMAIN_LAND', '45', '60', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RECON', 'ADVISOR_CONQUEST', 'LOC_UNIT_RANGER_NAME', 'LOC_UNIT_RANGER_DESCRIPTION', 'YIELD_GOLD', 'TECH_RIFLING');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_OBSERVATION_BALLOON', '240', '2', '2', '3', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_OBSERVATION_BALLOON_NAME', 'LOC_UNIT_OBSERVATION_BALLOON_DESCRIPTION', 'YIELD_GOLD', 'TECH_FLIGHT');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, CanCapture, PurchaseYield, PseudoYieldType, IgnoreMoves, PrereqTech, Stackable, PrereqDistrict, CanTargetAir) 
VALUES ('UNIT_BIPLANE', '430', '6', '3', '4', 'false', 'DOMAIN_AIR', '60', '55', '3', 'FORMATION_CLASS_AIR', 'PROMOTION_CLASS_AIR_FIGHTER', 'ADVISOR_CONQUEST', 'LOC_UNIT_BIPLANE_NAME', 'LOC_UNIT_BIPLANE_DESCRIPTION', 'False', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'true', 'TECH_FLIGHT', 'TRUE', 'DISTRICT_AERODROME', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_INFANTRY', '430', '6', '2', '2', 'true', 'DOMAIN_LAND', '70', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_INFANTRY_NAME', 'LOC_UNIT_INFANTRY_DESCRIPTION', 'YIELD_GOLD', 'TECH_REPLACEABLE_PARTS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, Bombard, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_ARTILLERY', '430', '6', '2', '2', 'false', 'DOMAIN_LAND', '60', '80', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_SIEGE', 'ADVISOR_CONQUEST', 'LOC_UNIT_ARTILLERY_NAME', 'LOC_UNIT_ARTILLERY_DESCRIPTION', 'YIELD_GOLD', 'TECH_STEEL');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, AntiAirCombat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech) 
VALUES ('UNIT_BATTLESHIP', '430', '6', '5', '2', 'true', 'DOMAIN_SEA', '60', '70', '3', '70', 'RESOURCE_COAL', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_BATTLESHIP_NAME', 'LOC_UNIT_BATTLESHIP_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_STEEL');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, AntiAirCombat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqCivic, TraitType) 
VALUES ('UNIT_BRAZILIAN_MINAS_GERAES', '430', '6', '5', '2', 'true', 'DOMAIN_SEA', '70', '80', '3', '75', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_BRAZILIAN_MINAS_GERAES_NAME', 'LOC_UNIT_BRAZILIAN_MINAS_GERAES_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'CIVIC_NATIONALISM', 'TRAIT_CIVILIZATION_UNIT_BRAZILIAN_MINAS_GERAES');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech) 
VALUES ('UNIT_SUBMARINE', '480', '6', '3', '2', 'false', 'DOMAIN_SEA', '65', '75', '2', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RAIDER', 'ADVISOR_CONQUEST', 'LOC_UNIT_SUBMARINE_NAME', 'LOC_UNIT_SUBMARINE_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_ELECTRICITY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, TraitType, PrereqTech) 
VALUES ('UNIT_GERMAN_UBOAT', '430', '6', '3', '3', 'false', 'DOMAIN_SEA', '65', '75', '2', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RAIDER', 'ADVISOR_CONQUEST', 'LOC_UNIT_GERMAN_UBOAT_NAME', 'LOC_UNIT_GERMAN_UBOAT_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TRAIT_CIVILIZATION_UNIT_GERMAN_UBOAT', 'TECH_ELECTRICITY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_AT_CREW', '400', '4', '2', '2', 'true', 'DOMAIN_LAND', '70', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_ANTI_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_AT_CREW_NAME', 'LOC_UNIT_AT_CREW_DESCRIPTION', 'YIELD_GOLD', 'TECH_CHEMISTRY');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_TANK', '480', '6', '4', '2', 'true', 'DOMAIN_LAND', '80', 'RESOURCE_OIL', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_TANK_NAME', 'LOC_UNIT_TANK_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMBUSTION');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, CanCapture, PurchaseYield, PseudoYieldType, IgnoreMoves, PrereqTech, Stackable, PrereqDistrict, CanTargetAir) 
VALUES ('UNIT_FIGHTER', '520', '7', '4', '4', 'false', 'DOMAIN_AIR', '80', '80', '4', 'RESOURCE_ALUMINUM', 'FORMATION_CLASS_AIR', 'PROMOTION_CLASS_AIR_FIGHTER', 'ADVISOR_CONQUEST', 'LOC_UNIT_FIGHTER_NAME', 'LOC_UNIT_FIGHTER_DESCRIPTION', 'False', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'true', 'TECH_ADVANCED_FLIGHT', 'TRUE', 'DISTRICT_AERODROME', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, CanCapture, PurchaseYield, PseudoYieldType, IgnoreMoves, TraitType, PrereqTech, Stackable, PrereqDistrict, CanTargetAir) 
VALUES ('UNIT_AMERICAN_P51', '520', '7', '6', '4', 'false', 'DOMAIN_AIR', '85', '85', '4', 'FORMATION_CLASS_AIR', 'PROMOTION_CLASS_AIR_FIGHTER', 'ADVISOR_CONQUEST', 'LOC_UNIT_AMERICAN_P51_NAME', 'LOC_UNIT_AMERICAN_P51_DESCRIPTION', 'False', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'true', 'TRAIT_CIVILIZATION_UNIT_AMERICAN_P51', 'TECH_ADVANCED_FLIGHT', 'TRUE', 'DISTRICT_AERODROME', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, Bombard, Range, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, IgnoreMoves, PrereqTech, Stackable, PrereqDistrict, CanTargetAir, WMDCapable) 
VALUES ('UNIT_BOMBER', '560', '7', '10', '4', 'false', 'DOMAIN_AIR', '65', '90', '10', 'RESOURCE_ALUMINUM', 'FORMATION_CLASS_AIR', 'PROMOTION_CLASS_AIR_BOMBER', 'ADVISOR_CONQUEST', 'LOC_UNIT_BOMBER_NAME', 'LOC_UNIT_BOMBER_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'true', 'TECH_ADVANCED_FLIGHT', 'TRUE', 'DISTRICT_AERODROME', 'TRUE', 'true');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Range, AntiAirCombat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_ANTIAIR_GUN', '455', '5', '2', '2', 'false', 'DOMAIN_LAND', '1', '70', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_ANTIAIR_GUN_NAME', 'LOC_UNIT_ANTIAIR_GUN_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_MACHINE_GUN', '540', '6', '2', '2', 'false', 'DOMAIN_LAND', '65', '75', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_MACHINE_GUN_NAME', 'LOC_UNIT_MACHINE_GUN_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech, AirSlots) 
VALUES ('UNIT_AIRCRAFT_CARRIER', '540', '7', '3', '2', 'true', 'DOMAIN_SEA', '65', 'RESOURCE_OIL', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_CARRIER', 'ADVISOR_CONQUEST', 'LOC_UNIT_AIRCRAFT_CARRIER_NAME', 'LOC_UNIT_AIRCRAFT_CARRIER_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_COMBINED_ARMS', '2');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, AntiAirCombat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech) 
VALUES ('UNIT_DESTROYER', '540', '7', '4', '2', 'true', 'DOMAIN_SEA', '80', '70', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_DESTROYER_NAME', 'LOC_UNIT_DESTROYER_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_COMBINED_ARMS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech, CanTargetAir) 
VALUES ('UNIT_HELICOPTER', '600', '7', '4', '3', 'true', 'DOMAIN_LAND', '82', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_LIGHT_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_HELICOPTER_NAME', 'LOC_UNIT_HELICOPTER_DESCRIPTION', 'YIELD_GOLD', 'TECH_SYNTHETIC_MATERIALS', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech, WMDCapable) 
VALUES ('UNIT_NUCLEAR_SUBMARINE', '680', '8', '4', '2', 'false', 'DOMAIN_SEA', '80', '85', '2', 'RESOURCE_URANIUM', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RAIDER', 'ADVISOR_CONQUEST', 'LOC_UNIT_NUCLEAR_SUBMARINE_NAME', 'LOC_UNIT_NUCLEAR_SUBMARINE_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_TELECOMMUNICATIONS', 'true');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_MECHANIZED_INFANTRY', '650', '8', '3', '2', 'true', 'DOMAIN_LAND', '85', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_MECHANIZED_INFANTRY_NAME', 'LOC_UNIT_MECHANIZED_INFANTRY_DESCRIPTION', 'YIELD_GOLD', 'TECH_SATELLITES');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, Bombard, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_ROCKET_ARTILLERY', '680', '8', '2', '3', 'false', 'DOMAIN_LAND', '70', '95', '3', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_SIEGE', 'ADVISOR_CONQUEST', 'LOC_UNIT_ROCKET_ARTILLERY_NAME', 'LOC_UNIT_ROCKET_ARTILLERY_DESCRIPTION', 'YIELD_GOLD', 'TECH_GUIDANCE_SYSTEMS');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Range, AntiAirCombat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech, CanTargetAir) 
VALUES ('UNIT_MOBILE_SAM', '590', '7', '2', '2', 'false', 'DOMAIN_LAND', '1', '80', 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_MOBILE_SAM_NAME', 'LOC_UNIT_MOBILE_SAM_DESCRIPTION', 'YIELD_GOLD', 'TECH_GUIDANCE_SYSTEMS', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, CanCapture, PurchaseYield, PseudoYieldType, IgnoreMoves, PrereqTech, Stackable, PrereqDistrict, CanTargetAir) 
VALUES ('UNIT_JET_FIGHTER', '650', '8', '5', '5', 'false', 'DOMAIN_AIR', '90', '85', '5', 'RESOURCE_ALUMINUM', 'FORMATION_CLASS_AIR', 'PROMOTION_CLASS_AIR_FIGHTER', 'ADVISOR_CONQUEST', 'LOC_UNIT_JET_FIGHTER_NAME', 'LOC_UNIT_JET_FIGHTER_DESCRIPTION', 'False', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'true', 'TECH_LASERS', 'TRUE', 'DISTRICT_AERODROME', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, Bombard, Range, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, CanCapture, PurchaseYield, PseudoYieldType, IgnoreMoves, PrereqTech, Stackable, PrereqDistrict, CanTargetAir, WMDCapable) 
VALUES ('UNIT_JET_BOMBER', '700', '8', '15', '5', 'false', 'DOMAIN_AIR', '70', '100', '15', 'RESOURCE_ALUMINUM', 'FORMATION_CLASS_AIR', 'PROMOTION_CLASS_AIR_BOMBER', 'ADVISOR_CONQUEST', 'LOC_UNIT_JET_BOMBER_NAME', 'LOC_UNIT_JET_BOMBER_DESCRIPTION', 'False', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'true', 'TECH_STEALTH_TECHNOLOGY', 'TRUE', 'DISTRICT_AERODROME', 'TRUE', 'true');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, AntiAirCombat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech, CanTargetAir) 
VALUES ('UNIT_MISSILE_CRUISER', '680', '8', '4', '3', 'true', 'DOMAIN_SEA', '70', '85', '3', '90', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_MISSILE_CRUISER_NAME', 'LOC_UNIT_MISSILE_CRUISER_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_LASERS', 'TRUE');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_MODERN_AT', '580', '8', '2', '2', 'true', 'DOMAIN_LAND', '80', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_ANTI_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_MODERN_AT_NAME', 'LOC_UNIT_MODERN_AT_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMPOSITES');
 
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, StrategicResource, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech) 
VALUES ('UNIT_MODERN_ARMOR', '680', '8', '4', '2', 'true', 'DOMAIN_LAND', '90', 'RESOURCE_URANIUM', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_MODERN_ARMOR_NAME', 'LOC_UNIT_MODERN_ARMOR_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMPOSITES');


-- Rise & Fall
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech) 
VALUES ('UNIT_SPEC_OPS', '3', '520', 'ADVISOR_CONQUEST', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SPEC_OPS_NAME', 'LOC_UNIT_SPEC_OPS_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', '7', '60', '65', '2', 'TECH_PLASTICS');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqTech) 
VALUES ('UNIT_DRONE', '3', '420', 'ADVISOR_CONQUEST', '5', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_DRONE_NAME', 'LOC_UNIT_DRONE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', '3', 'TECH_COMPUTERS');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech) 
VALUES ('UNIT_PIKE_AND_SHOT', '2', '250', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_PIKE_AND_SHOT_NAME', 'LOC_UNIT_PIKE_AND_SHOT_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '4', '55', 'TECH_METAL_CASTING', 'TECH_COMBINED_ARMS');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, DOMAIN, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqTech) 
VALUES ('UNIT_SUPPLY_CONVOY', '4', '450', 'ADVISOR_CONQUEST', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_SUPPLY_CONVOY_NAME', 'LOC_UNIT_SUPPLY_CONVOY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', '2', 'TECH_COMBUSTION');


-- Rise & Fall Uniques
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, PrereqTech, TraitType) 
VALUES ('UNIT_ZULU_IMPI', '2', '125', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ZULU_IMPI_NAME', 'LOC_UNIT_ZULU_IMPI_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '1', '41', 'TECH_COMPOSITES', 'TECH_MILITARY_TACTICS', 'TRAIT_CIVILIZATION_UNIT_ZULU_IMPI');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType) 
VALUES ('UNIT_KOREAN_HWACHA', '2', '250', 'ADVISOR_CONQUEST', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_KOREAN_HWACHA_NAME', 'LOC_UNIT_KOREAN_HWACHA_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '3', '45', '60', '2', 'TECH_GUNPOWDER', 'TECH_ADVANCED_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_KOREAN_HWACHA');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, TraitType) 
VALUES ('UNIT_SCOTTISH_HIGHLANDER', '3', '380', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SCOTTISH_HIGHLANDER_NAME', 'LOC_UNIT_SCOTTISH_HIGHLANDER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', '5', '50', '65', '1', 'TECH_RIFLING', 'TRAIT_CIVILIZATION_UNIT_SCOTTISH_HIGHLANDER');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, RangedCombat, Range, TraitType) 
VALUES ('UNIT_DE_ZEVEN_PROVINCIEN', '4', '280', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_DE_ZEVEN_PROVINCIEN_NAME', 'LOC_UNIT_DE_ZEVEN_PROVINCIEN_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_RANGED', '5', '50', 'TECH_SQUARE_RIGGING', 'TECH_LASERS', '60', '2', 'TRAIT_CIVILIZATION_UNIT_DUTCH_ZEVEN_PROVINCIEN');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType) 
VALUES ('UNIT_MONGOLIAN_KESHIG', '4', '180', 'ADVISOR_CONQUEST', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MONGOLIAN_KESHIG_NAME', 'LOC_UNIT_MONGOLIAN_KESHIG_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '3', '30', '40', '2', 'TECH_STIRRUPS', 'TECH_ADVANCED_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_MONGOLIAN_KESHIG');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType) 
VALUES ('UNIT_GEORGIAN_KHEVSURETI', '2', '180', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GEORGIAN_KHEVSURETI_NAME', 'LOC_UNIT_GEORGIAN_KHEVSURETI_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '3', '40', 'TECH_MILITARY_TACTICS', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_GEORGIAN_KHEVSURETI');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType) 
VALUES ('UNIT_MAPUCHE_MALON_RAIDER', '4', '250', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MAPUCHE_MALON_RAIDER_NAME', 'LOC_UNIT_MAPUCHE_MALON_RAIDER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '4', '55', 'TECH_GUNPOWDER', 'TRAIT_CIVILIZATION_UNIT_MAPUCHE_MALON_RAIDER');
 
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Combat, TraitType) 
VALUES ('UNIT_CREE_OKIHTCITAW', '3', '40', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_CREE_OKIHTCITAW_NAME', 'LOC_UNIT_CREE_OKIHTCITAW_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', '20', 'TRAIT_CIVILIZATION_UNIT_CREE_OKIHTCITAW');


-- Steel & Thunder

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech)  
VALUES ('UNIT_DLV_CUIRASSIER', '4', '360', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_CUIRASSIER_NAME', 'LOC_UNIT_CUIRASSIER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '5', '66', 'RESOURCE_NITER', 'TECH_BALLISTICS', 'TECH_COMPOSITES');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_MEDIEVAL_HORSEMAN', '4', '150', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MEDIEVAL_HORSEMAN_NAME', 'LOC_UNIT_MEDIEVAL_HORSEMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '44', 'RESOURCE_HORSES', 'TECH_STIRRUPS', 'TECH_COMPOSITES');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_RIFLEMAN', '2', '350', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_RIFLEMAN_NAME', 'LOC_UNIT_RIFLEMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '64', 'TECH_RIFLING', 'TECH_SATELLITES');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, Bombard, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_TREBUCHET', '2', '200', 'ADVISOR_CONQUEST', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_TREBUCHET_NAME', 'LOC_UNIT_TREBUCHET_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '3', '33', '2', '45', 'TECH_MILITARY_ENGINEERING', 'TECH_BALLISTICS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, PseudoYieldType, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_EXPLORER', '3', '120', 'ADVISOR_GENERIC', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_EXPLORER_NAME', 'LOC_UNIT_EXPLORER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', 'PSEUDOYIELD_UNIT_EXPLORER', '3', '35', 'TECH_CARTOGRAPHY', 'TECH_RIFLING');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, StrategicResource, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_LONGSWORDSMAN', '2', '160', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_LONGSWORDSMAN_NAME', 'LOC_UNIT_LONGSWORDSMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '46', 'RESOURCE_IRON', 'TECH_CASTLES', 'TECH_REPLACEABLE_PARTS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech)
VALUES ('UNIT_DLV_GATLING_GUN', '2', '195', 'ADVISOR_CONQUEST', '2', 'true', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GATLING_GUN_NAME', 'LOC_UNIT_GATLING_GUN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '3', '55', '65', '1', 'TECH_INDUSTRIALIZATION', 'TECH_GUIDANCE_SYSTEMS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech)
VALUES ('UNIT_DLV_MORTAR', '2', '540', 'ADVISOR_CONQUEST', '2', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MORTAR_NAME', 'LOC_UNIT_MORTAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '6', '65', '75', '2', 'TECH_ROCKETRY');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, PrereqTech, Bombard)
VALUES ('UNIT_DLV_SELF_PROPELLED_ARTILLERY', '3', '680', 'ADVISOR_CONQUEST', '3', 'false', 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SELF_PROPELLED_ARTILLERY_NAME', 'LOC_UNIT_SELF_PROPELLED_ARTILLERY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '8', '70', '3', 'TECH_SATELLITES', '95');
