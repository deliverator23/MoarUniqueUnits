
--Units_XP2
CREATE TABLE IF NOT EXISTS Units_XP2 (UnitType VARCHAR, ResourceMaintenanceAmount INTEGER, ResourceCost INTEGER, ResourceMaintenanceType VARCHAR, TourismBomb INTEGER, CanEarnExperience BOOLEAN, TourismBombPossible BOOLEAN, CanFormMilitaryFormation BOOLEAN, MajorCivOnly BOOLEAN);

DELETE FROM TypeTags WHERE Type IN (SELECT Type FROM UnitsToDelete);

DELETE FROM Traits WHERE TraitType IN (SELECT 'TRAIT_CIVILIZATION_'||Type FROM UnitsToDelete);

DELETE FROM CivilizationTraits WHERE TraitType IN (SELECT 'TRAIT_CIVILIZATION_'||Type FROM UnitsToDelete);

DELETE FROM UnitAIInfos WHERE UnitType IN (SELECT Type FROM UnitsToDelete);

DELETE FROM Improvement_ValidBuildUnits WHERE UnitType IN (SELECT Type FROM UnitsToDelete);

DELETE FROM UnitUpgrades WHERE Unit IN (SELECT Type FROM UnitsToDelete);

DELETE FROM UnitReplaces WHERE CivUniqueUnitType IN (SELECT Type FROM UnitsToDelete);

DELETE FROM Units WHERE UnitType IN (SELECT Type FROM UnitsToDelete);

DELETE FROM Types WHERE Type IN (SELECT Type FROM UnitsToDelete);


-- Disable UUs for Civilizations that are not present (DLC)
UPDATE EnabledUniqueUnits SET Enabled = 0
WHERE NOT EXISTS (SELECT 1 FROM Civilizations WHERE Civilizations.CivilizationType = EnabledUniqueUnits.OwnerType)
AND   NOT EXISTS (SELECT 1 FROM Leaders WHERE Leaders.LeaderType = EnabledUniqueUnits.OwnerType);

-- CONDITIONALS (Unit Stuff)

--Types (KIND_UNIT)
INSERT INTO Types (Type, Kind) SELECT  Type, 'KIND_UNIT' FROM EnabledUniqueUnits WHERE Enabled = 1;

--Types (KIND_TRAIT)
INSERT INTO Types (Type, Kind) SELECT 'TRAIT_CIVILIZATION_'||Type, 'KIND_TRAIT' FROM EnabledUniqueUnits WHERE Enabled = 1;

--Traits
INSERT INTO Traits (TraitType, Name) SELECT 'TRAIT_CIVILIZATION_'||Type, 'LOC_'||Type||'_NAME' FROM EnabledUniqueUnits WHERE Enabled = 1;

--Traits
INSERT INTO CivilizationTraits (CivilizationType, TraitType) SELECT OwnerType, 'TRAIT_CIVILIZATION_' || Type FROM EnabledUniqueUnits WHERE Enabled = 1 AND OwnerType LIKE 'CIVILIZATION_%';

INSERT INTO LeaderTraits (LeaderType, TraitType) SELECT OwnerType, 'TRAIT_CIVILIZATION_'||Type FROM EnabledUniqueUnits WHERE Enabled = 1 AND OwnerType = 'LEADER_ELEANOR_ENGLAND';

INSERT INTO LeaderTraits (LeaderType, TraitType) SELECT 'LEADER_ELEANOR_FRANCE', 'TRAIT_CIVILIZATION_'||Type FROM EnabledUniqueUnits WHERE Enabled = 1 AND OwnerType = 'LEADER_ELEANOR_ENGLAND';

--Units_XP2
CREATE TABLE IF NOT EXISTS Units_XP2 (UnitType VARCHAR, ResourceMaintenanceAmount INTEGER, ResourceCost INTEGER, ResourceMaintenanceType VARCHAR, TourismBomb INTEGER, CanEarnExperience BOOLEAN, TourismBombPossible BOOLEAN, CanFormMilitaryFormation BOOLEAN, MajorCivOnly BOOLEAN);

--Units
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '80', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ROMAN_EQUITE_NAME', 'LOC_UNIT_ROMAN_EQUITE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '35', 'TECH_HORSEBACK_RIDING', 'TECH_SYNTHETIC_MATERIALS', 'TRAIT_CIVILIZATION_UNIT_ROMAN_EQUITE'
FROM   Types WHERE Type = 'UNIT_ROMAN_EQUITE';

UPDATE Units SET StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_ROMAN_EQUITE';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_ROMAN_EQUITE';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '150', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SPANISH_JINETE_NAME', 'LOC_UNIT_SPANISH_JINETE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '42', '35', '1', 'TECH_STIRRUPS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_SPANISH_JINETE'
FROM   Types WHERE Type = 'UNIT_SPANISH_JINETE';

UPDATE Units SET StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_SPANISH_JINETE';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_SPANISH_JINETE';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '150', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_RUSSIAN_DRUZHINA_NAME', 'LOC_UNIT_RUSSIAN_DRUZHINA_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '44', 'TECH_STIRRUPS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_RUSSIAN_DRUZHINA'
FROM   Types WHERE Type = 'UNIT_RUSSIAN_DRUZHINA';

UPDATE Units SET StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_RUSSIAN_DRUZHINA';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_RUSSIAN_DRUZHINA';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, RangedCombat, Range, PrereqTech, TraitType)
SELECT Type, '2', '60', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GREEK_PELTAST_NAME', 'LOC_UNIT_GREEK_PELTAST_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '1', '15', 'TECH_BALLISTICS', '25', '2', 'TECH_ARCHERY', 'TRAIT_CIVILIZATION_UNIT_GREEK_PELTAST'
FROM   Types WHERE Type = 'UNIT_GREEK_PELTAST';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_INDIAN_MUGHAL_SOWAR_NAME', 'LOC_UNIT_INDIAN_MUGHAL_SOWAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '2', '48', 'TECH_STIRRUPS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_INDIAN_MUGHAL_SOWAR'
FROM   Types WHERE Type = 'UNIT_INDIAN_MUGHAL_SOWAR';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_INDIAN_MUGHAL_SOWAR';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_INDIAN_MUGHAL_SOWAR';



INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_FRENCH_GENDARME_NAME', 'LOC_UNIT_FRENCH_GENDARME_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '3', '50', 'TECH_STIRRUPS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_FRENCH_GENDARME'
FROM   Types WHERE Type = 'UNIT_FRENCH_GENDARME';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_FRENCH_GENDARME';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_FRENCH_GENDARME';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SCYTHIAN_AMAZON_NAME', 'LOC_UNIT_SCYTHIAN_AMAZON_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '3', '48', 'TECH_STIRRUPS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_SCYTHIAN_AMAZON'
FROM   Types WHERE Type = 'UNIT_SCYTHIAN_AMAZON';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SCYTHIAN_AMAZON';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_SCYTHIAN_AMAZON';



INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_NORWEGIAN_HIRDMAN_NAME', 'LOC_UNIT_NORWEGIAN_HIRDMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '36', 'TECH_IRON_WORKING', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_HIRDMAN'
FROM   Types WHERE Type = 'UNIT_NORWEGIAN_HIRDMAN';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_NORWEGIAN_HIRDMAN';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_NORWEGIAN_HIRDMAN';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqCivic, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '180', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_JAPANESE_SOHEI_NAME', 'LOC_UNIT_JAPANESE_SOHEI_DESCRIPTION', 'YIELD_FAITH', 'PROMOTION_CLASS_MELEE', '1', '42', 'CIVIC_FEUDALISM', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_JAPANESE_SOHEI'
FROM   Types WHERE Type = 'UNIT_JAPANESE_SOHEI';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '180', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ENGLISH_LONGBOWMAN_NAME', 'LOC_UNIT_ENGLISH_LONGBOWMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '3', '30', '40', '2', 'TECH_MACHINERY', 'TECH_SYNTHETIC_MATERIALS', 'TRAIT_CIVILIZATION_UNIT_ENGLISH_LONGBOWMAN'
FROM   Types WHERE Type = 'UNIT_ENGLISH_LONGBOWMAN';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '200', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_CHINESE_CHOKONU_NAME', 'LOC_UNIT_CHINESE_CHOKONU_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '4', '30', '34', '2', 'TECH_MACHINERY', 'TECH_ADVANCED_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_CHINESE_CHOKONU'
FROM   Types WHERE Type = 'UNIT_CHINESE_CHOKONU';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '100', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ARABIAN_CAMEL_ARCHER_NAME', 'LOC_UNIT_ARABIAN_CAMEL_ARCHER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '2', '13', '27', '1', 'TECH_HORSEBACK_RIDING', 'TECH_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_ARABIAN_CAMEL_ARCHER'
FROM   Types WHERE Type = 'UNIT_ARABIAN_CAMEL_ARCHER';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, TraitType, PrereqTech, MandatoryObsoleteTech)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AMERICAN_MINUTEMAN_NAME', 'LOC_UNIT_AMERICAN_MINUTEMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '50', 'TRAIT_CIVILIZATION_UNIT_AMERICAN_MINUTEMAN', 'TECH_GUNPOWDER', 'TECH_SATELLITES'
FROM   Types WHERE Type = 'UNIT_AMERICAN_MINUTEMAN';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_AMERICAN_MINUTEMAN';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_AMERICAN_MINUTEMAN';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, BuildCharges, TraitType)
SELECT Type, '3', '220', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_BRAZILIAN_BANDEIRANTE_NAME', 'LOC_UNIT_BRAZILIAN_BANDEIRANTE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', '4', '46', '60', '1', 'TECH_GUNPOWDER', '1', 'TRAIT_CIVILIZATION_UNIT_BRAZILIAN_BANDEIRANTE'
FROM   Types WHERE Type = 'UNIT_BRAZILIAN_BANDEIRANTE';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '65', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SUMERIAN_PHALANX_NAME', 'LOC_UNIT_SUMERIAN_PHALANX_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '1', '25', 'TECH_MINING', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_SUMERIAN_PHALANX'
FROM   Types WHERE Type = 'UNIT_SUMERIAN_PHALANX';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '280', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER_NAME', 'LOC_UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '64', 'TECH_RIFLING', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER'
FROM   Types WHERE Type = 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '350', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_INDIAN_SEPOY_NAME', 'LOC_UNIT_INDIAN_SEPOY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '64', 'TECH_RIFLING', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_INDIAN_SEPOY'
FROM   Types WHERE Type = 'UNIT_INDIAN_SEPOY';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_INDIAN_SEPOY';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_INDIAN_SEPOY';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
SELECT Type, '3', '660', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_KONGO_GARDE_REPUBLICAINE_NAME', 'LOC_UNIT_KONGO_GARDE_REPUBLICAINE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '8', '90', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_KONGO_GARDE_REPUBLICAINE'
FROM   Types WHERE Type = 'UNIT_KONGO_GARDE_REPUBLICAINE';

UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_KONGO_GARDE_REPUBLICAINE';
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) SELECT UnitType, 1, 'RESOURCE_OIL', 1
FROM Units WHERE  UnitType = 'UNIT_KONGO_GARDE_REPUBLICAINE';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '90', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_EGYPTIAN_KHOPESH_NAME', 'LOC_UNIT_EGYPTIAN_KHOPESH_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '36', 'TECH_IRON_WORKING', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_EGYPTIAN_KHOPESH'
FROM   Types WHERE Type = 'UNIT_EGYPTIAN_KHOPESH';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_EGYPTIAN_KHOPESH';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_EGYPTIAN_KHOPESH';



INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '250', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SPANISH_TERCIO_NAME', 'LOC_UNIT_SPANISH_TERCIO_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '4', '60', 'TECH_GUNPOWDER', 'TECH_ROCKETRY', 'TRAIT_CIVILIZATION_UNIT_SPANISH_TERCIO'
FROM   Types WHERE Type = 'UNIT_SPANISH_TERCIO';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
SELECT Type, '4', '540', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GERMAN_PANZER_NAME', 'LOC_UNIT_GERMAN_PANZER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '8', '80', 'TECH_COMBUSTION', 'TRAIT_CIVILIZATION_UNIT_GERMAN_PANZER'
FROM   Types WHERE Type = 'UNIT_GERMAN_PANZER';

UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_GERMAN_PANZER';
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) SELECT UnitType, 1, 'RESOURCE_OIL', 1
FROM Units WHERE  UnitType = 'UNIT_GERMAN_PANZER';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
SELECT Type, '4', '460', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_RUSSIAN_T34_NAME', 'LOC_UNIT_RUSSIAN_T34_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '5', '80', 'TECH_COMBUSTION', 'TRAIT_CIVILIZATION_UNIT_RUSSIAN_T34'
FROM   Types WHERE Type = 'UNIT_RUSSIAN_T34';

UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_RUSSIAN_T34';
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) SELECT UnitType, 1, 'RESOURCE_OIL', 1
FROM Units WHERE  UnitType = 'UNIT_RUSSIAN_T34';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Combat, TraitType)
SELECT Type, '3', '30', 'ADVISOR_GENERIC', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SCYTHIAN_AMAZON_SCOUT_NAME', 'LOC_UNIT_SCYTHIAN_AMAZON_SCOUT_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_EXPLORER', 'PROMOTION_CLASS_RECON', '15', 'TRAIT_CIVILIZATION_UNIT_SCYTHIAN_AMAZON_SCOUT'
FROM   Types WHERE Type = 'UNIT_SCYTHIAN_AMAZON_SCOUT';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, PrereqTech, Bombard, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ROMAN_ONAGER_NAME', 'LOC_UNIT_ROMAN_ONAGER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '2', '23', '2', 'TECH_ENGINEERING', '40', 'TECH_STEEL', 'TRAIT_CIVILIZATION_UNIT_ROMAN_ONAGER'
FROM   Types WHERE Type = 'UNIT_ROMAN_ONAGER';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, AntiAirCombat, TraitType, InitialLevel)
SELECT Type, '5', '460', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_JAPANESE_YAMATO_NAME', 'LOC_UNIT_JAPANESE_YAMATO_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_RANGED', '7', '70', '80', '3', 'TECH_STEEL', '80', 'TRAIT_CIVILIZATION_UNIT_JAPANESE_YAMATO', '2'
FROM   Types WHERE Type = 'UNIT_JAPANESE_YAMATO';

UPDATE Units SET StrategicResource = 'RESOURCE_COAL' WHERE UnitType = 'UNIT_JAPANESE_YAMATO';
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) SELECT UnitType, 1, 'RESOURCE_COAL', 1
FROM Units WHERE  UnitType = 'UNIT_JAPANESE_YAMATO';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '3', '130', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_EGYPTIAN_WAR_GALLEY_NAME', 'LOC_UNIT_EGYPTIAN_WAR_GALLEY_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_RANGED', '2', '25', '30', '2', 'TECH_SHIPBUILDING', 'TECH_STEEL', 'TRAIT_CIVILIZATION_UNIT_EGYPTIAN_WAR_GALLEY'
FROM   Types WHERE Type = 'UNIT_EGYPTIAN_WAR_GALLEY';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, MustPurchase, CostProgressionModel, CostProgressionParam1, PromotionClass, Maintenance, PrereqCivic, TraitType)
SELECT Type, '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_KONGO_MEDICINE_MAN_NAME', 'LOC_UNIT_KONGO_MEDICINE_MAN_DESCRIPTION', 'YIELD_FAITH', 1, 'COST_PROGRESSION_PREVIOUS_COPIES', '20', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MYSTICISM', 'TRAIT_CIVILIZATION_UNIT_KONGO_MEDICINE_MAN'
FROM   Types WHERE Type = 'UNIT_KONGO_MEDICINE_MAN';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '240', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_FRENCH_MARINE_NAME', 'LOC_UNIT_FRENCH_MARINE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '55', 'TECH_GUNPOWDER', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_FRENCH_MARINE'
FROM   Types WHERE Type = 'UNIT_FRENCH_MARINE';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_FRENCH_MARINE';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_FRENCH_MARINE';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '350', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GREEK_ARMATOLOS_NAME', 'LOC_UNIT_GREEK_ARMATOLOS_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '64', 'TECH_RIFLING', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_GREEK_ARMATOLOS'
FROM   Types WHERE Type = 'UNIT_GREEK_ARMATOLOS';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_GREEK_ARMATOLOS';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_GREEK_ARMATOLOS';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqCivic, TraitType)
SELECT Type, '2', '100', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_CHINESE_SHIGONG_NAME', 'LOC_UNIT_CHINESE_SHIGONG_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MILITARY_TRAINING', 'TRAIT_CIVILIZATION_UNIT_CHINESE_SHIGONG'
FROM   Types WHERE Type = 'UNIT_CHINESE_SHIGONG';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ARABIAN_GHAZI_NAME', 'LOC_UNIT_ARABIAN_GHAZI_DESCRIPTION', 'YIELD_FAITH', 'PROMOTION_CLASS_MELEE', '2', '46', 'TECH_CASTLES', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_ARABIAN_GHAZI'
FROM   Types WHERE Type = 'UNIT_ARABIAN_GHAZI';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_ARABIAN_GHAZI';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_ARABIAN_GHAZI';



INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, MustPurchase, CostProgressionModel, CostProgressionParam1, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '80', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GERMAN_LANDSKNECHT_NAME', 1, 'COST_PROGRESSION_PREVIOUS_COPIES', '13', 'LOC_UNIT_GERMAN_LANDSKNECHT_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '3', '45', 'TECH_MILITARY_TACTICS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_GERMAN_LANDSKNECHT'
FROM   Types WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, CanTargetAir, TraitType, StrategicResource)
SELECT Type, '4', '600', 'ADVISOR_CONQUEST', '3', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AMERICAN_AH64_APACHE_NAME', 'LOC_UNIT_AMERICAN_AH64_APACHE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '7', '85', 'TECH_SYNTHETIC_MATERIALS', 1, 'TRAIT_CIVILIZATION_UNIT_AMERICAN_AH64_APACHE', 'RESOURCE_ALUMINUM'
FROM   Types WHERE Type = 'UNIT_AMERICAN_AH64_APACHE';

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT 'UNIT_AMERICAN_AH64_APACHE', ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM Units_XP2, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_AMERICAN_AH64_APACHE'
AND   Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqCivic, TraitType, MandatoryObsoleteTech)
SELECT Type, '2', '100', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_NORWEGIAN_ULFHEDNAR_NAME', 'LOC_UNIT_NORWEGIAN_ULFHEDNAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MYSTICISM', 'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_ULFHEDNAR', 'TECH_GUNPOWDER'
FROM   Types WHERE Type = 'UNIT_NORWEGIAN_ULFHEDNAR';


-- Even Moar Units
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
SELECT Type, '4', '650', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AUSTRALIAN_SASR_NAME', 'LOC_UNIT_AUSTRALIAN_SASR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '8', '91', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_AUSTRALIAN_SASR'
FROM   Types WHERE Type = 'UNIT_AUSTRALIAN_SASR';

UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_AUSTRALIAN_SASR';
INSERT INTO Units_XP2 (UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount) SELECT UnitType, 1, 'RESOURCE_OIL', 1
FROM Units WHERE  UnitType = 'UNIT_AUSTRALIAN_SASR';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '90', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AZTEC_JAGUAR_NAME', 'LOC_UNIT_AZTEC_JAGUAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '34', 'TECH_IRON_WORKING', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_AZTEC_JAGUAR'
FROM   Types WHERE Type = 'UNIT_AZTEC_JAGUAR';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, CostProgressionModel, CostProgressionParam1, PromotionClass, Maintenance, PrereqCivic, TraitType)
SELECT Type, '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_AZTEC_WARRIOR_PRIEST_NAME', 'LOC_UNIT_AZTEC_WARRIOR_PRIEST_DESCRIPTION', 'YIELD_FAITH', 'COST_PROGRESSION_PREVIOUS_COPIES', '20', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MYSTICISM', 'TRAIT_CIVILIZATION_UNIT_AZTEC_WARRIOR_PRIEST'
FROM   Types WHERE Type = 'UNIT_AZTEC_WARRIOR_PRIEST';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, Range, PrereqTech, Bombard, TraitType)
SELECT Type, '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MACEDONIAN_BALLISTA_NAME', 'LOC_UNIT_MACEDONIAN_BALLISTA_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '2', '23', 'TECH_STEEL', '2', 'TECH_ENGINEERING', '35', 'TRAIT_CIVILIZATION_UNIT_MACEDONIAN_BALLISTA'
FROM   Types WHERE Type = 'UNIT_MACEDONIAN_BALLISTA';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '2', '65', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MACEDONIAN_PEZHETAIROS_NAME', 'LOC_UNIT_MACEDONIAN_PEZHETAIROS_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '1', '28', 'TECH_COMPOSITES', 'TECH_BRONZE_WORKING', 'TRAIT_CIVILIZATION_UNIT_MACEDONIAN_PEZHETAIROS'
FROM   Types WHERE Type = 'UNIT_MACEDONIAN_PEZHETAIROS';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '100', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_PERSIAN_CATAPHRACT_NAME', 'LOC_UNIT_PERSIAN_CATAPHRACT_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '2', '39', 'TECH_HORSEBACK_RIDING',  'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_PERSIAN_CATAPHRACT'
FROM   Types WHERE Type = 'UNIT_PERSIAN_CATAPHRACT';

UPDATE Units SET StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_PERSIAN_CATAPHRACT';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_PERSIAN_CATAPHRACT';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '3', '65', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_PERSIAN_WARSHIP_NAME', 'LOC_UNIT_PERSIAN_WARSHIP_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_MELEE', '1', '25', 'TECH_STEAM_POWER', 'TECH_SAILING', 'TRAIT_CIVILIZATION_UNIT_PERSIAN_WARSHIP'
FROM   Types WHERE Type = 'UNIT_PERSIAN_WARSHIP';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '180', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_POLISH_CHOSEN_INFANTRY_NAME', 'LOC_UNIT_POLISH_CHOSEN_INFANTRY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '3', '55', 'TECH_GUNPOWDER',  'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_POLISH_CHOSEN_INFANTRY'
FROM   Types WHERE Type = 'UNIT_POLISH_CHOSEN_INFANTRY';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_POLISH_CHOSEN_INFANTRY';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_POLISH_CHOSEN_INFANTRY';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
SELECT Type, '5', '330', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_POLISH_UHLAN_NAME', 'LOC_UNIT_POLISH_UHLAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '5', '62', 'TECH_MILITARY_SCIENCE', 'TRAIT_CIVILIZATION_UNIT_POLISH_UHLAN'
FROM   Types WHERE Type = 'UNIT_POLISH_UHLAN';

UPDATE Units SET StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_POLISH_UHLAN';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_POLISH_UHLAN';



-- R&F/DLC Units
INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '120', '3', '4', '2', 1, 'DOMAIN_LAND', '38', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT_NAME', 'LOC_UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT_DESCRIPTION', 'YIELD_GOLD', 'TECH_BALLISTICS', 'TECH_HORSEBACK_RIDING', 'TRAIT_CIVILIZATION_UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT'
FROM   Types WHERE Type = 'UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, Name, Description, PurchaseYield, PrereqCivic, TraitType)
SELECT Type, '100', '2', '3', '2', 1, 'DOMAIN_LAND', '35', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MONK', 'LOC_UNIT_INDONESIAN_KRIS_SWORDSMAN_NAME', 'LOC_UNIT_INDONESIAN_KRIS_SWORDSMAN_DESCRIPTION', 'YIELD_FAITH', 'CIVIC_THEOLOGY', 'TRAIT_CIVILIZATION_UNIT_INDONESIAN_KRIS_SWORDSMAN'
FROM   Types WHERE Type = 'UNIT_INDONESIAN_KRIS_SWORDSMAN';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_INDONESIAN_KRIS_SWORDSMAN';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_INDONESIAN_KRIS_SWORDSMAN';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '65', '1', '3', '2', 1, 'DOMAIN_SEA', '25', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_KHMER_WAR_CANOE_NAME', 'LOC_UNIT_KHMER_WAR_CANOE_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_STEAM_POWER', 'TECH_SAILING', 'TRAIT_CIVILIZATION_UNIT_KHMER_WAR_CANOE'
FROM   Types WHERE Type = 'UNIT_KHMER_WAR_CANOE';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '240', '4', '5', '3', 1, 'DOMAIN_SEA', '55', 'FORMATION_CLASS_NAVAL', 'PROMOTION_CLASS_NAVAL_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_KOREAN_TURTLE_SHIP_NAME', 'LOC_UNIT_KOREAN_TURTLE_SHIP_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'TECH_COMBINED_ARMS', 'TECH_CARTOGRAPHY', 'TRAIT_CIVILIZATION_UNIT_KOREAN_TURTLE_SHIP'
FROM   Types WHERE Type = 'UNIT_KOREAN_TURTLE_SHIP';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '120', '2', '2', '2', 1, 'DOMAIN_LAND', '55', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_MELEE', 'ADVISOR_CONQUEST', 'LOC_UNIT_DUTCH_SCHUTTERIJ_NAME', 'LOC_UNIT_DUTCH_SCHUTTERIJ_DESCRIPTION', 'YIELD_GOLD', 'TECH_ADVANCED_BALLISTICS', 'TECH_GUNPOWDER', 'TRAIT_CIVILIZATION_UNIT_DUTCH_SCHUTTERIJ'
FROM   Types WHERE Type = 'UNIT_DUTCH_SCHUTTERIJ';

UPDATE Units SET StrategicResource = 'RESOURCE_NITER' WHERE UnitType = 'UNIT_DUTCH_SCHUTTERIJ';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_DUTCH_SCHUTTERIJ';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat,  FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '180', '3', '4', '2', 1, 'DOMAIN_LAND', '48', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_HEAVY_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_GEORGIAN_TADZREULI_NAME', 'LOC_UNIT_GEORGIAN_TADZREULI_DESCRIPTION', 'YIELD_FAITH', 'TECH_COMPOSITES', 'TECH_STIRRUPS', 'TRAIT_CIVILIZATION_UNIT_GEORGIAN_TADZREULI'
FROM   Types WHERE Type = 'UNIT_GEORGIAN_TADZREULI';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_GEORGIAN_TADZREULI';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_GEORGIAN_TADZREULI';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PrereqTech, TraitType)
SELECT Type, '330', '5', '5', '2', 1, 'DOMAIN_LAND', '62', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_LIGHT_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_CREE_OTEHTAPIW_NAME', 'LOC_UNIT_CREE_OTEHTAPIW_DESCRIPTION', 'YIELD_GOLD', 'TECH_MILITARY_SCIENCE', 'TRAIT_CIVILIZATION_UNIT_CREE_OTEHTAPIW'
FROM   Types WHERE Type = 'UNIT_CREE_OTEHTAPIW';

UPDATE Units SET StrategicResource = 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_CREE_OTEHTAPIW';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_CREE_OTEHTAPIW';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '160', '2', '2', '2', 1, 'DOMAIN_LAND', '45', '33', '1', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_ANTI_CAVALRY', 'ADVISOR_CONQUEST', 'LOC_UNIT_MAPUCHE_GUERILLA_NAME', 'LOC_UNIT_MAPUCHE_GUERILLA_DESCRIPTION', 'YIELD_GOLD', 'TECH_COMPOSITES', 'TECH_MILITARY_TACTICS', 'TRAIT_CIVILIZATION_UNIT_MAPUCHE_GUERILLA'
FROM   Types WHERE Type = 'UNIT_MAPUCHE_GUERILLA';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SCOTTISH_GALLOWGLASS_NAME', 'LOC_UNIT_SCOTTISH_GALLOWGLASS_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '46', 'TECH_CASTLES', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_SCOTTISH_GALLOWGLASS'
FROM   Types WHERE Type = 'UNIT_SCOTTISH_GALLOWGLASS';

UPDATE Units SET StrategicResource = 'RESOURCE_IRON' WHERE UnitType = 'UNIT_SCOTTISH_GALLOWGLASS';
INSERT INTO Units_XP2 (UnitType, ResourceCost) SELECT UnitType, 10 FROM Units WHERE  UnitType = 'UNIT_SCOTTISH_GALLOWGLASS';


INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, Bombard, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type,  '2', '200', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MONGOLIAN_HUI_HUI_PAO_NAME', 'LOC_UNIT_MONGOLIAN_HUI_HUI_PAO_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '3', '38', '2', '50', 'TECH_MILITARY_ENGINEERING', 'TECH_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_MONGOLIAN_HUI_HUI_PAO'
FROM   Types WHERE Type = 'UNIT_MONGOLIAN_HUI_HUI_PAO';


INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Combat, RangedCombat, Range, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, MandatoryObsoleteTech, PrereqTech, TraitType)
SELECT Type, '60', '1', '2', '2', 0, 'DOMAIN_LAND', '20', '25', '2', 'FORMATION_CLASS_LAND_COMBAT', 'PROMOTION_CLASS_RANGED', 'ADVISOR_CONQUEST', 'LOC_UNIT_ZULU_ASSEGAI_NAME', 'LOC_UNIT_ZULU_ASSEGAI_DESCRIPTION', 'YIELD_GOLD', 'TECH_BALLISTICS', 'TECH_ARCHERY', 'TRAIT_CIVILIZATION_UNIT_ZULU_ASSEGAI'
FROM   Types WHERE Type = 'UNIT_ZULU_ASSEGAI';


-- Gathering Storm Units
INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_CANADA_HMCS_HAIDA'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM Units_XP2, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_CANADA_HMCS_HAIDA'
AND   Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves + 2, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_HUNGARY_KALANDOZO'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM Units_XP2, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_HUNGARY_KALANDOZO'
AND   Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves + 1, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_INCA_CHASQUI'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM Units_XP2, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_INCA_CHASQUI'
AND   Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_MALI_SOFA'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_MALI_SOFA'
AND    Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND    EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat - 5, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_MAORI_TUPARA'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_MAORI_TUPARA'
AND    Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND    EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat + 2, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_OTTOMAN_SIPAHI'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_OTTOMAN_SIPAHI'
AND    Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND    EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves + 1, 30, 31, 1, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY'
AND    Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND    EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat + 5, RangedCombat + 5, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_ENGLISH_SHIP_OF_THE_LINE'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_ENGLISH_SHIP_OF_THE_LINE'
AND    Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND    EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_SWEDEN_HAKKAPELIITTA'
AND   Units.UnitType = EnabledUniqueUnits.DefaultReplaces
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_SWEDEN_HAKKAPELIITTA'
AND    Units_XP2.UnitType = EnabledUniqueUnits.DefaultReplaces
AND    EnabledUniqueUnits.Enabled = 1;


INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_ELEANOR_TEMPLAR'
AND   Units.UnitType = EnabledUniqueUnits.UnitAiBaseUnit
AND   EnabledUniqueUnits.Enabled = 1;

UPDATE Units SET Combat = 46, Maintenance = 2, Cost = 160, PrereqTech = 'TECH_CASTLES', MandatoryObsoleteTech = 'TECH_REPLACEABLE_PARTS', PurchaseYield = 'YIELD_FAITH' WHERE UnitType = 'UNIT_ELEANOR_TEMPLAR';

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, 10, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_ELEANOR_TEMPLAR'
AND    Units_XP2.UnitType = EnabledUniqueUnits.UnitAiBaseUnit
AND    EnabledUniqueUnits.Enabled = 1;

-- New Frontiers UUs

INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, 46, RangedCombat, Range, Bombard, Domain, FormationClass, 160, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, 'TECH_CASTLES', PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, 2, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, 'TECH_REPLACEABLE_PARTS', MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_MAYAN_HOLKAN'
AND   Units.UnitType = 'UNIT_SWORDSMAN'
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_MAYAN_HOLKAN'
AND    Units_XP2.UnitType = 'UNIT_SWORDSMAN'
AND    EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, 64, RangedCombat, Range, Bombard, Domain, FormationClass, 310, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, 'TECH_RIFLING', PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, 4, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, 'TECH_SATELLITES', MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_COLOMBIAN_BRITISH_LEGION'
AND   Units.UnitType = 'UNIT_MUSKETMAN'
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_COLOMBIAN_BRITISH_LEGION'
AND    Units_XP2.UnitType = 'UNIT_MUSKETMAN'
AND    EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, 4, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_GAUL_CARRUS'
AND   Units.UnitType = 'UNIT_HEAVY_CHARIOT'
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_GAUL_CARRUS'
AND    Units_XP2.UnitType = 'UNIT_HEAVY_CHARIOT'
AND    EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, 64, RangedCombat, Range, Bombard, Domain, FormationClass, 310, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, 'TECH_RIFLING', PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, 4, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, 'TECH_SATELLITES', MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_ETHIOPIAN_MEHAL_SEFARI'
AND   Units.UnitType = 'UNIT_MUSKETMAN'
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_ETHIOPIAN_MEHAL_SEFARI'
AND    Units_XP2.UnitType = 'UNIT_MUSKETMAN'
AND    EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units (UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion)
SELECT EnabledUniqueUnits.Type, 'LOC_'||EnabledUniqueUnits.Type||'_NAME', BaseSightRange, BaseMoves, 48, RangedCombat, Range, Bombard, Domain, FormationClass, 160, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_'||EnabledUniqueUnits.Type||'_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_CIVILIZATION_'||EnabledUniqueUnits.Type, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, 'TECH_CASTLES', PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, 2, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, 'TECH_REPLACEABLE_PARTS', MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion
FROM Units, EnabledUniqueUnits
WHERE EnabledUniqueUnits.Type = 'UNIT_BYZANTINE_VARANGIAN_GUARD'
AND   Units.UnitType = 'UNIT_SWORDSMAN'
AND   EnabledUniqueUnits.Enabled = 1;

INSERT INTO Units_XP2 (UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly)
SELECT EnabledUniqueUnits.Type, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly
FROM   Units_XP2, EnabledUniqueUnits
WHERE  EnabledUniqueUnits.Type = 'UNIT_BYZANTINE_VARANGIAN_GUARD'
AND    Units_XP2.UnitType = 'UNIT_SWORDSMAN'
AND    EnabledUniqueUnits.Enabled = 1;
-- Units - End


INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT Type, DefaultReplaces FROM EnabledUniqueUnits WHERE Enabled = 1 AND DefaultReplaces IS NOT NULL;

INSERT INTO UnitUpgrades (Unit, UpgradeUnit) SELECT Type, DefaultUpgrade FROM EnabledUniqueUnits WHERE Enabled = 1 AND DefaultUpgrade IS NOT NULL;

INSERT INTO UnitAIInfos (UnitType, AiType) SELECT EnabledUniqueUnits.Type, UnitAiInfos.AiType FROM UnitAiInfos, EnabledUniqueUnits WHERE UnitAiInfos.UnitType = EnabledUniqueUnits.UnitAiBaseUnit AND EnabledUniqueUnits.Enabled = 1 AND EnabledUniqueUnits.UnitAiBaseUnit IS NOT NULL;

INSERT INTO Tags (Tag, Vocabulary) SELECT replace(Type,'UNIT_','CLASS_'), 'ABILITY_CLASS' FROM EnabledUniqueUnits;

INSERT INTO TypeTags (Type, Tag) SELECT Type, replace(Type,'UNIT_','CLASS_') FROM EnabledUniqueUnits WHERE Enabled = 1;

INSERT INTO TypeTags (Type, Tag) SELECT EnabledUniqueUnits.Type, TypeTags.Tag FROM TypeTags, EnabledUniqueUnits WHERE TypeTags.Tag LIKE 'CLASS_%' AND TypeTags.Type = EnabledUniqueUnits.UnitAiBaseUnit AND EnabledUniqueUnits.Enabled = 1 AND EnabledUniqueUnits.UnitAiBaseUnit IS NOT NULL;

-- Jaguars can capture units as Builders
INSERT INTO TypeTags (Type, Tag) SELECT 'UNIT_AZTEC_JAGUAR', 'CLASS_CAPTURE_WORKER' FROM Civilizations WHERE CivilizationType = 'CIVILIZATION_AZTEC';

--Improvement_ValidBuildUnits
INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType, ConsumesCharge, ValidRepairOnly) SELECT 'IMPROVEMENT_FORT', Type, 1, 0 FROM Types WHERE Type = 'UNIT_BRAZILIAN_BANDEIRANTE';

--Unit_BuildingPrereqs
INSERT INTO Unit_BuildingPrereqs (Unit, PrereqBuilding) SELECT Type, 'BUILDING_BARRACKS' FROM Types WHERE Type = 'UNIT_CHINESE_SHIGONG';



-- UNCONDITIONALS (Abilities, Classes, Modifiers, Requirements)

--Types (KIND_ABILITY)
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MOVE_AFTER_ATTACKING', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_ARMATOLOS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_BANDEIRANTE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CAMEL_ARCHER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_ADDITIONAL_ATTACK', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_DRUZHINA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SWEDEN_HAKKAPELIITTA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_FRENCH_MARINE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GENDARME', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GHAZI', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_HIRDMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_JINETE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_LONGBOWMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MINUTEMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MUGHAL_SOWAR', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PANZER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PELTAST', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PHALANX', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_10_DEFENDER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_5_DEFENDER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SEPOY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_T34', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_TERCIO', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_5_BONUS_VS_DAMAGED', 'KIND_ABILITY');

--DLC
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_BALLISTA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CHOSEN_INFANTRY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_HEAL_ON_VICTORY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_JAGUAR', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PERSIAN_WARSHIP', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PEZHETAIROS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SASR', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_100_PERCENT_FLANKING', 'KIND_ABILITY');

-- R&F/DLC
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_KHMER_WAR_CANOE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_KOREAN_TURTLE_SHIP', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_DUTCH_SCHUTTERIJ', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GEORGIAN_TADZREULI', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CREE_OTEHTAPIW', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MAPUCHE_GUERILLA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SCOTTISH_GALLOWGLASS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MONGOLIAN_HUI_HUI_PAO', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_ZULU_ASSEGAI', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'KIND_ABILITY');

-- Gathering Storm
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE','KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_SOFA_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_IN_FORMATION_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SHIP_OF_THE_LINE_ADJACENCY_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PERC_50_POST_COMBAT_GOLD', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_EQUITE_ADJACENCY_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_5_WHEN_ATTACKING', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_EXTRA_MOVEMENT_ON_SNOW_TUNDRA', 'KIND_ABILITY');

-- New Frontier Pass
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_FULL_STRENGTH_WHEN_DAMAGED_ON_HILLS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_WHEN_ATTACKING_RANGED', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_UNIT_BONUS_VERSUS_CITY_STATES', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GOLD_FROM_CITY_STATES_UNIT_KILLS', 'KIND_ABILITY');

INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_VS_ANTI_CAVALRY', 'KIND_ABILITY'); -- Carrus
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_DISTRICT', 'KIND_ABILITY'); -- Varangian
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_X_VERSUS_STRONGER_UNITS', 'KIND_ABILITY'); -- Mehal


-- Class Abilities
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MOVE_AFTER_ATTACKING', 'CLASS_SCYTHIAN_AMAZON');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'CLASS_AMERICAN_AH64_APACHE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ARMATOLOS', 'CLASS_GREEK_ARMATOLOS');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_BANDEIRANTE', 'CLASS_BRAZILIAN_BANDEIRANTE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CAMEL_ARCHER', 'CLASS_ARABIAN_CAMEL_ARCHER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ADDITIONAL_ATTACK', 'CLASS_CHINESE_CHOKONU');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_DRUZHINA', 'CLASS_RUSSIAN_DRUZHINA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SWEDEN_HAKKAPELIITTA', 'CLASS_SWEDEN_HAKKAPELIITTA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PERC_50_POST_COMBAT_GOLD', 'CLASS_ROMAN_EQUITE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_EQUITE_ADJACENCY_BONUS', 'CLASS_ROMAN_EQUITE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'CLASS_BRAZILIAN_FATHERLAND_VOLUNTEER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_FRENCH_MARINE', 'CLASS_FRENCH_MARINE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'CLASS_KONGO_GARDE_REPUBLICAINE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GENDARME', 'CLASS_FRENCH_GENDARME');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GHAZI', 'CLASS_ARABIAN_GHAZI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_HIRDMAN', 'CLASS_NORWEGIAN_HIRDMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_IGNORE_TERRAIN_COST', 'CLASS_INDIAN_MUGHAL_SOWAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_JINETE', 'CLASS_SPANISH_JINETE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_LONGBOWMAN', 'CLASS_ENGLISH_LONGBOWMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MINUTEMAN', 'CLASS_AMERICAN_MINUTEMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MUGHAL_SOWAR', 'CLASS_INDIAN_MUGHAL_SOWAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PANZER', 'CLASS_GERMAN_PANZER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_5_DEFENDER', 'CLASS_GREEK_PELTAST');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PHALANX', 'CLASS_SUMERIAN_PHALANX');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_10_DEFENDER', 'CLASS_JAPANESE_SOHEI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_NAVAL_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_NAVAL_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SEPOY', 'CLASS_INDIAN_SEPOY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_T34', 'CLASS_RUSSIAN_T34');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_TERCIO', 'CLASS_SPANISH_TERCIO');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_5_BONUS_VS_DAMAGED', 'CLASS_EGYPTIAN_KHOPESH');

-- DLC
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_BALLISTA', 'CLASS_MACEDONIAN_BALLISTA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CHOSEN_INFANTRY', 'CLASS_POLISH_CHOSEN_INFANTRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_JAGUAR', 'CLASS_AZTEC_JAGUAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PERSIAN_WARSHIP', 'CLASS_PERSIAN_WARSHIP');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PEZHETAIROS', 'CLASS_MACEDONIAN_PEZHETAIROS');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_RANGED_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_RECON');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_SIEGE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SASR', 'CLASS_AUSTRALIAN_SASR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_100_PERCENT_FLANKING', 'CLASS_POLISH_UHLAN');

-- R&F/DLC
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT', 'CLASS_NUBIAN_AFRICAN_FOREST_ELEPHANT');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_KHMER_WAR_CANOE', 'CLASS_KHMER_WAR_CANOE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_KOREAN_TURTLE_SHIP', 'CLASS_KOREAN_TURTLE_SHIP');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_DUTCH_SCHUTTERIJ', 'CLASS_DUTCH_SCHUTTERIJ');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GEORGIAN_TADZREULI', 'CLASS_GEORGIAN_TADZREULI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CREE_OTEHTAPIW', 'CLASS_CREE_OTEHTAPIW');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MAPUCHE_GUERILLA', 'CLASS_MAPUCHE_GUERILLA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SCOTTISH_GALLOWGLASS', 'CLASS_SCOTTISH_GALLOWGLASS');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MONGOLIAN_HUI_HUI_PAO', 'CLASS_MONGOLIAN_HUI_HUI_PAO');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ZULU_ASSEGAI', 'CLASS_ZULU_ASSEGAI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_RANGED_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_RECON');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'CLASS_SIEGE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'CLASS_MELEE');

-- Gathering Storm
INSERT INTO TypeTags (Type, Tag) SELECT UnitAbilityType, 'CLASS_CANADA_HMCS_HAIDA' FROM UnitAbilities WHERE UnitAbilityType = 'ABILITY_BIREME_PROTECT_TRADER';
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'CLASS_CANADA_HMCS_HAIDA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_IN_FORMATION_BONUS', 'CLASS_CANADA_HMCS_HAIDA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PERC_50_POST_COMBAT_GOLD', 'CLASS_HUNGARY_KALANDOZO');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE', 'CLASS_HUNGARY_KALANDOZO');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_5_BONUS_VS_DAMAGED','CLASS_MALI_SOFA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SOFA_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_SOFA_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ADDITIONAL_ATTACK', 'CLASS_MAORI_TUPARA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_100_PERCENT_FLANKING', 'CLASS_OTTOMAN_SIPAHI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE', 'CLASS_OTTOMAN_SIPAHI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MOVE_AFTER_ATTACKING', 'CLASS_PHOENICIA_NUMIDIAN_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SHIP_OF_THE_LINE_ADJACENCY_BONUS', 'CLASS_ENGLISH_SHIP_OF_THE_LINE');

INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'CLASS_ELEANOR_TEMPLAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'CLASS_ELEANOR_TEMPLAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_5_WHEN_ATTACKING', 'CLASS_SWEDEN_HAKKAPELIITTA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_EXTRA_MOVEMENT_ON_SNOW_TUNDRA', 'CLASS_SWEDEN_HAKKAPELIITTA');

---- Incan Chasqui - Build Roads
UPDATE Units SET BuildCharges = 2 WHERE UnitType = 'UNIT_INCA_CHASQUI';

INSERT INTO Route_ValidBuildUnits SELECT 'ROUTE_ANCIENT_ROAD', UnitType FROM Units WHERE UnitType = 'UNIT_INCA_CHASQUI';
INSERT INTO Route_ValidBuildUnits SELECT 'ROUTE_MEDIEVAL_ROAD', UnitType FROM Units WHERE UnitType = 'UNIT_INCA_CHASQUI';
INSERT INTO Route_ValidBuildUnits SELECT 'ROUTE_INDUSTRIAL_ROAD', UnitType FROM Units WHERE UnitType = 'UNIT_INCA_CHASQUI';
INSERT INTO Route_ValidBuildUnits SELECT 'ROUTE_MODERN_ROAD', UnitType FROM Units WHERE UnitType = 'UNIT_INCA_CHASQUI';

---- Maori Tupara - Build Pa Improvement
UPDATE Units SET BuildCharges = 1 WHERE UnitType = 'UNIT_MAORI_TUPARA';

INSERT INTO Improvement_ValidBuildUnits  (ImprovementType, UnitType, ConsumesCharge, ValidRepairOnly) SELECT 'IMPROVEMENT_MAORI_PA', UnitType, 1, 0 FROM Units WHERE UnitType = 'UNIT_MAORI_TUPARA';

-- New Frontiers Pass
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_FULL_STRENGTH_WHEN_DAMAGED_ON_HILLS', 'CLASS_COLOMBIAN_BRITISH_LEGION');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_WHEN_ATTACKING_RANGED', 'CLASS_COLOMBIAN_BRITISH_LEGION');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_UNIT_BONUS_VERSUS_CITY_STATES', 'CLASS_MAYAN_HOLKAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GOLD_FROM_CITY_STATES_UNIT_KILLS', 'CLASS_MAYAN_HOLKAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_VS_ANTI_CAVALRY', 'CLASS_GAUL_CARRUS');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_DISTRICT', 'CLASS_BYZANTINE_VARANGIAN_GUARD');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_X_VERSUS_STRONGER_UNITS', 'CLASS_ETHIOPIAN_MEHAL_SEFARI');


-- Abilities
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MOVE_AFTER_ATTACKING', 'LOC_ABILITY_MOVE_AFTER_ATTACKING_NAME', 'LOC_ABILITY_MOVE_AFTER_ATTACKING_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'LOC_ABILITY_AMERICAN_AH64_APACHE_NAME', 'LOC_ABILITY_AMERICAN_AH64_APACHE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_ARMATOLOS', 'LOC_ABILITY_ARMATOLOS_NAME', 'LOC_ABILITY_ARMATOLOS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_BANDEIRANTE', 'LOC_ABILITY_BANDEIRANTE_NAME', 'LOC_ABILITY_BANDEIRANTE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CAMEL_ARCHER', 'LOC_ABILITY_CAMEL_ARCHER_NAME', 'LOC_ABILITY_CAMEL_ARCHER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_ADDITIONAL_ATTACK', 'LOC_ABILITY_ADDITIONAL_ATTACK_NAME', 'LOC_ABILITY_ADDITIONAL_ATTACK_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_DRUZHINA', 'LOC_ABILITY_DRUZHINA_NAME', 'LOC_ABILITY_DRUZHINA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SWEDEN_HAKKAPELIITTA', 'LOC_ABILITY_SWEDEN_HAKKAPELIITTA_NAME', 'LOC_ABILITY_SWEDEN_HAKKAPELIITTA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PERC_50_POST_COMBAT_GOLD', 'LOC_ABILITY_PERC_50_POST_COMBAT_GOLD_NAME', 'LOC_ABILITY_PERC_50_POST_COMBAT_GOLD_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_EQUITE_ADJACENCY_BONUS', 'LOC_ABILITY_EQUITE_ADJACENCY_BONUS_NAME', 'LOC_ABILITY_EQUITE_ADJACENCY_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'LOC_ABILITY_FATHERLAND_VOLUNTEER_NAME', 'LOC_ABILITY_FATHERLAND_VOLUNTEER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_FRENCH_MARINE', 'LOC_ABILITY_FRENCH_MARINE_NAME', 'LOC_ABILITY_FRENCH_MARINE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'LOC_ABILITY_GARDE_REPUBLICAINE_NAME', 'LOC_ABILITY_GARDE_REPUBLICAINE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GENDARME', 'LOC_ABILITY_GENDARME_NAME', 'LOC_ABILITY_GENDARME_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GHAZI', 'LOC_ABILITY_GHAZI_NAME', 'LOC_ABILITY_GHAZI_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_HIRDMAN', 'LOC_ABILITY_HIRDMAN_NAME', 'LOC_ABILITY_HIRDMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_JINETE', 'LOC_ABILITY_JINETE_NAME', 'LOC_ABILITY_JINETE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_LONGBOWMAN', 'LOC_ABILITY_LONGBOWMAN_NAME', 'LOC_ABILITY_LONGBOWMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MINUTEMAN', 'LOC_ABILITY_MINUTEMAN_NAME', 'LOC_ABILITY_MINUTEMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MUGHAL_SOWAR', 'LOC_ABILITY_MUGHAL_SOWAR_NAME', 'LOC_ABILITY_MUGHAL_SOWAR_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PANZER', 'LOC_ABILITY_PANZER_NAME', 'LOC_ABILITY_PANZER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PELTAST', 'LOC_ABILITY_PELTAST', 'LOC_ABILITY_PELTAST_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PHALANX', 'LOC_ABILITY_PHALANX_NAME', 'LOC_ABILITY_PHALANX_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_10_DEFENDER', 'LOC_ABILITY_PLUS_10_DEFENDER_NAME', 'LOC_ABILITY_PLUS_10_DEFENDER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_5_DEFENDER', 'LOC_ABILITY_PLUS_5_DEFENDER_NAME', 'LOC_ABILITY_PLUS_5_DEFENDER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'LOC_ABILITY_RECEIVE_MEDICINE_MAN_BONUS_NAME', 'LOC_ABILITY_RECEIVE_MEDICINE_MAN_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'LOC_ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS_NAME', 'LOC_ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'LOC_ABILITY_RECEIVE_SHIGONG_BONUS', 'LOC_ABILITY_RECEIVE_SHIGONG_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SEPOY', 'LOC_ABILITY_SEPOY_NAME', 'LOC_ABILITY_SEPOY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_T34', 'LOC_ABILITY_T34_NAME', 'LOC_ABILITY_T34_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_TERCIO', 'LOC_ABILITY_TERCIO_NAME', 'LOC_ABILITY_TERCIO_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_5_BONUS_VS_DAMAGED', 'LOC_ABILITY_PLUS_5_BONUS_VS_DAMAGED_NAME', 'LOC_ABILITY_PLUS_5_BONUS_VS_DAMAGED_DESCRIPTION');

--DLC
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SASR', 'LOC_ABILITY_SASR', 'LOC_ABILITY_SASR_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_JAGUAR', 'LOC_ABILITY_JAGUAR', 'LOC_ABILITY_JAGUAR_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'LOC_ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'LOC_ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CHOSEN_INFANTRY', 'LOC_ABILITY_CHOSEN_INFANTRY', 'LOC_ABILITY_CHOSEN_INFANTRY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_100_PERCENT_FLANKING', 'LOC_ABILITY_100_PERCENT_FLANKING', 'LOC_ABILITY_100_PERCENT_FLANKING_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_HEAL_ON_VICTORY', 'LOC_HEAL_ON_VICTORY', 'LOC_HEAL_ON_VICTORY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_BALLISTA', 'LOC_ABILITY_BALLISTA', 'LOC_ABILITY_BALLISTA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PEZHETAIROS', 'LOC_ABILITY_PEZHETAIROS', 'LOC_ABILITY_PEZHETAIROS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PERSIAN_WARSHIP', 'LOC_ABILITY_PERSIAN_WARSHIP', 'LOC_ABILITY_PERSIAN_WARSHIP_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'LOC_ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'LOC_ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS_DESCRIPTION');

-- R&F/DLC
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT','LOC_ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT_NAME','LOC_ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_KHMER_WAR_CANOE','LOC_ABILITY_KHMER_WAR_CANOE_NAME','LOC_ABILITY_KHMER_WAR_CANOE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_KOREAN_TURTLE_SHIP','LOC_ABILITY_KOREAN_TURTLE_SHIP_NAME','LOC_ABILITY_KOREAN_TURTLE_SHIP_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_DUTCH_SCHUTTERIJ','LOC_ABILITY_DUTCH_SCHUTTERIJ_NAME','LOC_ABILITY_DUTCH_SCHUTTERIJ_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GEORGIAN_TADZREULI','LOC_ABILITY_GEORGIAN_TADZREULI_NAME','LOC_ABILITY_GEORGIAN_TADZREULI_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CREE_OTEHTAPIW','LOC_ABILITY_CREE_OTEHTAPIW_NAME','LOC_ABILITY_CREE_OTEHTAPIW_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MAPUCHE_GUERILLA','LOC_ABILITY_MAPUCHE_GUERILLA_NAME','LOC_ABILITY_MAPUCHE_GUERILLA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SCOTTISH_GALLOWGLASS','LOC_ABILITY_SCOTTISH_GALLOWGLASS_NAME','LOC_ABILITY_SCOTTISH_GALLOWGLASS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MONGOLIAN_HUI_HUI_PAO','LOC_ABILITY_MONGOLIAN_HUI_HUI_PAO_NAME','LOC_ABILITY_MONGOLIAN_HUI_HUI_PAO_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_ZULU_ASSEGAI','LOC_ABILITY_ZULU_ASSEGAI_NAME','LOC_ABILITY_ZULU_ASSEGAI_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'LOC_ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS_NAME', 'LOC_ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'LOC_ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'LOC_ABILITY_RECEIVE_HUI_HUI_PAO_BONUS_DESCRIPTION');

-- Gathering Storm
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_5_OTHER_RELIGION_COMBAT_BONUS','LOC_ABILITY_PLUS_5_OTHER_RELIGION_COMBAT_BONUS_NAME','LOC_ABILITY_PLUS_5_OTHER_RELIGION_COMBAT_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE','LOC_ABILITY_LESS_MOVEMENT_PILLAGE_NAME','LOC_ABILITY_LESS_MOVEMENT_PILLAGE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_SOFA_BONUS', 'LOC_ABILITY_RECEIVE_SOFA_BONUS_NAME', 'LOC_ABILITY_RECEIVE_SOFA_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'LOC_ABILITY_PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS_NAME', 'LOC_ABILITY_PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_IN_FORMATION_BONUS', 'LOC_ABILITY_PLUS_X_IN_FORMATION_BONUS_NAME', 'LOC_ABILITY_PLUS_X_IN_FORMATION_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SHIP_OF_THE_LINE_ADJACENCY_BONUS', 'LOC_ABILITY_SHIP_OF_THE_LINE_ADJACENCY_BONUS_NAME', 'LOC_ABILITY_SHIP_OF_THE_LINE_ADJACENCY_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'LOC_ABILITY_PLUS_X_HOLY_SITE_PROXIMITY_BONUS_NAME', 'LOC_ABILITY_PLUS_X_HOLY_SITE_PROXIMITY_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_5_WHEN_ATTACKING', 'LOC_ABILITY_PLUS_5_WHEN_ATTACKING_NAME', 'LOC_ABILITY_PLUS_5_WHEN_ATTACKING_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_EXTRA_MOVEMENT_ON_SNOW_TUNDRA', 'LOC_ABILITY_EXTRA_MOVEMENT_ON_SNOW_TUNDRA_NAME', 'LOC_ABILITY_EXTRA_MOVEMENT_ON_SNOW_TUNDRA_DESCRIPTION');

-- New Frontier Pass
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_FULL_STRENGTH_WHEN_DAMAGED_ON_HILLS', 'LOC_ABILITY_FULL_STRENGTH_WHEN_DAMAGED_ON_HILLS_NAME', 'LOC_ABILITY_FULL_STRENGTH_WHEN_DAMAGED_ON_HILLS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_WHEN_ATTACKING_RANGED', 'LOC_ABILITY_PLUS_X_WHEN_ATTACKING_RANGED_NAME', 'LOC_ABILITY_PLUS_X_WHEN_ATTACKING_RANGED_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_UNIT_BONUS_VERSUS_CITY_STATES', 'LOC_ABILITY_UNIT_BONUS_VERSUS_CITY_STATES_NAME', 'LOC_ABILITY_UNIT_BONUS_VERSUS_CITY_STATES_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GOLD_FROM_CITY_STATES_UNIT_KILLS', 'LOC_ABILITY_GOLD_FROM_CITY_STATES_UNIT_KILLS_NAME', 'LOC_ABILITY_GOLD_FROM_CITY_STATES_UNIT_KILLS_DESCRIPTION');

INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_VS_ANTI_CAVALRY', 'LOC_ABILITY_PLUS_X_VS_ANTI_CAVALRY_NAME', 'LOC_ABILITY_PLUS_X_VS_ANTI_CAVALRY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_DISTRICT', 'LOC_ABILITY_PLUS_X_DISTRICT_NAME', 'LOC_ABILITY_PLUS_X_DISTRICT_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_X_VERSUS_STRONGER_UNITS', 'LOC_ABILITY_PLUS_X_VERSUS_STRONGER_UNITS_NAME', 'LOC_ABILITY_PLUS_X_VERSUS_STRONGER_UNITS_DESCRIPTION');


--RequirementSets
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_MEDICINE_MAN_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS_NOT_DAMAGED', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_SHIGONG_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('NOT_IN_OWNER_TERRITORY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_HEAVY_CAVALRY_REQUIREMENTS_MUU', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_LIGHT_CAVALRY_REQUIREMENTS_MUU', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS_MUU', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLAYER_IS_ATTACKER_REQUIREMENTS_SET', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLAYER_IS_DEFENDER_REQUIREMENTS_SET', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_TUNDRA_OR_SNOW_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_HILLS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_NEXT_TO_LONGBOWMAN_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_NEXT_TO_ASSEGAI_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_WITHIN_1_OF_STEPWELL_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_WITHIN_8_OF_ZIGGURAT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_IS_NOT_DAMAGED_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');

--DLC
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('NON_DISTRICT_REQUIREMENT_SET', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_WARRIOR_PRIEST_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ATTACKING_NON_DISTRICT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ATTACKING_DISTRICT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('DEFENDING_NON_DISTRICT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('DEFENDING_DISTRICT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');

-- R&F/DLC
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_KHMER_WAR_CANOE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_PLAINS_OR_GRASS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_HUI_HUI_PAO_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');

-- Gathering Storm
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_SOFA_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_FRIENDLY_NAVAL_RANGED_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');

-- New Frontier Pass
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ATTACKING_RANGED_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('COMBAT_AGAINST_STRONGER_UNIT_REQUIREMENTS2', 'REQUIREMENTSET_TEST_ALL');


--Requirements
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_MEDICINE_MAN_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_SHIGONG_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_COLONIAL_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_HOLY_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_RECONQUEST_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_TERRITORIAL_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_PLAINS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_PLAINS_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_LEGION', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_LONGBOWMAN', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_ASSEGAI', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_WARRIOR', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('OPPONENT_IS_NOT_DAMAGED_UNIT_REQUIREMENT', 'REQUIREMENT_UNIT_DAMAGE_MINIMUM', 1);
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('UNIT_NOT_IN_OWNER_TERRITORY_REQUIREMENT', 'REQUIREMENT_UNIT_IN_OWNER_TERRITORY', 1);
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('OPPONENT_IS_LIGHT_CAVALRY_REQUIREMENT', 'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES');

--DLC
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('PLOT_IS_NOT_DEFENDED_DISTRICT_REQUIREMENTS', 'REQUIREMENT_PLOT_DISTRICT_IS_DEFENDED', 1);
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_WARRIOR_PRIEST_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('DEFENDER_IS_OCCUPYING_NON_DISTRICT_REQUIREMENT', 'REQUIREMENT_PLOT_HAS_ANY_DISTRICT', 1);
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_PERSIAN_WARSHIP_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');

-- R&F/DLC
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_KHMER_WAR_CANOE_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_HUI_HUI_PAO_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_GRASS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');

-- Gathering Storm
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_SOFA_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_NAVAL_RANGED_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_SNOW', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_SNOW_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');

-- New Frontier Pass
INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_COMBAT_AGAINST_STRONGER_UNIT2', 'REQUIREMENT_OPPONENT_IS_STRONGER');



--RequirementArguments
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_MEDICINE_MAN_REQUIREMENT', 'UnitType', 'UNIT_KONGO_MEDICINE_MAN');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT', 'UnitType', 'UNIT_NORWEGIAN_ULFHEDNAR');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_SHIGONG_REQUIREMENT', 'UnitType', 'UNIT_CHINESE_SHIGONG');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('OPPONENT_IS_NOT_DAMAGED_UNIT_REQUIREMENT', 'MinimumAmount', '1');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_PLAINS', 'TerrainType', 'TERRAIN_PLAINS');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_PLAINS_HILLS', 'TerrainType', 'TERRAIN_PLAINS_HILLS');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_SNOW', 'TerrainType', 'TERRAIN_SNOW');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_SNOW_HILLS', 'TerrainType', 'TERRAIN_SNOW_HILLS');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'ImprovementType', 'IMPROVEMENT_ZIGGURAT');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'MaxRange', '8');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'MinRange', '0');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'ImprovementType', 'IMPROVEMENT_STEPWELL');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'MaxRange', '1');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'MinRange', '0');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_LEGION', 'UnitType', 'UNIT_ROMAN_LEGION');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_LONGBOWMAN', 'UnitType', 'UNIT_ENGLISH_LONGBOWMAN');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_ASSEGAI', 'UnitType', 'UNIT_ZULU_ASSEGAI');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_WARRIOR', 'UnitType', 'UNIT_WARRIOR');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('OPPONENT_IS_LIGHT_CAVALRY_REQUIREMENT', 'UnitPromotionClass', 'PROMOTION_CLASS_LIGHT_CAVALRY');

--DLC
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_WARRIOR_PRIEST_REQUIREMENT', 'UnitType', 'UNIT_AZTEC_WARRIOR_PRIEST');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_PERSIAN_WARSHIP_REQUIREMENT', 'UnitType', 'UNIT_PERSIAN_WARSHIP');

-- R&F/DLC
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_KHMER_WAR_CANOE_REQUIREMENT', 'UnitType', 'UNIT_KHMER_WAR_CANOE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_GRASS', 'TerrainType', 'TERRAIN_GRASS');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_HUI_HUI_PAO_REQUIREMENT', 'UnitType', 'UNIT_MONGOLIAN_HUI_HUI_PAO');

-- Gathering Storm
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_SOFA_REQUIREMENT', 'UnitType', 'UNIT_MALI_SOFA');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_NAVAL_RANGED_REQUIREMENT', 'UnitType', 'UNIT_ENGLISH_SHIP_OF_THE_LINE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENT', 'DistrictType', 'DISTRICT_HOLY_SITE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENT', 'MaxRange', '4');
INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENT', 'MinRange', '0');


--RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_MEDICINE_MAN_REQUIREMENTS', 'ADJACENT_FRIENDLY_MEDICINE_MAN_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS', 'ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_SHIGONG_REQUIREMENTS', 'ADJACENT_FRIENDLY_SHIGONG_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NOT_IN_OWNER_TERRITORY_REQUIREMENTS', 'UNIT_NOT_IN_OWNER_TERRITORY_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_HEAVY_CAVALRY_REQUIREMENTS_MUU', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_HC');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_LIGHT_CAVALRY_REQUIREMENTS_MUU', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS_MUU', 'OPPONENT_IS_LIGHT_CAVALRY_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS_MUU', 'OPPONENT_ANTI_CAVALRY_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS_MUU', 'OPPONENT_IS_PROMOTION_CLASS_MELEE');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_HC');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'OPPONENT_IS_PROMOTION_CLASS_MELEE');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLAYER_IS_ATTACKER_REQUIREMENTS_SET', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLAYER_IS_DEFENDER_REQUIREMENTS_SET', 'PLAYER_IS_DEFENDER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_DESERT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_DESERT_HILLS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_PLAINS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_PLAINS_HILLS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS', 'PLOT_IS_FOREST_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS', 'PLOT_IS_JUNGLE_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_HILLS_REQUIREMENTS', 'PLOT_IS_HILLS_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_LONGBOWMAN_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_LONGBOWMAN');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_ASSEGAI_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_ASSEGAI');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_LEGION');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_WARRIOR');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_WITHIN_1_OF_STEPWELL_REQUIREMENTS', 'REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_WITHIN_8_OF_ZIGGURAT_REQUIREMENTS', 'REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_IS_NOT_DAMAGED_REQUIREMENTS', 'OPPONENT_IS_NOT_DAMAGED_UNIT_REQUIREMENT');


--DLC
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NON_DISTRICT_REQUIREMENT_SET', 'PLOT_IS_NOT_DEFENDED_DISTRICT_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NON_DISTRICT_REQUIREMENT_SET', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_WARRIOR_PRIEST_REQUIREMENTS', 'ADJACENT_FRIENDLY_WARRIOR_PRIEST_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_DISTRICT_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_DISTRICT_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_DISTRICT_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_NON_DISTRICT_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_NON_DISTRICT_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_NON_DISTRICT_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DEFENDING_DISTRICT_REQUIREMENTS', 'PLAYER_IS_DEFENDER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DEFENDING_DISTRICT_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_DISTRICT_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DEFENDING_NON_DISTRICT_REQUIREMENTS', 'PLAYER_IS_DEFENDER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('DEFENDING_NON_DISTRICT_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_NON_DISTRICT_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS', 'ADJACENT_FRIENDLY_PERSIAN_WARSHIP_REQUIREMENT');

-- R&F/DLC
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_KHMER_WAR_CANOE_REQUIREMENTS', 'ADJACENT_FRIENDLY_KHMER_WAR_CANOE_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_HUI_HUI_PAO_REQUIREMENTS', 'ADJACENT_FRIENDLY_HUI_HUI_PAO_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_HUI_HUI_PAO_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_HUI_HUI_PAO_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_DISTRICT_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_PLAINS_OR_GRASS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_GRASS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_PLAINS_OR_GRASS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_PLAINS');

-- Gathering Storm
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_SOFA_REQUIREMENTS', 'ADJACENT_FRIENDLY_SOFA_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_FRIENDLY_NAVAL_RANGED_REQUIREMENTS', 'ADJACENT_FRIENDLY_NAVAL_RANGED_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENTS', 'PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_TUNDRA_OR_SNOW_REQUIREMENTS', 'REQUIRES_PLOT_HAS_SNOW');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_TUNDRA_OR_SNOW_REQUIREMENTS', 'REQUIRES_PLOT_HAS_TUNDRA');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_TUNDRA_OR_SNOW_REQUIREMENTS', 'REQUIRES_PLOT_HAS_SNOW_HILLS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_TUNDRA_OR_SNOW_REQUIREMENTS', 'REQUIRES_PLOT_HAS_TUNDRA_HILLS');

-- New Frontier Pass
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_RANGED_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ATTACKING_RANGED_REQUIREMENTS', 'OPPONENT_RANGED_REQUIREMENT');
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('COMBAT_AGAINST_STRONGER_UNIT_REQUIREMENTS2', 'REQUIRES_COMBAT_AGAINST_STRONGER_UNIT2');



-- Modifiers
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('50_PERCENT_POST_COMBAT_FAITH', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('BANDEIRANTE_POST_COMBAT_CULTURE', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('BANDEIRANTE_POST_COMBAT_GOLD', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PERC_50_POST_COMBAT_GOLD', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'ROUGH_RIDER_PLOT_IS_CAPITAL_CONTINENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('HIRDMAN_POST_COMBAT_CULTURE', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'ROUGH_RIDER_PLOT_IS_CAPITAL_CONTINENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_HEAVY_CAVALRY_REQUIREMENTS_MUU');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_WHEN_DEFENDING_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLAYER_IS_DEFENDER_REQUIREMENTS_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_WHEN_DEFENDING_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLAYER_IS_DEFENDER_REQUIREMENTS_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL', 'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN', 'PLOT_IS_WITHIN_1_OF_STEPWELL_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_HEAVY_CAVALRY_REQUIREMENTS_MUU');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_LIGHT_CAVALRY_REQUIREMENTS_MUU');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'PLOT_IS_NEXT_TO_LONGBOWMAN_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'PLOT_IS_NEXT_TO_ASSEGAI_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_MELEE_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_VERSUS_MELEE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'THRUST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ROUGH_RIDER_PLOT_IS_CAPITAL_CONTINENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_FOREIGN_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'REDCOAT_PLOT_IS_FOREIGN_CONTINENT');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_FOREST_JUNGLE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_HILLS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_HILLS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_NOT_OWNER_TERRITORY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'NOT_IN_OWNER_TERRITORY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'REQUIREMENTS_OPPONENT_IS_OTHER_RELIGION');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_WHEN_ATTACKING_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLAYER_IS_ATTACKER_REQUIREMENTS_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_WITHIN_8_OF_ZIGGURAT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_8_DESERT_PLAINS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_MEDICINE_MAN_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_SHIGONG_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_SHIGONG_EXPERIENCE_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_SHIGONG_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_IS_NOT_DAMAGED_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'VULTURE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_SHIGONG_EXPERIENCE_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER');

-- DLC
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_COMBAT_STRENGTH_NON_DISTRICT', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'NON_DISTRICT_REQUIREMENT_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_DESERT_PLAINS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('JUNGLE_MOVEMENT', 'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_TERRAIN_COST');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_WARRIOR_PRIEST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_WARRIOR_PRIEST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_NO_REDUCTION_DAMAGE');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PLUS_10_HEAL_PER_TURN_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('ONE_HUNDRED_PERCENT_FLANKING_BONUS_MODIFIER', 'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_17_WHEN_ATTACKING_NON_DISTRICT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ATTACKING_NON_DISTRICT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('MINUS_10_WHEN_ATTACKING_DISTRICT_MALUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ATTACKING_DISTRICT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_VERSUS_MELEE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'THRUST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT');


-- R&F/DLC
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_KHMER_WAR_CANOE_AMPHIBIOUS_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_KHMER_WAR_CANOE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_KHMER_WAR_CANOE_AMPHIBIOUS_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_SHORES');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_HUI_HUI_PAO_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_HUI_HUI_PAO_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_HUI_HUI_PAO_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_PLAINS_GRASS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_PLAINS_OR_GRASS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_ON_PLAINS_GRASS', 'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN', 'PLOT_IS_PLAINS_OR_GRASS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_WHEN_DEFENDING_DISTRICT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'DEFENDING_DISTRICT_REQUIREMENTS');

--Gathering Storm
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_SOFA_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_SOFA_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('RECEIVE_SOFA_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'CREEPING_ATTACK_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_IN_FORMATION_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'CONVOY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS_ATTACH', 'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER', 'ADJACENT_FRIENDLY_NAVAL_RANGED_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_WITHIN_X_OF_HOLY_SITE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('EXTRA_MOVEMENT_ON_TUNDRA_OR_SNOW', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 'PLOT_IS_TUNDRA_OR_SNOW_REQUIREMENTS');

-- New Frontier Pass
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('NO_REDUCTION_DAMAGE_ON_HILLS', 'MODIFIER_PLAYER_UNIT_ADJUST_NO_REDUCTION_DAMAGE', 'PLOT_IS_HILLS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_WHEN_ATTACKING_RANGED', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ATTACKING_RANGED_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PERC_100_POST_COMBAT_GOLD_FROM_CITY_STATES', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'REQUIREMENTS_OPPONENT_IS_MINOR_CIV');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_VS_ANTI_CAVALRY', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ANTI_SPEAR_OPPONENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_DISTRICT_ATTACK', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'URBAN_WARFARE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_DISTRICT_DEFEND', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'GARRISON_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_VERSUS_STRONGER_UNITS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'COMBAT_AGAINST_STRONGER_UNIT_REQUIREMENTS2');


-- UnitAbilityModifiers
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MOVE_AFTER_ATTACKING', 'COSSACK_MOVE_AND_ATTACK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ARMATOLOS', 'ALPINE_IGNORE_HILLS_MOVEMENT_PENALTY');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ARMATOLOS', 'PLUS_5_HILLS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BANDEIRANTE', 'BANDEIRANTE_POST_COMBAT_CULTURE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BANDEIRANTE', 'BANDEIRANTE_POST_COMBAT_GOLD');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CAMEL_ARCHER', 'PLUS_8_DESERT_PLAINS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ADDITIONAL_ATTACK', 'EXPERT_MARKSMAN_ADDITIONAL_ATTACK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_DRUZHINA', 'PLUS_4_VERSUS_MELEE_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_DRUZHINA', 'VULTURE_BONUS_VS_DAMAGED');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PERC_50_POST_COMBAT_GOLD', 'PERC_50_POST_COMBAT_GOLD');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EQUITE_ADJACENCY_BONUS', 'PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_FRENCH_MARINE', 'AMPHIBIOUS_BONUS_IGNORE_RIVERS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_FRENCH_MARINE', 'AMPHIBIOUS_BONUS_IGNORE_SHORES');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_FRENCH_MARINE', 'PLUS_5_FOREIGN_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'GARRISON_BONUS_DISTRICTS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'URBAN_WARFARE_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GENDARME', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GHAZI', '50_PERCENT_POST_COMBAT_FAITH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GHAZI', 'CONQUISTADOR_CITY_RELIGION_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GHAZI', 'PLUS_5_OTHER_RELIGION_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_HIRDMAN', 'HIRDMAN_POST_COMBAT_CULTURE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_HIRDMAN', 'PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JINETE', '50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_LONGBOWMAN', 'PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_LONGBOWMAN', 'PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MINUTEMAN', 'COSSACK_LOCAL_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MINUTEMAN', 'PLUS_5_FOREST_JUNGLE_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MUGHAL_SOWAR', 'PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PANZER', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PHALANX', 'PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_10_DEFENDER', 'PLUS_10_WHEN_DEFENDING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_5_DEFENDER', 'PLUS_5_WHEN_DEFENDING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'RECEIVE_MEDICINE_MAN_FAITH_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'RECEIVE_SHIGONG_COMBAT_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'RECEIVE_SHIGONG_EXPERIENCE_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SEPOY', 'SAMURAI_NO_REDUCTION_DAMAGE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_T34', 'COSSACK_LOCAL_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_5_BONUS_VS_DAMAGED', 'VULTURE_BONUS_VS_DAMAGED');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_TERCIO', 'MUSTANG_MORE_EXPERIENCE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS');

--DLC
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SASR', 'IGNOREZOC_IGNORE_ZOC');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SASR', 'PLUS_5_DESERT_PLAINS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'UNIT_STRONG_WHEN_ATTACKING');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'UNIT_WEAK_WHEN_DEFENDING');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'JUNGLE_MOVEMENT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'RANGER_IGNORE_FOREST_MOVEMENT_PENALTY');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CHOSEN_INFANTRY', 'PLUS_10_HEAL_PER_TURN_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_100_PERCENT_FLANKING', 'ONE_HUNDRED_PERCENT_FLANKING_BONUS_MODIFIER');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_HEAL_ON_VICTORY', 'HEAL_AFTER_DEFEATING_UNIT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PEZHETAIROS', 'PLUS_10_VERSUS_MELEE_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PERSIAN_WARSHIP', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BALLISTA', 'PLUS_17_WHEN_ATTACKING_NON_DISTRICT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BALLISTA', 'MINUS_10_WHEN_ATTACKING_DISTRICT_MALUS');

-- R&F/DLC
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT', 'HUSSAR_FORCE_RETREAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_NUBIAN_AFRICAN_FOREST_ELEPHANT', 'AMPHIBIOUS_BONUS_IGNORE_RIVERS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_KHMER_WAR_CANOE', 'ESCORT_MOBILITY_SHARED_MOVEMENT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_KHMER_WAR_CANOE', 'CAPTURE_PRIZE_SHIPS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS', 'RECEIVE_KHMER_WAR_CANOE_AMPHIBIOUS_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_HUI_HUI_PAO_BONUS', 'RECEIVE_HUI_HUI_PAO_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_KOREAN_TURTLE_SHIP', 'VULTURE_BONUS_VS_DAMAGED');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GEORGIAN_TADZREULI', '50_PERCENT_POST_COMBAT_FAITH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GEORGIAN_TADZREULI', 'CONQUISTADOR_CITY_RELIGION_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GEORGIAN_TADZREULI', 'PLUS_5_OTHER_RELIGION_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CREE_OTEHTAPIW', 'LIGHTCHARIOT_FASTER_CLEAR_TERRAIN');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CREE_OTEHTAPIW', 'PLUS_15_HEAL_PER_TURN_BONUS_ON_PLAINS_GRASS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CREE_OTEHTAPIW', 'PLUS_5_PLAINS_GRASS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SCOTTISH_GALLOWGLASS', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SCOTTISH_GALLOWGLASS', 'MUSTANG_MORE_EXPERIENCE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MAPUCHE_GUERILLA', 'COSSACK_MOVE_AND_ATTACK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MAPUCHE_GUERILLA', 'NAGAO_FOREST_SIGHT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MAPUCHE_GUERILLA', 'NAGAO_FOREST_MOVEMENT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MAPUCHE_GUERILLA', 'JUNGLE_MOVEMENT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_DUTCH_SCHUTTERIJ', 'PLUS_10_WHEN_DEFENDING_DISTRICT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ZULU_ASSEGAI', 'PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS_ATTACH');

-- Gathering Storm
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) SELECT 'ABILITY_LESS_MOVEMENT_PILLAGE', ModifierId FROM Modifiers WHERE ModifierId = 'MALON_RAIDER_LESS_MOVEMENT_PILLAGE';
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_SOFA_BONUS', 'RECEIVE_SOFA_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_IN_FORMATION_BONUS', 'PLUS_X_IN_FORMATION_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SHIP_OF_THE_LINE_ADJACENCY_BONUS', 'PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS_ATTACH');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'PLUS_X_HOLY_SITE_PROXIMITY_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_5_WHEN_ATTACKING', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EXTRA_MOVEMENT_ON_SNOW_TUNDRA', 'EXTRA_MOVEMENT_ON_TUNDRA_OR_SNOW');

-- New Frontier Pass
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_FULL_STRENGTH_WHEN_DAMAGED_ON_HILLS', 'NO_REDUCTION_DAMAGE_ON_HILLS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_WHEN_ATTACKING_RANGED', 'PLUS_X_WHEN_ATTACKING_RANGED');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_UNIT_BONUS_VERSUS_CITY_STATES', 'BARBAROSSA_COMBAT_BONUS_VS_CITY_STATES');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_GOLD_FROM_CITY_STATES_UNIT_KILLS', 'PERC_100_POST_COMBAT_GOLD_FROM_CITY_STATES');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_VS_ANTI_CAVALRY', 'PLUS_X_VS_ANTI_CAVALRY');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_DISTRICT', 'PLUS_X_DISTRICT_ATTACK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_DISTRICT', 'PLUS_X_DISTRICT_DEFEND');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_X_VERSUS_STRONGER_UNITS', 'PLUS_X_VERSUS_STRONGER_UNITS');

--ModifierStrings
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_WHEN_DEFENDING_COMBAT_BONUS', 'Preview', 'PLUS_10_WHEN_DEFENDING_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_WHEN_DEFENDING_COMBAT_BONUS', 'Preview', 'PLUS_5_WHEN_DEFENDING_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS', 'Preview', 'PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_4_VERSUS_MELEE_COMBAT_BONUS', 'Preview', 'PLUS_4_VERSUS_MELEE_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS', 'Preview', 'PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS', 'Preview', 'PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_FOREIGN_COMBAT_BONUS', 'Preview', 'PLUS_5_FOREIGN_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_FOREST_JUNGLE_COMBAT_BONUS', 'Preview', 'PLUS_5_FOREST_JUNGLE_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_HILLS_COMBAT_BONUS', 'Preview', 'PLUS_5_HILLS_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_NOT_OWNER_TERRITORY_COMBAT_BONUS', 'Preview', 'PLUS_5_NOT_OWNER_TERRITORY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'Preview', 'PLUS_5_OTHER_RELIGION_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_WHEN_ATTACKING_COMBAT_BONUS', 'Preview', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS', 'Preview', 'PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_8_DESERT_PLAINS_COMBAT_BONUS', 'Preview', 'PLUS_8_DESERT_PLAINS_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS', 'Preview', 'RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS', 'Preview', 'RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS', 'Preview', 'RECEIVE_SHIGONG_COMBAT_BONUS_DESC');

--DLC
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_17_WHEN_ATTACKING_NON_DISTRICT_BONUS', 'Preview', 'PLUS_17_WHEN_ATTACKING_NON_DISTRICT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('MINUS_10_WHEN_ATTACKING_DISTRICT_MALUS', 'Preview', 'MINUS_10_WHEN_ATTACKING_DISTRICT_MALUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_VERSUS_MELEE_COMBAT_BONUS', 'Preview', 'PLUS_10_VERSUS_MELEE_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS', 'Preview', 'RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_COMBAT_STRENGTH_NON_DISTRICT', 'Preview', 'PLUS_5_COMBAT_STRENGTH_NON_DISTRICT_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_DESERT_PLAINS_COMBAT_BONUS', 'Preview', 'PLUS_5_DESERT_PLAINS_COMBAT_BONUS_DESC');

-- R&F/DLC
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_PLAINS_GRASS_COMBAT_BONUS', 'Preview', 'PLUS_5_PLAINS_GRASS_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_WHEN_DEFENDING_DISTRICT_BONUS', 'Preview', 'PLUS_10_WHEN_DEFENDING_DISTRICT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS', 'Preview', 'PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_HUI_HUI_PAO_BONUS', 'Preview', 'RECEIVE_HUI_HUI_PAO_BONUS_DESC');

-- Gathering Storm
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_SOFA_BONUS', 'Preview', '+{1_Amount} {RECEIVE_SOFA_BONUS_DESC}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'Preview', '+{1_Amount} {PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS_DESC}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_IN_FORMATION_BONUS', 'Preview', '+{1_Amount} {PLUS_X_IN_FORMATION_BONUS_DESC}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS', 'Preview', '+{1_Amount} {PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS_DESC}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'Preview', '+{1_Amount} {PLUS_X_HOLY_SITE_PROXIMITY_BONUS_DESC}');

-- New Frontier Pass
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_WHEN_ATTACKING_RANGED', 'Preview', '+{1_Amount} {PLUS_X_WHEN_ATTACKING_RANGED}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_VS_ANTI_CAVALRY', 'Preview', '+{1_Amount} {PLUS_X_VS_ANTI_CAVALRY}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_DISTRICT_ATTACK', 'Preview', '+{1_Amount} {PLUS_X_DISTRICT_ATTACK}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_DISTRICT_DEFEND', 'Preview', '+{1_Amount} {PLUS_X_DISTRICT_DEFEND}');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_VERSUS_STRONGER_UNITS', 'Preview', '+{1_Amount} {PLUS_X_VERSUS_STRONGER_UNITS}');


--ModifierArguments
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_CULTURE', 'PercentDefeatedStrength', '25');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_CULTURE', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_GOLD', 'PercentDefeatedStrength', '25');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_GOLD', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PERC_50_POST_COMBAT_GOLD', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PERC_50_POST_COMBAT_GOLD', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('HIRDMAN_POST_COMBAT_CULTURE', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('HIRDMAN_POST_COMBAT_CULTURE', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_WHEN_DEFENDING_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_WHEN_DEFENDING_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL', 'Amount', '15');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL', 'Type', 'ALL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_ON_PLAINS_GRASS', 'Amount', '15');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_ON_PLAINS_GRASS', 'Type', 'ALL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Amount', '15');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'Amount', '20');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS_ATTACH', 'ModifierId', 'PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS_ATTACH', 'ModifierId', 'PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_ASSEGAI_ADJACENCY_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_VERSUS_MELEE_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS_ATTACH', 'ModifierId', 'PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_FOREIGN_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_FOREST_JUNGLE_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_HILLS_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_NOT_OWNER_TERRITORY_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_WHEN_ATTACKING_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_8_DESERT_PLAINS_COMBAT_BONUS', 'Amount', '8');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS_ATTACH', 'ModifierId', 'RECEIVE_MEDICINE_MAN_FAITH_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS_ATTACH', 'ModifierId', 'RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS_ATTACH', 'ModifierId', 'RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS_ATTACH', 'ModifierId', 'RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS_ATTACH', 'ModifierId', 'RECEIVE_SHIGONG_COMBAT_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SHIGONG_EXPERIENCE_BONUS_ATTACH', 'ModifierId', 'RECEIVE_SHIGONG_EXPERIENCE_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SHIGONG_EXPERIENCE_BONUS', 'Amount', '50');

--DLC
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_COMBAT_STRENGTH_NON_DISTRICT', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JUNGLE_MOVEMENT', 'Ignore', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JUNGLE_MOVEMENT', 'Type', 'JUNGLE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS_ATTACH', 'ModifierId', 'RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS_ATTACH', 'ModifierId', 'RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_GENERAL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS', 'NoReduction', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_HEAL_PER_TURN_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_HEAL_PER_TURN_BONUS', 'Type', 'ALL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ONE_HUNDRED_PERCENT_FLANKING_BONUS_MODIFIER', 'Percent', '100');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_VERSUS_MELEE_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS_ATTACH', 'ModifierId', 'RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS_ATTACH', 'ModifierId', 'RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS', 'Amount', '2');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_17_WHEN_ATTACKING_NON_DISTRICT_BONUS', 'Amount', '17');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MINUS_10_WHEN_ATTACKING_DISTRICT_MALUS', 'Amount', '-10');

--R&F/DLC
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_KHMER_WAR_CANOE_AMPHIBIOUS_BONUS_ATTACH', 'ModifierId', 'RECEIVE_KHMER_WAR_CANOE_AMPHIBIOUS_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_KHMER_WAR_CANOE_AMPHIBIOUS_BONUS', 'Ignore', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_PLAINS_GRASS_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_WHEN_DEFENDING_DISTRICT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_HUI_HUI_PAO_BONUS_ATTACH', 'ModifierId', 'RECEIVE_HUI_HUI_PAO_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_HUI_HUI_PAO_BONUS', 'Amount', '5');

-- Gathering Storm
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SOFA_BONUS_ATTACH', 'ModifierId', 'RECEIVE_SOFA_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SOFA_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_VS_NAVAL_RAIDER_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_IN_FORMATION_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS_ATTACH', 'ModifierId', 'PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_ADJACENT_FRIENDLY_NAVAL_RANGED_BONUS', 'Amount', '7');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_HOLY_SITE_PROXIMITY_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('EXTRA_MOVEMENT_ON_TUNDRA_OR_SNOW', 'Amount', '2');

-- New Frontier Pass
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_WHEN_ATTACKING_RANGED', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PERC_100_POST_COMBAT_GOLD_FROM_CITY_STATES', 'PercentDefeatedStrength', '100');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PERC_100_POST_COMBAT_GOLD_FROM_CITY_STATES', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_VS_ANTI_CAVALRY', 'Amount', '7'); -- Carrus
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_DISTRICT_ATTACK', 'Amount', '5'); -- Varangian
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_DISTRICT_DEFEND', 'Amount', '5'); -- Varangian
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_VERSUS_STRONGER_UNITS', 'Amount', '6'); -- Mehal


-- Polish Winged Hussar Fix
UPDATE Units SET MandatoryObsoleteTech = 'TECH_COMPOSITES' WHERE UnitType = 'UNIT_POLISH_HUSSAR';


/* ------------------------- */
/* Rise & Fall Compatibility */
/* ------------------------- */

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_PIKE_AND_SHOT' WHERE Unit = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PIKE_AND_SHOT');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_PIKE_AND_SHOT' WHERE Unit = 'UNIT_MAPUCHE_GUERILLA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PIKE_AND_SHOT');

INSERT INTO UnitUpgrades SELECT 'UNIT_BRAZILIAN_BANDEIRANTE', 'UNIT_SPEC_OPS' WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');

INSERT INTO UnitUpgrades SELECT 'UNIT_MAORI_TUPARA', 'UNIT_SPEC_OPS'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_MAORI_TUPARA');

INSERT INTO UnitReplaces SELECT 'UNIT_SPANISH_TERCIO', 'UNIT_PIKE_AND_SHOT' WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PIKE_AND_SHOT');

UPDATE Units SET Cost = 140 WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI');


/* ----------------------------- */
/* Gathering Storm Compatibility */
/* ----------------------------- */

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_RUSSIAN_DRUZHINA', 'UNIT_COURSER'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_COURSER')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RUSSIAN_DRUZHINA');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_SPANISH_JINETE', 'UNIT_COURSER'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_COURSER')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPANISH_JINETE');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_AMERICAN_ROUGH_RIDER', 'UNIT_CUIRASSIER'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_AMERICAN_ROUGH_RIDER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_SKIRMISHER' WHERE Unit = 'UNIT_SCYTHIAN_AMAZON_SCOUT' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SKIRMISHER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_COURSER' WHERE Unit = 'UNIT_ROMAN_EQUITE' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_COURSER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_COURSER' WHERE Unit = 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_COURSER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CUIRASSIER' WHERE Unit = 'UNIT_SCYTHIAN_AMAZON' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CUIRASSIER' WHERE Unit = 'UNIT_FRENCH_GENDARME' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CUIRASSIER' WHERE Unit = 'UNIT_INDIAN_MUGHAL_SOWAR' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CUIRASSIER' WHERE Unit = 'UNIT_GEORGIAN_TADZREULI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CUIRASSIER' WHERE Unit = 'UNIT_OTTOMAN_SIPAHI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER');


/* ----------------------------- */
/* Steel & Thunder Compatibility */
/* ----------------------------- */

-- Unit Replaces
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_ARABIAN_GHAZI', 'UNIT_DLV_LONGSWORDSMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_ARABIAN_GHAZI');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_RUSSIAN_DRUZHINA', 'UNIT_DLV_MEDIEVAL_HORSEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RUSSIAN_DRUZHINA');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_SPANISH_JINETE', 'UNIT_DLV_MEDIEVAL_HORSEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPANISH_JINETE');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNIT_DLV_RIFLEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_GREEK_ARMATOLOS', 'UNIT_DLV_RIFLEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_GREEK_ARMATOLOS');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_INDIAN_SEPOY', 'UNIT_DLV_RIFLEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_INDIAN_SEPOY');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_SCOTTISH_GALLOWGLASS', 'UNIT_DLV_LONGSWORDSMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SCOTTISH_GALLOWGLASS');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_ELEANOR_TEMPLAR', 'UNIT_DLV_LONGSWORDSMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_ELEANOR_TEMPLAR');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_MONGOLIAN_HUI_HUI_PAO', 'UNIT_DLV_TREBUCHET'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_TREBUCHET')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_MONGOLIAN_HUI_HUI_PAO');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_AMERICAN_ROUGH_RIDER', 'UNIT_DLV_CUIRASSIER'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_AMERICAN_ROUGH_RIDER');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_COLOMBIAN_BRITISH_LEGION', 'UNIT_DLV_RIFLEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_COLOMBIAN_BRITISH_LEGION');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_MAYAN_HOLKAN', 'UNIT_DLV_LONGSWORDSMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_MAYAN_HOLKAN');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_BYZANTINE_VARANGIAN_GUARD', 'UNIT_DLV_LONGSWORDSMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_BYZANTINE_VARANGIAN_GUARD');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) SELECT 'UNIT_ETHIOPIAN_MEHAL_SEFARI', 'UNIT_DLV_RIFLEMAN'
WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN')
AND   EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_ETHIOPIAN_MEHAL_SEFARI');


-- Unit Upgrades - when Unit Expansion active
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_EXPLORER' WHERE Unit = 'UNIT_SCYTHIAN_AMAZON_SCOUT' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_EXPLORER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MEDIEVAL_HORSEMAN' WHERE Unit = 'UNIT_ROMAN_EQUITE' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MEDIEVAL_HORSEMAN' WHERE Unit = 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_MEDIEVAL_HORSEMAN');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_SCYTHIAN_AMAZON' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_FRENCH_GENDARME' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_INDIAN_MUGHAL_SOWAR' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_GEORGIAN_TADZREULI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_OTTOMAN_SIPAHI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_CUIRASSIER');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_TREBUCHET' WHERE Unit = 'UNIT_ROMAN_ONAGER' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_TREBUCHET');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_TREBUCHET' WHERE Unit = 'UNIT_MACEDONIAN_BALLISTA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_TREBUCHET');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_NORWEGIAN_HIRDMAN' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_EGYPTIAN_KHOPESH' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_AZTEC_JAGUAR' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_MAORI_TOA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_POLISH_CHOSEN_INFANTRY' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_DUTCH_SCHUTTERIJ' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_RIFLEMAN');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_COG' WHERE Unit = 'UNIT_KHMER_WAR_CANOE' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_COG');


/* ----------------------------- */
/* Historic Moments              */
/* ----------------------------- */

CREATE TABLE IF NOT EXISTS MomentIllustrations (MomentIllustrationType VARCHAR, MomentDataType VARCHAR, GameDataType VARCHAR, Texture VARCHAR);

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'africanForestElephantHM.dds'
FROM   Types WHERE Type = 'UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'AmazonHM.dds'
FROM   Types WHERE Type = 'UNIT_SCYTHIAN_AMAZON';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'ApacheHM.dds'
FROM   Types WHERE Type = 'UNIT_AMERICAN_AH64_APACHE';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'AssegaiHM.dds'
FROM   Types WHERE Type = 'UNIT_ZULU_ASSEGAI';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'BallistaHM.dds'
FROM   Types WHERE Type = 'UNIT_MACEDONIAN_BALLISTA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'BandeirantesHM.dds'
FROM   Types WHERE Type = 'UNIT_BRAZILIAN_BANDEIRANTE';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'CamelArcherHM.dds'
FROM   Types WHERE Type = 'UNIT_ARABIAN_CAMEL_ARCHER';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'CreeHorsemanHM.dds'
FROM   Types WHERE Type = 'UNIT_CREE_OTEHTAPIW';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'DruzhinaHM.dds'
FROM   Types WHERE Type = 'UNIT_RUSSIAN_DRUZHINA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'EquesHM.dds'
FROM   Types WHERE Type = 'UNIT_ROMAN_EQUITE';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'GallowglassHM.dds'
FROM   Types WHERE Type = 'UNIT_SCOTTISH_GALLOWGLASS';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'GendarmeHM.dds'
FROM   Types WHERE Type = 'UNIT_FRENCH_GENDARME';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'HuiHuiPaoHM.dds'
FROM   Types WHERE Type = 'UNIT_MONGOLIAN_HUI_HUI_PAO';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'IronsideHM.dds'
FROM   Types WHERE Type = 'UNIT_SWEDEN_HAKKAPELIITTA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'JaguarHM.dds'
FROM   Types WHERE Type = 'UNIT_AZTEC_JAGUAR';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'KrisHM.dds'
FROM   Types WHERE Type = 'UNIT_INDONESIAN_KRIS_SWORDSMAN';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'MapucheHM.dds'
FROM   Types WHERE Type = 'UNIT_MAPUCHE_GUERILLA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'PhalanxHM.dds'
FROM   Types WHERE Type = 'UNIT_SUMERIAN_PHALANX';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'SepoyHM.dds'
FROM   Types WHERE Type = 'UNIT_INDIAN_SEPOY';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'ShutterijHM.dds'
FROM   Types WHERE Type = 'UNIT_DUTCH_SCHUTTERIJ';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'SoheiHM.dds'
FROM   Types WHERE Type = 'UNIT_JAPANESE_SOHEI';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'TadzreuliHM.dds'
FROM   Types WHERE Type = 'UNIT_GEORGIAN_TADZREULI';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'TurtleShipHM.dds'
FROM   Types WHERE Type = 'UNIT_KOREAN_TURTLE_SHIP';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'UhlanHM.dds'
FROM   Types WHERE Type = 'UNIT_POLISH_UHLAN';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'UlfhednarHM.dds'
FROM   Types WHERE Type = 'UNIT_NORWEGIAN_ULFHEDNAR';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'WarCanoeHM.dds'
FROM   Types WHERE Type = 'UNIT_KHMER_WAR_CANOE';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Landsknecht_HM.dds'
FROM   Types WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Shigong_HM.dds'
FROM   Types WHERE Type = 'UNIT_CHINESE_SHIGONG';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Tercio_HM.dds'
FROM   Types WHERE Type = 'UNIT_SPANISH_TERCIO';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Peltast_HM.dds'
FROM   Types WHERE Type = 'UNIT_GREEK_PELTAST';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Khopesh_HM.dds'
FROM   Types WHERE Type = 'UNIT_EGYPTIAN_KHOPESH';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Medicine_Man_HM.dds'
FROM   Types WHERE Type = 'UNIT_KONGO_MEDICINE_MAN';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'cataphract_HM.dds'
FROM   Types WHERE Type = 'UNIT_PERSIAN_CATAPHRACT';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'sasr_HM.dds'
FROM   Types WHERE Type = 'UNIT_AUSTRALIAN_SASR';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Haida_HM.dds'
  FROM   Types WHERE Type = 'UNIT_CANADA_HMCS_HAIDA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Kalandozo_HM.dds'
  FROM   Types WHERE Type = 'UNIT_HUNGARY_KALANDOZO';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Chasqui_HM.dds'
  FROM   Types WHERE Type = 'UNIT_INCA_CHASQUI';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Sofa_HM.dds'
  FROM   Types WHERE Type = 'UNIT_MALI_SOFA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Tupara_HM.dds'
  FROM   Types WHERE Type = 'UNIT_MAORI_TUPARA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Sipahi_HM.dds'
  FROM   Types WHERE Type = 'UNIT_OTTOMAN_SIPAHI';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Numidian_HM.dds'
  FROM   Types WHERE Type = 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Kronan_HM.dds'
  FROM   Types WHERE Type = 'UNIT_ENGLISH_SHIP_OF_THE_LINE';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Longbowman_HM.dds'
  FROM   Types WHERE Type = 'UNIT_ENGLISH_LONGBOWMAN';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Templar_HM.dds'
  FROM   Types WHERE Type = 'UNIT_ELEANOR_TEMPLAR';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'British_Legion_HM.dds'
FROM   Types WHERE Type = 'UNIT_COLOMBIAN_BRITISH_LEGION';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Mayan_Holkan_HM.dds'
  FROM   Types WHERE Type = 'UNIT_MAYAN_HOLKAN';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Carrus_HM.dds'
  FROM   Types WHERE Type = 'UNIT_GAUL_CARRUS';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Varangian_HM.dds'
  FROM   Types WHERE Type = 'UNIT_BYZANTINE_VARANGIAN_GUARD';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
  SELECT 	'MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', Type, 'Mehal_HM.dds'
  FROM   Types WHERE Type = 'UNIT_ETHIOPIAN_MEHAL_SEFARI';