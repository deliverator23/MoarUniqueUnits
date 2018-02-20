--Sqllite Hacks

--SELECT * FROM Types WHERE Type LIKE 'UNIT\_%' ESCAPE '\' ORDER BY Type

--DROP TRIGGER OnTypeInsert;
--CREATE TRIGGER OnTypeInsert AFTER INSERT ON Types BEGIN UPDATE Types SET Hash = random() Where Type = New.Type; END;
--PRAGMA foreign_keys = ON;

-- Conditional - Units, Traits, Civ Traits
-- Load Anyway - Abilities, Classes, Modifiers, etc


DROP TRIGGER OnTypeInsert;
CREATE TRIGGER OnTypeInsert AFTER INSERT ON Types BEGIN UPDATE Types SET Hash = random() Where Type = New.Type; END;
PRAGMA foreign_keys = ON;


CREATE TABLE EnabledUniqueUnits (CivilizationType VARCHAR, Type VARCHAR, Enabled INTEGER);

-- Core Uniques
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_AMERICA','UNIT_AMERICAN_AH64_APACHE', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_AMERICA','UNIT_AMERICAN_MINUTEMAN', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ARABIA','UNIT_ARABIAN_CAMEL_ARCHER', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ARABIA','UNIT_ARABIAN_GHAZI', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_BRAZIL','UNIT_BRAZILIAN_BANDEIRANTE', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_BRAZIL','UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_CHINA','UNIT_CHINESE_CHOKONU', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_CHINA','UNIT_CHINESE_SHIGONG', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_EGYPT','UNIT_EGYPTIAN_HYKSOS_BOWMAN', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_EGYPT','UNIT_EGYPTIAN_WAR_GALLEY', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ENGLAND','UNIT_ENGLISH_IRONSIDE', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ENGLAND','UNIT_ENGLISH_LONGBOWMAN', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_FRANCE','UNIT_FRENCH_GENDARME', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_FRANCE','UNIT_FRENCH_MARINE', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_GERMANY','UNIT_GERMAN_LANDSKNECHT', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_GERMANY','UNIT_GERMAN_PANZER', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_GREECE','UNIT_GREEK_ARMATOLOS', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_GREECE','UNIT_GREEK_PELTAST', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_INDIA','UNIT_INDIAN_MUGHAL_SOWAR', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_INDIA','UNIT_INDIAN_SEPOY', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_JAPAN','UNIT_JAPANESE_SOHEI', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_JAPAN','UNIT_JAPANESE_YAMATO', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_KONGO','UNIT_KONGO_GARDE_REPUBLICAINE', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_KONGO','UNIT_KONGO_MEDICINE_MAN', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_NORWAY','UNIT_NORWEGIAN_HIRDMAN', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_NORWAY','UNIT_NORWEGIAN_ULFHEDNAR', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ROME','UNIT_ROMAN_EQUITE', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ROME','UNIT_ROMAN_ONAGER', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_RUSSIA','UNIT_RUSSIAN_DRUZHINA', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_RUSSIA','UNIT_RUSSIAN_T34', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SCYTHIA','UNIT_SCYTHIAN_AMAZON', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SCYTHIA','UNIT_SCYTHIAN_AMAZON_SCOUT', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SPAIN','UNIT_SPANISH_JINETE', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SPAIN','UNIT_SPANISH_TERCIO', 1);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SUMERIA','UNIT_SUMERIAN_PHALANX', 0);
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SUMERIA','UNIT_SUMERIAN_VULTURE', 1);

-- Even Moar Units Uniques
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_AUSTRALIA','UNIT_AUSTRALIAN_SASR', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_AZTEC','UNIT_AZTEC_JAGUAR', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_AZTEC','UNIT_AZTEC_WARRIOR_PRIEST', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_POLAND','UNIT_POLISH_CHOSEN_INFANTRY', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_POLAND','UNIT_POLISH_UHLAN', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_PERSIA','UNIT_PERSIAN_CATAPHRACT', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_PERSIA','UNIT_PERSIAN_WARSHIP', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_MACEDON','UNIT_MACEDONIAN_BALLISTA', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_MACEDON','UNIT_MACEDONIAN_PEZHETAIROS', 1); --WHERE CIV EXISTS

-- New Uniques
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_NUBIA','UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT', 0); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_INDONESIA','UNIT_INDONESIAN_KRIS_SWORDSMAN', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_KHMER','UNIT_KHMER_WAR_CANOE', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_KOREA','UNIT_KOREAN_TURTLE_SHIP', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_NETHERLANDS','UNIT_DUTCH_SCHUTTERIJ', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_GEORGIA','UNIT_GEORGIAN_TADZREULI', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_CREE','UNIT_CREE_OTEHTAPIW', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_MAPUCHE','UNIT_MAPUCHE_GUERILLA', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_SCOTLAND','UNIT_SCOTTISH_GALLOWGLASS', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_MONGOLIA','UNIT_MONGOLIAN_HUI_HUI_PAO', 1); --WHERE CIV EXISTS
INSERT INTO EnabledUniqueUnits (CivilizationType, Type, Enabled) VALUES ('CIVILIZATION_ZULU','UNIT_ZULU_ASSEGAI', 1); --WHERE CIV EXISTS


-- CONDITIONALS
-- CONDITIONALS
-- CONDITIONALS


--Types (KIND_UNIT)
INSERT INTO Types (Type, Kind) SELECT  Type, 'KIND_UNIT' FROM EnabledUniqueUnits WHERE Enabled = 1;

--Types (KIND_TRAIT)
INSERT INTO Types (Type, Kind) SELECT 'TRAIT_CIVILIZATION_'||Type, 'KIND_TRAIT' FROM EnabledUniqueUnits WHERE Enabled = 1;

--Traits
INSERT INTO Traits (TraitType, Name) SELECT 'TRAIT_CIVILIZATION_'||Type, 'LOC_'||Type||'_NAME' FROM EnabledUniqueUnits WHERE Enabled = 1;

--Traits
INSERT INTO CivilizationTraits (CivilizationType, TraitType) SELECT CivilizationType, 'TRAIT_CIVILIZATION_'||Type FROM EnabledUniqueUnits WHERE Enabled = 1;







--Units
INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '80', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ROMAN_EQUITE_NAME', 'LOC_UNIT_ROMAN_EQUITE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '35', 'TECH_HORSEBACK_RIDING', 'RESOURCE_HORSES', 'TECH_SYNTHETIC_MATERIALS', 'TRAIT_CIVILIZATION_UNIT_ROMAN_EQUITE'
FROM   Types WHERE Type = 'UNIT_ROMAN_EQUITE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '150', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SPANISH_JINETE_NAME', 'LOC_UNIT_SPANISH_JINETE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '42', '35', '1', 'TECH_STIRRUPS', 'RESOURCE_HORSES', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_SPANISH_JINETE'
FROM   Types WHERE Type = 'UNIT_SPANISH_JINETE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '150', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_RUSSIAN_DRUZHINA_NAME', 'LOC_UNIT_RUSSIAN_DRUZHINA_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '2', '44', 'TECH_STIRRUPS', 'RESOURCE_HORSES', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_RUSSIAN_DRUZHINA'
FROM   Types WHERE Type = 'UNIT_RUSSIAN_DRUZHINA';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, RangedCombat, Range, PrereqTech, TraitType)
SELECT Type, '2', '60', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GREEK_PELTAST_NAME', 'LOC_UNIT_GREEK_PELTAST_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '1', '20', 'TECH_BALLISTICS', '30', '1', 'TECH_ARCHERY', 'TRAIT_CIVILIZATION_UNIT_GREEK_PELTAST'
FROM   Types WHERE Type = 'UNIT_GREEK_PELTAST';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_INDIAN_MUGHAL_SOWAR_NAME', 'LOC_UNIT_INDIAN_MUGHAL_SOWAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '2', '48', 'TECH_STIRRUPS', 'RESOURCE_IRON', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_INDIAN_MUGHAL_SOWAR'
FROM   Types WHERE Type = 'UNIT_INDIAN_MUGHAL_SOWAR';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_FRENCH_GENDARME_NAME', 'LOC_UNIT_FRENCH_GENDARME_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '3', '50', 'TECH_STIRRUPS', 'RESOURCE_IRON', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_FRENCH_GENDARME'
FROM   Types WHERE Type = 'UNIT_FRENCH_GENDARME';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '200', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SCYTHIAN_AMAZON_NAME', 'LOC_UNIT_SCYTHIAN_AMAZON_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '3', '48', 'TECH_STIRRUPS', 'RESOURCE_IRON', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_SCYTHIAN_AMAZON'
FROM   Types WHERE Type = 'UNIT_SCYTHIAN_AMAZON';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_NORWEGIAN_HIRDMAN_NAME', 'LOC_UNIT_NORWEGIAN_HIRDMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '36', 'TECH_IRON_WORKING', 'RESOURCE_IRON', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_HIRDMAN'
FROM   Types WHERE Type = 'UNIT_NORWEGIAN_HIRDMAN';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqCivic, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '180', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_JAPANESE_SOHEI_NAME', 'LOC_UNIT_JAPANESE_SOHEI_DESCRIPTION', 'YIELD_FAITH', 'PROMOTION_CLASS_MELEE', '1', '42', 'CIVIC_FEUDALISM', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_JAPANESE_SOHEI'
FROM   Types WHERE Type = 'UNIT_JAPANESE_SOHEI';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '60', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_EGYPTIAN_HYKSOS_BOWMAN_NAME', 'LOC_UNIT_EGYPTIAN_HYKSOS_BOWMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '1', '15', '30', '2', 'TECH_ARCHERY', 'TECH_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_EGYPTIAN_HYKSOS_BOWMAN'
FROM   Types WHERE Type = 'UNIT_EGYPTIAN_HYKSOS_BOWMAN';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '180', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ENGLISH_LONGBOWMAN_NAME', 'LOC_UNIT_ENGLISH_LONGBOWMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '3', '30', '40', '2', 'TECH_MACHINERY', 'TECH_SYNTHETIC_MATERIALS', 'TRAIT_CIVILIZATION_UNIT_ENGLISH_LONGBOWMAN'
FROM   Types WHERE Type = 'UNIT_ENGLISH_LONGBOWMAN';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '200', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_CHINESE_CHOKONU_NAME', 'LOC_UNIT_CHINESE_CHOKONU_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '4', '30', '34', '2', 'TECH_MACHINERY', 'TECH_ADVANCED_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_CHINESE_CHOKONU'
FROM   Types WHERE Type = 'UNIT_CHINESE_CHOKONU';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '100', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ARABIAN_CAMEL_ARCHER_NAME', 'LOC_UNIT_ARABIAN_CAMEL_ARCHER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RANGED', '2', '13', '27', '1', 'TECH_HORSEBACK_RIDING', 'TECH_BALLISTICS', 'TRAIT_CIVILIZATION_UNIT_ARABIAN_CAMEL_ARCHER'
FROM   Types WHERE Type = 'UNIT_ARABIAN_CAMEL_ARCHER';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, TraitType, PrereqTech, StrategicResource, MandatoryObsoleteTech)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AMERICAN_MINUTEMAN_NAME', 'LOC_UNIT_AMERICAN_MINUTEMAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '50', 'TRAIT_CIVILIZATION_UNIT_AMERICAN_MINUTEMAN', 'TECH_GUNPOWDER', 'RESOURCE_NITER', 'TECH_SATELLITES'
FROM   Types WHERE Type = 'UNIT_AMERICAN_MINUTEMAN';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, BuildCharges, TraitType)
SELECT Type, '3', '220', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_BRAZILIAN_BANDEIRANTE_NAME', 'LOC_UNIT_BRAZILIAN_BANDEIRANTE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_RECON', '4', '46', '60', '1', 'TECH_GUNPOWDER', '1', 'TRAIT_CIVILIZATION_UNIT_BRAZILIAN_BANDEIRANTE'
FROM   Types WHERE Type = 'UNIT_BRAZILIAN_BANDEIRANTE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '65', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SUMERIAN_PHALANX_NAME', 'LOC_UNIT_SUMERIAN_PHALANX_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '1', '25', 'TECH_MINING', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_SUMERIAN_PHALANX'
FROM   Types WHERE Type = 'UNIT_SUMERIAN_PHALANX';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '280', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER_NAME', 'LOC_UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '64', 'TECH_RIFLING', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER'
FROM   Types WHERE Type = 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '350', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_INDIAN_SEPOY_NAME', 'LOC_UNIT_INDIAN_SEPOY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '64', 'TECH_RIFLING', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_INDIAN_SEPOY'
FROM   Types WHERE Type = 'UNIT_INDIAN_SEPOY';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
SELECT Type, '3', '660', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_KONGO_GARDE_REPUBLICAINE_NAME', 'LOC_UNIT_KONGO_GARDE_REPUBLICAINE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '8', '90', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_KONGO_GARDE_REPUBLICAINE'
FROM   Types WHERE Type = 'UNIT_KONGO_GARDE_REPUBLICAINE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '90', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SUMERIAN_VULTURE_NAME', 'LOC_UNIT_SUMERIAN_VULTURE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '36', 'TECH_IRON_WORKING', 'RESOURCE_IRON', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_SUMERIAN_VULTURE'
FROM   Types WHERE Type = 'UNIT_SUMERIAN_VULTURE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '260', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SPANISH_TERCIO_NAME', 'LOC_UNIT_SPANISH_TERCIO_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '4', '60', 'TECH_GUNPOWDER', 'RESOURCE_NITER', 'TECH_ROCKETRY', 'TRAIT_CIVILIZATION_UNIT_SPANISH_TERCIO'
FROM   Types WHERE Type = 'UNIT_SPANISH_TERCIO';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, TraitType)
SELECT Type, '4', '540', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GERMAN_PANZER_NAME', 'LOC_UNIT_GERMAN_PANZER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '8', '80', 'TECH_COMBUSTION', 'RESOURCE_OIL', 'TRAIT_CIVILIZATION_UNIT_GERMAN_PANZER'
FROM   Types WHERE Type = 'UNIT_GERMAN_PANZER';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, TraitType)
SELECT Type, '4', '460', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_RUSSIAN_T34_NAME', 'LOC_UNIT_RUSSIAN_T34_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '5', '80', 'TECH_COMBUSTION', 'RESOURCE_OIL', 'TRAIT_CIVILIZATION_UNIT_RUSSIAN_T34'
FROM   Types WHERE Type = 'UNIT_RUSSIAN_T34';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Combat, TraitType)
SELECT Type, '3', '30', 'ADVISOR_GENERIC', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_SCYTHIAN_AMAZON_SCOUT_NAME', 'LOC_UNIT_SCYTHIAN_AMAZON_SCOUT_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_EXPLORER', 'PROMOTION_CLASS_RECON', '15', 'TRAIT_CIVILIZATION_UNIT_SCYTHIAN_AMAZON_SCOUT'
FROM   Types WHERE Type = 'UNIT_SCYTHIAN_AMAZON_SCOUT';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, PrereqTech, Bombard, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ROMAN_ONAGER_NAME', 'LOC_UNIT_ROMAN_ONAGER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '2', '23', '2', 'TECH_ENGINEERING', '40', 'TECH_STEEL', 'TRAIT_CIVILIZATION_UNIT_ROMAN_ONAGER'
FROM   Types WHERE Type = 'UNIT_ROMAN_ONAGER';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, Range, PrereqTech, Bombard, MandatoryObsoleteTech)
SELECT Type, '2', '200', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_TREBUCHET_NAME', 'LOC_UNIT_TREBUCHET_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '3', '33', '2', 'TECH_MILITARY_ENGINEERING', '45', 'TECH_BALLISTICS'
FROM   Types WHERE Type = 'UNIT_TREBUCHET';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, StrategicResource, AntiAirCombat, TraitType, InitialLevel)
SELECT Type, '5', '460', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_JAPANESE_YAMATO_NAME', 'LOC_UNIT_JAPANESE_YAMATO_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_RANGED', '7', '70', '80', '3', 'TECH_STEEL', 'RESOURCE_COAL', '80', 'TRAIT_CIVILIZATION_UNIT_JAPANESE_YAMATO', '2'
FROM   Types WHERE Type = 'UNIT_JAPANESE_YAMATO';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, RangedCombat, Range, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '3', '130', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_EGYPTIAN_WAR_GALLEY_NAME', 'LOC_UNIT_EGYPTIAN_WAR_GALLEY_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_RANGED', '2', '25', '30', '2', 'TECH_SHIPBUILDING', 'TECH_STEEL', 'TRAIT_CIVILIZATION_UNIT_EGYPTIAN_WAR_GALLEY'
FROM   Types WHERE Type = 'UNIT_EGYPTIAN_WAR_GALLEY';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, MustPurchase, CostProgressionModel, CostProgressionParam1, PromotionClass, Maintenance, PrereqCivic, TraitType)
SELECT Type, '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_KONGO_MEDICINE_MAN_NAME', 'LOC_UNIT_KONGO_MEDICINE_MAN_DESCRIPTION', 'YIELD_FAITH', 1, 'COST_PROGRESSION_PREVIOUS_COPIES', '20', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MYSTICISM', 'TRAIT_CIVILIZATION_UNIT_KONGO_MEDICINE_MAN'
FROM   Types WHERE Type = 'UNIT_KONGO_MEDICINE_MAN';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '240', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_FRENCH_MARINE_NAME', 'LOC_UNIT_FRENCH_MARINE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '55', 'TECH_GUNPOWDER', 'RESOURCE_NITER', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_FRENCH_MARINE'
FROM   Types WHERE Type = 'UNIT_FRENCH_MARINE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '350', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GREEK_ARMATOLOS_NAME', 'LOC_UNIT_GREEK_ARMATOLOS_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '64', 'TECH_RIFLING', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_GREEK_ARMATOLOS'
FROM   Types WHERE Type = 'UNIT_GREEK_ARMATOLOS';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqCivic, TraitType)
SELECT Type, '2', '100', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_CHINESE_SHIGONG_NAME', 'LOC_UNIT_CHINESE_SHIGONG_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MILITARY_TRAINING', 'TRAIT_CIVILIZATION_UNIT_CHINESE_SHIGONG'
FROM   Types WHERE Type = 'UNIT_CHINESE_SHIGONG';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '160', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ARABIAN_GHAZI_NAME', 'LOC_UNIT_ARABIAN_GHAZI_DESCRIPTION', 'YIELD_FAITH', 'PROMOTION_CLASS_MELEE', '2', '46', 'TECH_CASTLES', 'RESOURCE_IRON', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_ARABIAN_GHAZI'
FROM   Types WHERE Type = 'UNIT_ARABIAN_GHAZI';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, MustPurchase, CostProgressionModel, CostProgressionParam1, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
SELECT Type, '2', '100', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_GERMAN_LANDSKNECHT_NAME', 1, 'COST_PROGRESSION_PREVIOUS_COPIES', '20', 'LOC_UNIT_GERMAN_LANDSKNECHT_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '3', '41', 'TECH_MILITARY_TACTICS', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_GERMAN_LANDSKNECHT'
FROM   Types WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, CanTargetAir, TraitType)
SELECT Type, '4', '600', 'ADVISOR_CONQUEST', '3', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AMERICAN_AH64_APACHE_NAME', 'LOC_UNIT_AMERICAN_AH64_APACHE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '7', '85', 'TECH_SYNTHETIC_MATERIALS', 1, 'TRAIT_CIVILIZATION_UNIT_AMERICAN_AH64_APACHE'
FROM   Types WHERE Type = 'UNIT_AMERICAN_AH64_APACHE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqCivic, MandatoryObsoleteTech, TraitType)
SELECT Type, '4', '260', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ENGLISH_IRONSIDE_NAME', 'LOC_UNIT_ENGLISH_IRONSIDE_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '4', '56', 'CIVIC_REFORMED_CHURCH', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_ENGLISH_IRONSIDE'
FROM   Types WHERE Type = 'UNIT_ENGLISH_IRONSIDE';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqCivic, TraitType, MandatoryObsoleteTech)
SELECT Type, '2', '100', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_NORWEGIAN_ULFHEDNAR_NAME', 'LOC_UNIT_NORWEGIAN_ULFHEDNAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MYSTICISM', 'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_ULFHEDNAR', 'TECH_GUNPOWDER'
FROM   Types WHERE Type = 'UNIT_NORWEGIAN_ULFHEDNAR';


-- Even Moar Units

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, TraitType)
VALUES ('UNIT_AUSTRALIAN_SASR', '4', '650', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AUSTRALIAN_SASR_NAME', 'LOC_UNIT_AUSTRALIAN_SASR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '8', '91', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_AUSTRALIAN_SASR');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, MandatoryObsoleteTech, TraitType)
VALUES ('UNIT_AZTEC_JAGUAR', '2', '90', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_AZTEC_JAGUAR_NAME', 'LOC_UNIT_AZTEC_JAGUAR_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '2', '34', 'TECH_IRON_WORKING', 'TECH_REPLACEABLE_PARTS', 'TRAIT_CIVILIZATION_UNIT_AZTEC_JAGUAR');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, CostProgressionModel, CostProgressionParam1, PromotionClass, Maintenance, PrereqCivic, TraitType)
VALUES ('UNIT_AZTEC_WARRIOR_PRIEST', '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_UNIT_AZTEC_WARRIOR_PRIEST_NAME', 'LOC_UNIT_AZTEC_WARRIOR_PRIEST_DESCRIPTION', 'YIELD_FAITH', 'COST_PROGRESSION_PREVIOUS_COPIES', '20', 'PROMOTION_CLASS_SUPPORT', '3', 'CIVIC_MYSTICISM', 'TRAIT_CIVILIZATION_UNIT_AZTEC_WARRIOR_PRIEST');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, Range, PrereqTech, Bombard, TraitType)
VALUES ('UNIT_MACEDONIAN_BALLISTA', '2', '120', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MACEDONIAN_BALLISTA_NAME', 'LOC_UNIT_MACEDONIAN_BALLISTA_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SIEGE', '2', '23', 'TECH_STEEL', '2', 'TECH_ENGINEERING', '35', 'TRAIT_CIVILIZATION_UNIT_MACEDONIAN_BALLISTA');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, PrereqTech, TraitType)
VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', '2', '65', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_MACEDONIAN_PEZHETAIROS_NAME', 'LOC_UNIT_MACEDONIAN_PEZHETAIROS_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_ANTI_CAVALRY', '1', '28', 'TECH_COMPOSITES', 'TECH_BRONZE_WORKING', 'TRAIT_CIVILIZATION_UNIT_MACEDONIAN_PEZHETAIROS');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
VALUES ('UNIT_PERSIAN_CATAPHRACT', '4', '100', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_PERSIAN_CATAPHRACT_NAME', 'LOC_UNIT_PERSIAN_CATAPHRACT_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HEAVY_CAVALRY', '2', '39', 'TECH_HORSEBACK_RIDING', 'RESOURCE_IRON', 'TECH_COMPOSITES', 'TRAIT_CIVILIZATION_UNIT_PERSIAN_CATAPHRACT');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PseudoYieldType, PromotionClass, Maintenance, Combat, MandatoryObsoleteTech, PrereqTech, TraitType)
VALUES ('UNIT_PERSIAN_WARSHIP', '3', '65', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_SEA', 'FORMATION_CLASS_NAVAL', 'LOC_UNIT_PERSIAN_WARSHIP_NAME', 'LOC_UNIT_PERSIAN_WARSHIP_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 'PROMOTION_CLASS_NAVAL_MELEE', '1', '25', 'TECH_STEAM_POWER', 'TECH_SAILING', 'TRAIT_CIVILIZATION_UNIT_PERSIAN_WARSHIP');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, MandatoryObsoleteTech, TraitType)
VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', '2', '180', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_POLISH_CHOSEN_INFANTRY_NAME', 'LOC_UNIT_POLISH_CHOSEN_INFANTRY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '3', '55', 'TECH_GUNPOWDER', 'RESOURCE_NITER', 'TECH_SATELLITES', 'TRAIT_CIVILIZATION_UNIT_POLISH_CHOSEN_INFANTRY');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource, TraitType)
VALUES ('UNIT_POLISH_UHLAN', '5', '330', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_POLISH_UHLAN_NAME', 'LOC_UNIT_POLISH_UHLAN_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_LIGHT_CAVALRY', '5', '62', 'TECH_MILITARY_SCIENCE', 'RESOURCE_HORSES', 'TRAIT_CIVILIZATION_UNIT_POLISH_UHLAN');

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Combat, MandatoryObsoleteTech, RangedCombat, Range, TraitType, InitialLevel)
VALUES ('UNIT_ZULU_ASSEGAI', '2', '35', 'ADVISOR_CONQUEST', '2', 0, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_ZULU_ASSEGAI_NAME', 'LOC_UNIT_ZULU_ASSEGAI_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_HUNTER', '5', 'TECH_MACHINERY', '15', '2', 'TRAIT_CIVILIZATION_UNIT_ZULU_ASSEGAI', '2');




-- Special Additional Units:

-- Janissary (if Poland DLC)
INSERT INTO Types (Type, Kind) VALUES ('UNIT_JANISSARY', 'KIND_UNIT');

INSERT INTO Types (Type, Kind) VALUES ('RESOURCE_JANISSARY', 'KIND_RESOURCE');

INSERT INTO Resources (ResourceType, Name, ResourceClassType, Frequency) VALUES ('RESOURCE_JANISSARY', 'LOC_RESOURCE_JANISSARY_NAME', 'RESOURCECLASS_STRATEGIC', '0');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('MINOR_CIV_PRESLAV_TRAIT', 'MINOR_CIV_JANISSARY_BONUS');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('MINOR_CIV_YEREVAN_TRAIT', 'MINOR_CIV_JANISSARY_BONUS');

REPLACE INTO TypeTags (Type, Tag)
		SELECT Type, 'CLASS_JANISSARY'
		FROM   TypeTags
		WHERE  Tag = 'CLASS_MELEE' AND Type LIKE 'ABILITY%';

INSERT INTO Units (UnitType, BaseMoves, Cost, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, StrategicResource)
VALUES ('UNIT_JANISSARY', '2', '240', 'ADVISOR_CONQUEST', '2', 1, 'DOMAIN_LAND', 'FORMATION_CLASS_LAND_COMBAT', 'LOC_UNIT_JANISSARY_NAME', 'LOC_UNIT_JANISSARY_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_MELEE', '4', '55', 'TECH_GUNPOWDER', 'RESOURCE_JANISSARY');



-- UnitReplaces
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'UNIT_HELICOPTER');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'UNIT_MUSKETMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_ARABIAN_GHAZI', 'UNIT_MACEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNIT_RANGER');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNIT_RIFLEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_CHINESE_CHOKONU', 'UNIT_CROSSBOWMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'UNIT_ARCHER');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'UNIT_QUADRIREME');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'UNIT_CROSSBOWMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_FRENCH_GENDARME', 'UNIT_KNIGHT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_FRENCH_MARINE', 'UNIT_MUSKETMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNIT_PIKEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_GERMAN_PANZER', 'UNIT_TANK');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_GREEK_ARMATOLOS', 'UNIT_RIFLEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_GREEK_PELTAST', 'UNIT_ARCHER');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNIT_KNIGHT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_INDIAN_SEPOY', 'UNIT_RIFLEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_JAPANESE_SAMURAI', 'UNIT_MACEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_JAPANESE_YAMATO', 'UNIT_BATTLESHIP');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'UNIT_MECHANIZED_INFANTRY');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_KONGO_MEDICINE_MAN', 'UNIT_MEDIC');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'UNIT_SWORDSMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_ROMAN_EQUITE', 'UNIT_HORSEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_ROMAN_ONAGER', 'UNIT_CATAPULT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNIT_MEDIEVAL_HORSEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_RUSSIAN_T34', 'UNIT_TANK');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNIT_KNIGHT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'UNIT_SCOUT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SPANISH_JINETE', 'UNIT_MEDIEVAL_HORSEMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNIT_SPEARMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SUMERIAN_VULTURE', 'UNIT_SWORDSMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_SUMERIAN_WAR_CART', 'UNIT_HEAVY_CHARIOT');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_WOOMERA', 'UNIT_SLINGER');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_AUSTRALIAN_SASR', 'UNIT_MECHANIZED_INFANTRY');

-- DLC
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_AZTEC_JAGUAR', 'UNIT_SWORDSMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'UNIT_MUSKETMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_POLISH_UHLAN', 'UNIT_CAVALRY');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_PERSIAN_WARSHIP', 'UNIT_GALLEY');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'UNIT_SPEARMAN');
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNIT_CATAPULT');


--UnitUpgrades
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'UNIT_RIFLEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'UNIT_FIELD_CANNON');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ARABIAN_GHAZI', 'UNIT_MUSKETMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNIT_INFANTRY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_CHINESE_CHOKONU', 'UNIT_FIELD_CANNON');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'UNIT_CROSSBOWMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'UNIT_FRIGATE');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ENGLISH_IRONSIDE', 'UNIT_TANK');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'UNIT_FIELD_CANNON');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FRENCH_GENDARME', 'UNIT_CUIRASSIER');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_FRENCH_MARINE', 'UNIT_FRENCH_GARDE_IMPERIALE');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNIT_AT_CREW');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GERMAN_PANZER', 'UNIT_MODERN_ARMOR');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GREEK_ARMATOLOS', 'UNIT_INFANTRY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_GREEK_PELTAST', 'UNIT_CROSSBOWMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNIT_CUIRASSIER');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_INDIAN_SEPOY', 'UNIT_INFANTRY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JAPANESE_SOHEI', 'UNIT_MUSKETMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'UNIT_MACEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ROMAN_EQUITE', 'UNIT_MEDIEVAL_HORSEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_ROMAN_ONAGER', 'UNIT_TREBUCHET');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNIT_CAVALRY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_RUSSIAN_T34', 'UNIT_MODERN_ARMOR');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNIT_CUIRASSIER');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'UNIT_EXPLORER');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SPANISH_JINETE', 'UNIT_CAVALRY');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SPANISH_TERCIO', 'UNIT_AT_CREW');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNIT_PIKEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_SUMERIAN_VULTURE', 'UNIT_MACEMAN');

-- DLC
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNIT_KNIGHT');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'UNIT_PIKEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNIT_BOMBARD');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_PERSIAN_WARSHIP', 'UNIT_CARAVEL');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'UNIT_RIFLEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_POLISH_UHLAN', 'UNIT_HELICOPTER');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_JANISSARY', 'UNIT_RIFLEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_AZTEC_JAGUAR', 'UNIT_MACEMAN');
INSERT INTO UnitUpgrades (Unit, UpgradeUnit) VALUES ('UNIT_WOOMERA', 'UNIT_ARCHER');


--UnitAIInfos
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_GHAZI', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_GHAZI', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_GHAZI', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ARABIAN_GHAZI', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_CHINESE_CHOKONU', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_CHINESE_CHOKONU', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_CHINESE_CHOKONU', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_CHINESE_SHIGONG', 'UNITTYPE_CIVILIAN');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_CHINESE_SHIGONG', 'UNITTYPE_SIEGE_SUPPORT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'UNITTYPE_NAVAL');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_IRONSIDE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_IRONSIDE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_IRONSIDE', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_IRONSIDE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_IRONSIDE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_GENDARME', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_GENDARME', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_GENDARME', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_GENDARME', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_GENDARME', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_MARINE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_MARINE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_MARINE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_FRENCH_MARINE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_PANZER', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_PANZER', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_PANZER', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GERMAN_PANZER', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_ARMATOLOS', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_ARMATOLOS', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_ARMATOLOS', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_ARMATOLOS', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_PELTAST', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_PELTAST', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_GREEK_PELTAST', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_SEPOY', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_SEPOY', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_SEPOY', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_INDIAN_SEPOY', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_SOHEI', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_SOHEI', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_SOHEI', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_SOHEI', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_YAMATO', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_YAMATO', 'UNITTYPE_NAVAL');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JAPANESE_YAMATO', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_KONGO_MEDICINE_MAN', 'UNITTYPE_CIVILIAN');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_KONGO_MEDICINE_MAN', 'UNITTYPE_SIEGE_SUPPORT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_NORWEGIAN_ULFHEDNAR', 'UNITTYPE_CIVILIAN');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_NORWEGIAN_ULFHEDNAR', 'UNITTYPE_SIEGE_SUPPORT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_EQUITE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_EQUITE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_EQUITE', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_EQUITE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_EQUITE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_ONAGER', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_ONAGER', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_ONAGER', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_ROMAN_ONAGER', 'UNITTYPE_SIEGE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_T34', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_T34', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_T34', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_RUSSIAN_T34', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_JINETE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_JINETE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_JINETE', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_JINETE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_JINETE', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_TERCIO', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_TERCIO', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_TERCIO', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SPANISH_TERCIO', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_PHALANX', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_VULTURE', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_VULTURE', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_VULTURE', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_SUMERIAN_VULTURE', 'UNITTYPE_MELEE');

-- DLC
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_WOOMERA', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_WOOMERA', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_WOOMERA', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AUSTRALIAN_SASR', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AUSTRALIAN_SASR', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AUSTRALIAN_SASR', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AUSTRALIAN_SASR', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AZTEC_JAGUAR', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AZTEC_JAGUAR', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AZTEC_JAGUAR', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AZTEC_JAGUAR', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AZTEC_WARRIOR_PRIEST', 'UNITTYPE_CIVILIAN');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_AZTEC_WARRIOR_PRIEST', 'UNITTYPE_SIEGE_SUPPORT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_UHLAN', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_UHLAN', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_UHLAN', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_UHLAN', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_POLISH_UHLAN', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JANISSARY', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JANISSARY', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JANISSARY', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_JANISSARY', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNITTYPE_RANGED');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNITTYPE_SIEGE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNITTYPE_CAVALRY');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'UNITTYPE_LAND_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_WARSHIP', 'UNITAI_COMBAT');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_WARSHIP', 'UNITAI_EXPLORE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_WARSHIP', 'UNITTYPE_MELEE');
INSERT INTO UnitAIInfos (UnitType, AiType) VALUES ('UNIT_PERSIAN_WARSHIP', 'UNITTYPE_NAVAL');


-- Unit Classes
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'CLASS_AMERICAN_AH64_APACHE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'CLASS_HELICOPTER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AMERICAN_AH64_APACHE', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AMERICAN_MINUTEMAN', 'CLASS_MINUTEMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'CLASS_CAMEL_ARCHER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ARABIAN_CAMEL_ARCHER', 'CLASS_RANGED_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ARABIAN_GHAZI', 'CLASS_GHAZI');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ARABIAN_GHAZI', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'CLASS_BANDEIRANTE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_BRAZILIAN_BANDEIRANTE', 'CLASS_RECON');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'CLASS_FATHERLAND_VOLUNTEER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_CHINESE_CHOKONU', 'CLASS_CHOKONU');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_CHINESE_CHOKONU', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_CHINESE_SHIGONG', 'CLASS_SHIGONG');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'CLASS_HYKSOS_BOWMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_EGYPTIAN_HYKSOS_BOWMAN', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'CLASS_NAVAL_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_EGYPTIAN_WAR_GALLEY', 'CLASS_WAR_GALLEY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ENGLISH_IRONSIDE', 'CLASS_ENGLISH_IRONSIDE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ENGLISH_IRONSIDE', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'CLASS_LONGBOWMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ENGLISH_LONGBOWMAN', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_FRENCH_GENDARME', 'CLASS_GENDARME');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_FRENCH_GENDARME', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_FRENCH_MARINE', 'CLASS_FRENCH_MARINE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_FRENCH_MARINE', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GERMAN_LANDSKNECHT', 'CLASS_LANDSKNECHT');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GERMAN_PANZER', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GERMAN_PANZER', 'CLASS_HEAVY_CHARIOT');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GERMAN_PANZER', 'CLASS_PANZER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GREEK_ARMATOLOS', 'CLASS_ARMATOLOS');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GREEK_ARMATOLOS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GREEK_PELTAST', 'CLASS_PELTAST');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_GREEK_PELTAST', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_INDIAN_MUGHAL_SOWAR', 'CLASS_MUGHAL_SOWAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_INDIAN_SEPOY', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_INDIAN_SEPOY', 'CLASS_SEPOY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_JAPANESE_SOHEI', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_JAPANESE_SOHEI', 'CLASS_PLUS_10_DEFENDER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_JAPANESE_YAMATO', 'CLASS_ANTI_AIR');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_JAPANESE_YAMATO', 'CLASS_NAVAL_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_JAPANESE_YAMATO', 'CLASS_YAMATO');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'CLASS_GARDE_REPUBLICAINE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_KONGO_GARDE_REPUBLICAINE', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_KONGO_MEDICINE_MAN', 'CLASS_MEDIC');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_KONGO_MEDICINE_MAN', 'CLASS_MEDICINE_MAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MEDIEVAL_HORSEMAN', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'CLASS_HIRDMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_NORWEGIAN_HIRDMAN', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_NORWEGIAN_ULFHEDNAR', 'CLASS_NORWEGIAN_ULFHEDNAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ROMAN_EQUITE', 'CLASS_EQUITE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ROMAN_EQUITE', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ROMAN_ONAGER', 'CLASS_ONAGER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_ROMAN_ONAGER', 'CLASS_SIEGE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'CLASS_DRUZHINA');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_RUSSIAN_DRUZHINA', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_RUSSIAN_T34', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_RUSSIAN_T34', 'CLASS_HEAVY_CHARIOT');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_RUSSIAN_T34', 'CLASS_T34');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SCYTHIAN_AMAZON', 'CLASS_AMAZON');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SCYTHIAN_AMAZON', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'CLASS_AMAZON_SCOUT');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'CLASS_RECON');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SCYTHIAN_AMAZON_SCOUT', 'CLASS_REVEAL_STEALTH');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SPANISH_JINETE', 'CLASS_JINETE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SPANISH_JINETE', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SPANISH_TERCIO', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SPANISH_TERCIO', 'CLASS_TERCIO');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SUMERIAN_PHALANX', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SUMERIAN_PHALANX', 'CLASS_PHALANX');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SUMERIAN_VULTURE', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_SUMERIAN_VULTURE', 'CLASS_VULTURE');

-- DLC
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_WOOMERA', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_WOOMERA', 'CLASS_WOOMERA');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AUSTRALIAN_SASR', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AUSTRALIAN_SASR', 'CLASS_SASR');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AZTEC_JAGUAR', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AZTEC_JAGUAR', 'CLASS_CAPTURE_WORKER');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AZTEC_JAGUAR', 'CLASS_JAGUAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_AZTEC_WARRIOR_PRIEST', 'CLASS_WARRIOR_PRIEST');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_POLISH_CHOSEN_INFANTRY', 'CLASS_CHOSEN_INFANTRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_POLISH_UHLAN', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_POLISH_UHLAN', 'CLASS_UHLAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_JANISSARY', 'CLASS_JANISSARY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'CLASS_SIEGE');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MACEDONIAN_BALLISTA', 'CLASS_BALLISTA');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_PERSIAN_CATAPHRACT', 'CLASS_CATAPHRACT');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_MACEDONIAN_PEZHETAIROS', 'CLASS_PEZHETAIROS');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_PERSIAN_WARSHIP', 'CLASS_PERSIAN_WARSHIP');
INSERT INTO TypeTags (Type, Tag) VALUES ('UNIT_PERSIAN_WARSHIP', 'CLASS_NAVAL_MELEE');


--Improvement_ValidBuildUnits
INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType) VALUES ('IMPROVEMENT_FORT', 'UNIT_BRAZILIAN_BANDEIRANTE');

--Unit_BuildingPrereqs
INSERT INTO Unit_BuildingPrereqs (Unit, PrereqBuilding) VALUES ('UNIT_CHINESE_SHIGONG', 'BUILDING_BARRACKS');







-- UNCONDITIONALS
-- UNCONDITIONALS
-- UNCONDITIONALS


-- Classes
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_AMAZON', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_AMAZON_SCOUT', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_AMERICAN_AH64_APACHE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_ARMATOLOS', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_AUTOMATIC_GUN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_BANDEIRANTE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_CAMEL_ARCHER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_CHOKONU', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_DRUZHINA', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_ENGLISH_IRONSIDE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_EQUITE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_EXPLORER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_FATHERLAND_VOLUNTEER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_FRENCH_MARINE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_GARDE_REPUBLICAINE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_GENDARME', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_GHAZI', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_HIRDMAN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_HYKSOS_BOWMAN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_JINETE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_LANDSKNECHT', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_LONGBOWMAN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_MEDICINE_MAN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_MINUTEMAN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_MUGHAL_SOWAR', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_NORWEGIAN_ULFHEDNAR', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_ONAGER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_PANZER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_PELTAST', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_PHALANX', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_PLUS_10_DEFENDER', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_SEPOY', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_SHIGONG', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_SNIPER_MOAR', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_T34', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_TERCIO', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_VULTURE', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_WAR_GALLEY', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_YAMATO', 'ABILITY_CLASS');

--DLC
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_WOOMERA', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_SASR', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_JAGUAR', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_WARRIOR_PRIEST', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_CHOSEN_INFANTRY', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_UHLAN', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_JANISSARY', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_CATAPHRACT', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_BALLISTA', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_PEZHETAIROS', 'ABILITY_CLASS');
INSERT INTO Tags (Tag, Vocabulary) VALUES ('CLASS_PERSIAN_WARSHIP', 'ABILITY_CLASS');


--Types (KIND_ABILITY)
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PELTAST', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CAMEL_ARCHER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MINUTEMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CHOKONU', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PHALANX', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_EQUITE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_JINETE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_HIRDMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_MUGHAL_SOWAR', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_LONGBOWMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_DRUZHINA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PLUS_10_DEFENDER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_AMAZON', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_HYKSOS_BOWMAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GENDARME', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_BANDEIRANTE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_TERCIO', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SEPOY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_ONAGER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PANZER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_YAMATO', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_WAR_GALLEY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_AMAZON_SCOUT', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_VULTURE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_T34', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_FRENCH_MARINE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_GHAZI', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_ARMATOLOS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_LANDSKNECHT', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SNIPER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_EXPLORER', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_ENGLISH_IRONSIDE', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'KIND_ABILITY');

--DLC
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_WOOMERA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_SASR', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_JAGUAR', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CHOSEN_INFANTRY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_UHLAN', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_HEAL_ON_VICTORY', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CATAPHRACT', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PERSIAN_WARSHIP', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_BALLISTA', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_PEZHETAIROS', 'KIND_ABILITY');
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'KIND_ABILITY');


-- Class Abilities
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_AMAZON', 'CLASS_AMAZON');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_AMAZON_SCOUT', 'CLASS_AMAZON_SCOUT');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'CLASS_AMERICAN_AH64_APACHE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ARMATOLOS', 'CLASS_ARMATOLOS');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'CLASS_AUTOMATIC_GUN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_BANDEIRANTE', 'CLASS_BANDEIRANTE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CAMEL_ARCHER', 'CLASS_CAMEL_ARCHER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CHOKONU', 'CLASS_CHOKONU');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_DRUZHINA', 'CLASS_DRUZHINA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ENGLISH_IRONSIDE', 'CLASS_ENGLISH_IRONSIDE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_EQUITE', 'CLASS_EQUITE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_EXPLORER', 'CLASS_EXPLORER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'CLASS_FATHERLAND_VOLUNTEER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_FRENCH_MARINE', 'CLASS_FRENCH_MARINE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'CLASS_GARDE_REPUBLICAINE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GENDARME', 'CLASS_GENDARME');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_GHAZI', 'CLASS_GHAZI');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_HIRDMAN', 'CLASS_HIRDMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_HYKSOS_BOWMAN', 'CLASS_HYKSOS_BOWMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_IGNORE_TERRAIN_COST', 'CLASS_MUGHAL_SOWAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_JINETE', 'CLASS_JINETE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_LANDSKNECHT', 'CLASS_LANDSKNECHT');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_LONGBOWMAN', 'CLASS_LONGBOWMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MINUTEMAN', 'CLASS_MINUTEMAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_MUGHAL_SOWAR', 'CLASS_MUGHAL_SOWAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_ONAGER', 'CLASS_ONAGER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PANZER', 'CLASS_PANZER');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PELTAST', 'CLASS_PELTAST');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PHALANX', 'CLASS_PHALANX');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PLUS_10_DEFENDER', 'CLASS_PLUS_10_DEFENDER');
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
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SEPOY', 'CLASS_SEPOY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SNIPER', 'CLASS_SNIPER_MOAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_T34', 'CLASS_T34');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_TERCIO', 'CLASS_TERCIO');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_VULTURE', 'CLASS_VULTURE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_WAR_GALLEY', 'CLASS_WAR_GALLEY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_YAMATO', 'CLASS_YAMATO');

-- DLC
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_SASR', 'CLASS_SASR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_WOOMERA', 'CLASS_WOOMERA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_JAGUAR', 'CLASS_JAGUAR');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CHOSEN_INFANTRY', 'CLASS_CHOSEN_INFANTRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_UHLAN', 'CLASS_UHLAN');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_HEAL_ON_VICTORY', 'CLASS_JANISSARY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_BALLISTA', 'CLASS_BALLISTA');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_CATAPHRACT', 'CLASS_CATAPHRACT');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PEZHETAIROS', 'CLASS_PEZHETAIROS');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_PERSIAN_WARSHIP', 'CLASS_PERSIAN_WARSHIP');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_MELEE');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_ANTI_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_RANGED');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_LIGHT_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_HEAVY_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_RANGED_CAVALRY');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_RECON');
INSERT INTO TypeTags (Type, Tag) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'CLASS_SIEGE');


-- Abilities
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_AMAZON', 'LOC_ABILITY_AMAZON_NAME', 'LOC_ABILITY_AMAZON_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_AMAZON_SCOUT', 'LOC_ABILITY_AMAZON_SCOUT_NAME', 'LOC_ABILITY_AMAZON_SCOUT_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'LOC_ABILITY_AMERICAN_AH64_APACHE_NAME', 'LOC_ABILITY_AMERICAN_AH64_APACHE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_ARMATOLOS', 'LOC_ABILITY_ARMATOLOS_NAME', 'LOC_ABILITY_ARMATOLOS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'LOC_ABILITY_AUTOMATIC_GUNFIRE', 'LOC_ABILITY_AUTOMATIC_GUNFIRE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_BANDEIRANTE', 'LOC_ABILITY_BANDEIRANTE_NAME', 'LOC_ABILITY_BANDEIRANTE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CAMEL_ARCHER', 'LOC_ABILITY_CAMEL_ARCHER_NAME', 'LOC_ABILITY_CAMEL_ARCHER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CHOKONU', 'LOC_ABILITY_CHOKONU_NAME', 'LOC_ABILITY_CHOKONU_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_DRUZHINA', 'LOC_ABILITY_DRUZHINA_NAME', 'LOC_ABILITY_DRUZHINA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_ENGLISH_IRONSIDE', 'LOC_ABILITY_ENGLISH_IRONSIDE_NAME', 'LOC_ABILITY_ENGLISH_IRONSIDE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_EQUITE', 'LOC_ABILITY_EQUITE_NAME', 'LOC_ABILITY_EQUITE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_EXPLORER', 'LOC_ABILITY_EXPLORER', 'LOC_ABILITY_EXPLORER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_FATHERLAND_VOLUNTEER', 'LOC_ABILITY_FATHERLAND_VOLUNTEER_NAME', 'LOC_ABILITY_FATHERLAND_VOLUNTEER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_FRENCH_MARINE', 'LOC_ABILITY_FRENCH_MARINE_NAME', 'LOC_ABILITY_FRENCH_MARINE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GARDE_REPUBLICAINE', 'LOC_ABILITY_GARDE_REPUBLICAINE_NAME', 'LOC_ABILITY_GARDE_REPUBLICAINE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GENDARME', 'LOC_ABILITY_GENDARME_NAME', 'LOC_ABILITY_GENDARME_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_GHAZI', 'LOC_ABILITY_GHAZI_NAME', 'LOC_ABILITY_GHAZI_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_HIRDMAN', 'LOC_ABILITY_HIRDMAN_NAME', 'LOC_ABILITY_HIRDMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_HYKSOS_BOWMAN', 'LOC_ABILITY_HYKSOS_BOWMAN_NAME', 'LOC_ABILITY_HYKSOS_BOWMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_JINETE', 'LOC_ABILITY_JINETE_NAME', 'LOC_ABILITY_JINETE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_LANDSKNECHT', 'LOC_ABILITY_LANDSKNECHT_NAME', 'LOC_ABILITY_LANDSKNECHT_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_LONGBOWMAN', 'LOC_ABILITY_LONGBOWMAN_NAME', 'LOC_ABILITY_LONGBOWMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MINUTEMAN', 'LOC_ABILITY_MINUTEMAN_NAME', 'LOC_ABILITY_MINUTEMAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_MUGHAL_SOWAR', 'LOC_ABILITY_MUGHAL_SOWAR_NAME', 'LOC_ABILITY_MUGHAL_SOWAR_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_ONAGER', 'LOC_ABILITY_ONAGER_NAME', 'LOC_ABILITY_ONAGER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PANZER', 'LOC_ABILITY_PANZER_NAME', 'LOC_ABILITY_PANZER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PELTAST', 'LOC_ABILITY_PELTAST', 'LOC_ABILITY_PELTAST_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PHALANX', 'LOC_ABILITY_PHALANX_NAME', 'LOC_ABILITY_PHALANX_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PLUS_10_DEFENDER', 'LOC_ABILITY_PLUS_10_DEFENDER_NAME', 'LOC_ABILITY_PLUS_10_DEFENDER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'LOC_ABILITY_RECEIVE_MEDICINE_MAN_BONUS_NAME', 'LOC_ABILITY_RECEIVE_MEDICINE_MAN_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'LOC_ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS_NAME', 'LOC_ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'LOC_ABILITY_RECEIVE_SHIGONG_BONUS', 'LOC_ABILITY_RECEIVE_SHIGONG_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SEPOY', 'LOC_ABILITY_SEPOY_NAME', 'LOC_ABILITY_SEPOY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SNIPER', 'LOC_ABILITY_SNIPER', 'LOC_ABILITY_SNIPER_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_T34', 'LOC_ABILITY_T34_NAME', 'LOC_ABILITY_T34_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_TERCIO', 'LOC_ABILITY_TERCIO_NAME', 'LOC_ABILITY_TERCIO_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_VULTURE', 'LOC_ABILITY_VULTURE_NAME', 'LOC_ABILITY_VULTURE_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_WAR_GALLEY', 'LOC_ABILITY_WAR_GALLEY_NAME', 'LOC_ABILITY_WAR_GALLEY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_YAMATO', 'LOC_ABILITY_YAMATO_NAME', 'LOC_ABILITY_YAMATO_DESCRIPTION');

--DLC
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_WOOMERA', 'LOC_ABILITY_WOOMERA', 'LOC_ABILITY_WOOMERA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_SASR', 'LOC_ABILITY_SASR', 'LOC_ABILITY_SASR_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_JAGUAR', 'LOC_ABILITY_JAGUAR', 'LOC_ABILITY_JAGUAR_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'LOC_ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'LOC_ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CHOSEN_INFANTRY', 'LOC_ABILITY_CHOSEN_INFANTRY', 'LOC_ABILITY_CHOSEN_INFANTRY_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_UHLAN', 'LOC_ABILITY_UHLAN', 'LOC_ABILITY_UHLAN_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_HEAL_ON_VICTORY', 'LOC_PLACEHOLDER', 'LOC_PLACEHOLDER');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_BALLISTA', 'LOC_ABILITY_BALLISTA', 'LOC_ABILITY_BALLISTA_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_CATAPHRACT', 'LOC_ABILITY_CATAPHRACT', 'LOC_ABILITY_CATAPHRACT_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PEZHETAIROS', 'LOC_ABILITY_PEZHETAIROS', 'LOC_ABILITY_PEZHETAIROS_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_PERSIAN_WARSHIP', 'LOC_ABILITY_PERSIAN_WARSHIP', 'LOC_ABILITY_PERSIAN_WARSHIP_DESCRIPTION');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'LOC_ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'LOC_ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS_DESCRIPTION');


-- AbilityModifiers
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_AMAZON', 'COSSACK_MOVE_AND_ATTACK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_AMERICAN_AH64_APACHE', 'PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ANTI_CAVALRY', 'PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ANTI_CAVALRY', 'PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ARMATOLOS', 'ALPINE_IGNORE_HILLS_MOVEMENT_PENALTY');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ARMATOLOS', 'PLUS_5_HILLS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_AUTOMATIC_GUNFIRE', 'PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BANDEIRANTE', 'BANDEIRANTE_POST_COMBAT_CULTURE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BANDEIRANTE', 'BANDEIRANTE_POST_COMBAT_GOLD');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CAMEL_ARCHER', 'PLUS_8_DESERT_PLAINS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CHOKONU', 'EXPERT_MARKSMAN_ADDITIONAL_ATTACK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_DRUZHINA', 'PLUS_4_VERSUS_MELEE_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_DRUZHINA', 'VULTURE_BONUS_VS_DAMAGED');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ENGLISH_IRONSIDE', 'COSSACK_LOCAL_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_ENGLISH_IRONSIDE', 'PLUS_5_OTHER_RELIGION_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EQUITE', 'EQUITE_POST_COMBAT_GOLD');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EQUITE', 'PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EXPLORER', 'MOD_IGNORE_CROSSING_RIVERS_COST');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_EXPLORER', 'REDCOAT_DISEMBARK');
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
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_LONGBOWMAN', 'PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_LONGBOWMAN', 'PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MINUTEMAN', 'COSSACK_LOCAL_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MINUTEMAN', 'PLUS_5_FOREST_JUNGLE_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_MUGHAL_SOWAR', 'PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PANZER', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PHALANX', 'PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PLUS_10_DEFENDER', 'PLUS_10_WHEN_DEFENDING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_MEDICINE_MAN_BONUS', 'RECEIVE_MEDICINE_MAN_FAITH_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS', 'RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'RECEIVE_SHIGONG_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_SHIGONG_BONUS', 'RECEIVE_SHIGONG_EXPERIENCE_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SEPOY', 'SAMURAI_NO_REDUCTION_DAMAGE');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_T34', 'COSSACK_LOCAL_COMBAT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_VULTURE', 'VULTURE_BONUS_VS_DAMAGED');

--DLC
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SASR', 'IGNOREZOC_IGNORE_ZOC');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_SASR', 'PLUS_5_DESERT_PLAINS_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'UNIT_STRONG_WHEN_ATTACKING');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'UNIT_WEAK_WHEN_DEFENDING');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'JAGUAR_IGNORE_JUNGLE_MOVEMENT_PENALTY');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_JAGUAR', 'RANGER_IGNORE_FOREST_MOVEMENT_PENALTY');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS', 'RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CHOSEN_INFANTRY', 'PLUS_10_HEAL_PER_TURN_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_UHLAN', 'ONE_HUNDRED_PERCENT_FLANKING_BONUS_MODIFIER');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_HEAL_ON_VICTORY', 'HEAL_AFTER_DEFEATING_UNIT');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PEZHETAIROS', 'PLUS_10_VERSUS_MELEE_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_PERSIAN_WARSHIP', 'PLUS_5_WHEN_ATTACKING_COMBAT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS', 'RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BALLISTA', 'PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_BALLISTA', 'MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS');


--Modifiers
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('50_PERCENT_POST_COMBAT_FAITH', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('BANDEIRANTE_POST_COMBAT_CULTURE', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('BANDEIRANTE_POST_COMBAT_GOLD', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('EQUITE_POST_COMBAT_GOLD', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'ROUGH_RIDER_PLOT_IS_CAPITAL_CONTINENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('HIRDMAN_POST_COMBAT_CULTURE', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'ROUGH_RIDER_PLOT_IS_CAPITAL_CONTINENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_HEAVY_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_WHEN_DEFENDING_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLAYER_IS_DEFENDER_REQUIREMENTS_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL', 'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN', 'PLOT_IS_WITHIN_1_OF_STEPWELL_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_HEAVY_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_LIGHT_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_NEXT_TO_LONGBOWMAN_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_MELEE_CAVALRY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_4_VERSUS_MELEE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'THRUST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ROUGH_RIDER_PLOT_IS_CAPITAL_CONTINENT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_FOREIGN_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'REDCOAT_PLOT_IS_FOREIGN_CONTINENT');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_FOREST_JUNGLE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_HILLS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_HILLS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_NOT_OWNER_TERRITORY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'NOT_IN_OWNER_TERRITORY_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'REQUIREMENTS_OPPONENT_IS_OTHER_RELIGION');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_WHEN_ATTACKING_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLAYER_IS_ATTACKER_REQUIREMENTS_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_WITHIN_8_OF_ZIGGURAT_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_8_DESERT_PLAINS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'ADJACENT_MEDICINE_MAN_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS_NOT_DAMAGED');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS', 'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD', 'ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ADJACENT_SHIGONG_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_SHIGONG_EXPERIENCE_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER', 'ADJACENT_SHIGONG_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC_REQUIREMENTS_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL', 'MODIFIER_UNIT_ADJUST_ATTACK_RANGE', 'SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET');

--DLC
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_COMBAT_STRENGTH_NON_DISTRICT', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'NON_DISTRICT_REQUIREMENT_SET');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_5_DESERT_PLAINS_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('JAGUAR_IGNORE_JUNGLE_MOVEMENT_PENALTY', 'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_TERRAIN_COST');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL', 'ADJACENT_WARRIOR_PRIEST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_NO_REDUCTION_DAMAGE', 'ADJACENT_WARRIOR_PRIEST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('PLUS_10_HEAL_PER_TURN_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('ONE_HUNDRED_PERCENT_FLANKING_BONUS_MODIFIER', 'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('MINOR_CIV_JANISSARY_BONUS', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 'PLAYER_IS_SUZERAIN');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('JANISSARY_RESOURCE_BONUS', 'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('PLUS_10_VERSUS_MELEE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'THRUST_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES ('RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 'ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS');


--ModifierStrings
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Preview', 'PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_WHEN_DEFENDING_COMBAT_BONUS', 'Preview', 'PLUS_10_WHEN_DEFENDING_COMBAT_BONUS_DESC');
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
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS', 'Preview', 'PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS', 'Preview', 'RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS', 'Preview', 'RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS', 'Preview', 'RECEIVE_SHIGONG_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC', 'Preview', '+12 [ICON_Ranged] Ranged strength');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL', 'Preview', '+1 [ICON_Ranged] Range on hill');

--DLC
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS', 'Preview', 'PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS', 'Preview', 'MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_10_VERSUS_MELEE_COMBAT_BONUS', 'Preview', 'PLUS_10_VERSUS_MELEE_COMBAT_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS', 'Preview', 'RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_COMBAT_STRENGTH_NON_DISTRICT', 'Preview', 'PLUS_5_COMBAT_STRENGTH_NON_DISTRICT_DESC');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES ('PLUS_5_DESERT_PLAINS_COMBAT_BONUS', 'Preview', 'PLUS_5_DESERT_PLAINS_COMBAT_BONUS_DESC');


--ModifierArguments
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('50_PERCENT_POST_COMBAT_FAITH_ON_CAPITAL_CONTINENT', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_CULTURE', 'PercentDefeatedStrength', '25');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_CULTURE', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_GOLD', 'PercentDefeatedStrength', '25');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('BANDEIRANTE_POST_COMBAT_GOLD', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('EQUITE_POST_COMBAT_GOLD', 'PercentDefeatedStrength', '33');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('EQUITE_POST_COMBAT_GOLD', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('HIRDMAN_POST_COMBAT_CULTURE', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('HIRDMAN_POST_COMBAT_CULTURE', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_WHEN_DEFENDING_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL', 'Amount', '15');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_HEAL_PER_TURN_BONUS_FROM_STEPWELL', 'Type', 'ALL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_15_VS_HEAVY_CAVALRY_COMBAT_BONUS', 'Amount', '15');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_20_VS_LIGHT_CAVALRY_COMBAT_BONUS', 'Amount', '20');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_LONGBOWMAN_ADJACENCY_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_VERSUS_MELEE_CAVALRY_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_4_VERSUS_MELEE_COMBAT_BONUS', 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_CAPITAL_CONTINENT_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_EQUITE_ADJACENCY_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_FOREIGN_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_FOREST_JUNGLE_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_HILLS_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_NOT_OWNER_TERRITORY_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_OTHER_RELIGION_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_WHEN_ATTACKING_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_ZIGURRAT_PROXIMITY_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_8_DESERT_PLAINS_COMBAT_BONUS', 'Amount', '8');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_X_VS_MELEE_ANTICAV_LIGHTCAV_COMBAT_BONUS', 'Amount', '8');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_MEDICINE_MAN_FAITH_BONUS', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS', 'PercentDefeatedStrength', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_NORWEGIAN_ULFHEDNAR_FAITH_BONUS', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SHIGONG_COMBAT_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_SHIGONG_EXPERIENCE_BONUS', 'Amount', '50');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC', 'Amount', '12');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL', 'Amount', '1');

--DLC
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_5_COMBAT_STRENGTH_NON_DISTRICT', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JAGUAR_IGNORE_JUNGLE_MOVEMENT_PENALTY', 'Ignore', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JAGUAR_IGNORE_JUNGLE_MOVEMENT_PENALTY', 'Type', 'JUNGLE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_GREAT_GENERAL_POINTS_BONUS', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_GENERAL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_WARRIOR_PRIEST_NO_REDUCTION_WHEN_DAMAGED_BONUS', 'NoReduction', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_HEAL_PER_TURN_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_HEAL_PER_TURN_BONUS', 'Type', 'ALL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ONE_HUNDRED_PERCENT_FLANKING_BONUS_MODIFIER', 'Percent', '100');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MINOR_CIV_JANISSARY_BONUS', 'ModifierId', 'JANISSARY_RESOURCE_BONUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JANISSARY_RESOURCE_BONUS', 'ResourceType', 'RESOURCE_JANISSARY');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JANISSARY_RESOURCE_BONUS', 'Amount', '2');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_10_VERSUS_MELEE_COMBAT_BONUS', 'Amount', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_PERSIAN_WARSHIP_COMBAT_STRENGTH_BONUS', 'Amount', '5');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('RECEIVE_PERSIAN_WARSHIP_ADJACENT_MOVEMENT_BONUS', 'Amount', '2');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS', 'Amount', '17');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS', 'Amount', '-10');


--RequirementSets
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_MEDICINE_MAN_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS_NOT_DAMAGED', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_SHIGONG_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('NOT_IN_OWNER_TERRITORY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_HEAVY_CAVALRY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_LIGHT_CAVALRY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLAYER_IS_ATTACKER_REQUIREMENTS_SET', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLAYER_IS_DEFENDER_REQUIREMENTS_SET', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_HILLS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_NEXT_TO_LONGBOWMAN_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_WITHIN_1_OF_STEPWELL_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLOT_IS_WITHIN_8_OF_ZIGGURAT_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC_REQUIREMENTS_SET', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET', 'REQUIREMENTSET_TEST_ANY');

--DLC
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('NON_DISTRICT_REQUIREMENT_SET', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_WARRIOR_PRIEST_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS', 'REQUIREMENTSET_TEST_ANY');


--RequirementSetRequirements
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_MEDICINE_MAN_REQUIREMENTS', 'ADJACENT_FRIENDLY_MEDICINE_MAN_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS', 'ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS_NOT_DAMAGED', 'ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_NORWEGIAN_ULFHEDNAR_REQUIREMENTS_NOT_DAMAGED', 'OPPONENT_IS_NOT_DAMAGED_UNIT_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_SHIGONG_REQUIREMENTS', 'ADJACENT_FRIENDLY_SHIGONG_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_REQUIREMENTS', 'ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_REQUIREMENTS', 'OPPONENT_IS_DAMAGED_UNIT_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NORWEGIAN_ULFHEDNAR_DAMAGED_UNITS_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NOT_IN_OWNER_TERRITORY_REQUIREMENTS', 'UNIT_NOT_IN_OWNER_TERRITORY_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_HEAVY_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_HC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_LIGHT_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'ANTI_SPEAR_OPPONENT_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_ANTICAV_LIGHTCAV_REQUIREMENTS', 'OPPONENT_MELEE_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_HC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'ANTI_CAVALRY_OPPONENT_REQUIREMENT_LC');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('OPPONENT_MELEE_CAVALRY_REQUIREMENTS', 'OPPONENT_MELEE_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLAYER_IS_ATTACKER_REQUIREMENTS_SET', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLAYER_IS_DEFENDER_REQUIREMENTS_SET', 'PLAYER_IS_DEFENDER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_DESERT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_DESERT_HILLS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_PLAINS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_DESERT_OR_PLAINS_REQUIREMENTS', 'REQUIRES_PLOT_HAS_PLAINS_HILLS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS', 'PLOT_IS_FOREST_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_FOREST_OR_JUNGLE_REQUIREMENTS', 'PLOT_IS_JUNGLE_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_HILLS_REQUIREMENTS', 'PLOT_IS_HILLS_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_LONGBOWMAN_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_LONGBOWMAN');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_LEGION');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_NEXT_TO_ROMAN_EARLY_MELEE_REQUIREMENTS', 'REQUIRES_UNIT_NEXT_TO_WARRIOR');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_WITHIN_1_OF_STEPWELL_REQUIREMENTS', 'REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLOT_IS_WITHIN_8_OF_ZIGGURAT_REQUIREMENTS', 'REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC_REQUIREMENTS_SET', 'OPPONENT_IS_LAND_UNIT_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC_REQUIREMENTS_SET', 'OPPONENT_IS_NOT_HEAVY_CAVALRY_UNIT_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_12_RANGED_VS_LAND_NON_HC_REQUIREMENTS_SET', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET', 'PLOT_IS_DESERT_HILLS_TERRAIN_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET', 'PLOT_IS_GRASS_HILLS_TERRAIN_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET', 'PLOT_IS_PLAINS_HILLS_TERRAIN_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET', 'PLOT_IS_SNOW_HILLS_TERRAIN_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('SNIPER_PLUS_1_RANGE_ON_HILL_REQUIREMENTS_SET', 'PLOT_IS_TUNDRA_HILLS_TERRAIN_REQUIREMENT');

--DLC
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NON_DISTRICT_REQUIREMENT_SET', 'PLOT_IS_NOT_DEFENDED_DISTRICT_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('NON_DISTRICT_REQUIREMENT_SET', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_WARRIOR_PRIEST_REQUIREMENTS', 'ADJACENT_FRIENDLY_WARRIOR_PRIEST_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('PLUS_7_WHEN_ATTACKING_NON_DISTRICT_BONUS_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_NON_DISTRICT_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS_REQUIREMENTS', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('MINUS_7_WHEN_ATTACKING_DISTRICT_MALUS_REQUIREMENTS', 'DEFENDER_IS_OCCUPYING_DISTRICT_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('ADJACENT_PERSIAN_WARSHIP_REQUIREMENTS', 'ADJACENT_FRIENDLY_PERSIAN_WARSHIP_REQUIREMENT');


--Requirements
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_MEDICINE_MAN_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_SHIGONG_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_COLONIAL_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_HOLY_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_RECONQUEST_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLAYER_DECLARED_TERRITORIAL_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_PLAINS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_HAS_PLAINS_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_LEGION', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_LONGBOWMAN', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('REQUIRES_UNIT_NEXT_TO_WARRIOR', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('OPPONENT_IS_NOT_DAMAGED_UNIT_REQUIREMENT', 'REQUIREMENT_UNIT_DAMAGE_MINIMUM', 1);
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('UNIT_NOT_IN_OWNER_TERRITORY_REQUIREMENT', 'REQUIREMENT_UNIT_IN_OWNER_TERRITORY', 1);

--DLC
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('PLOT_IS_NOT_DEFENDED_DISTRICT_REQUIREMENTS', 'REQUIREMENT_PLOT_DISTRICT_IS_DEFENDED', 1);
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_WARRIOR_PRIEST_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES');
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('DEFENDER_IS_OCCUPYING_NON_DISTRICT_REQUIREMENT', 'REQUIREMENT_PLOT_HAS_ANY_DISTRICT', 1);
INSERT INTO Requirements (RequirementId, RequirementType) VALUES ('ADJACENT_FRIENDLY_PERSIAN_WARSHIP_REQUIREMENT', 'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES');


--RequirementArguments
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_MEDICINE_MAN_REQUIREMENT', 'Tag', 'CLASS_MEDICINE_MAN');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_NORWEGIAN_ULFHEDNAR_REQUIREMENT', 'Tag', 'CLASS_NORWEGIAN_ULFHEDNAR');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_SHIGONG_REQUIREMENT', 'Tag', 'CLASS_SHIGONG');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('OPPONENT_IS_NOT_DAMAGED_UNIT_REQUIREMENT', 'MinimumAmount', '1');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_PLAINS', 'TerrainType', 'TERRAIN_PLAINS');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_HAS_PLAINS_HILLS', 'TerrainType', 'TERRAIN_PLAINS_HILLS');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'ImprovementType', 'IMPROVEMENT_ZIGGURAT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'MaxRange', '8');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_EIGHT_OF_ZIGGURAT', 'MinRange', '0');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'ImprovementType', 'IMPROVEMENT_STEPWELL');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'MaxRange', '1');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_PLOT_WITHIN_ONE_OF_STEPWELL', 'MinRange', '0');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_LEGION', 'UnitType', 'UNIT_ROMAN_LEGION');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_LONGBOWMAN', 'UnitType', 'UNIT_ENGLISH_LONGBOWMAN');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_NEXT_TO_WARRIOR', 'UnitType', 'UNIT_WARRIOR');

--DLC
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_WARRIOR_PRIEST_REQUIREMENT', 'Tag', 'CLASS_WARRIOR_PRIEST');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('ADJACENT_FRIENDLY_PERSIAN_WARSHIP_REQUIREMENT', 'Tag', 'CLASS_PERSIAN_WARSHIP');






-- Hunter Promotion - does this work with Unit Upgrades?

INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId) VALUES ('PROMOTION_VOLLEY_HUNTER', 'PLUS_5_COMBAT_STRENGTH_NON_DISTRICT');


INSERT INTO Types (Type, Kind) VALUES ('PROMOTION_CLASS_HUNTER','KIND_PROMOTION_CLASS');

INSERT INTO Types (Type, Kind)
		SELECT UnitPromotionType || '_HUNTER','KIND_PROMOTION'
		FROM UnitPromotions
		WHERE PromotionClass = 'PROMOTION_CLASS_RANGED';

INSERT INTO UnitPromotionClasses (PromotionClassType, Name)
VALUES ('PROMOTION_CLASS_HUNTER', 'Hunter');

INSERT INTO UnitPromotions(UnitPromotionType, Name, Description, Level, Column, PromotionClass)
		SELECT UnitPromotionType || '_HUNTER', Name, Description, Level, Column, 'PROMOTION_CLASS_HUNTER'
FROM UnitPromotions
WHERE PromotionClass = 'PROMOTION_CLASS_RANGED';

INSERT INTO UnitPromotionPrereqs(UnitPromotion, PrereqUnitPromotion)
		SELECT UnitPromotion || '_HUNTER',  PrereqUnitPromotion || '_HUNTER'
		FROM UnitPromotionPrereqs
		WHERE UnitPromotion IN (SELECT UnitPromotionType FROM UnitPromotions WHERE PromotionClass =  'PROMOTION_CLASS_RANGED')
					OR PrereqUnitPromotion IN (SELECT UnitPromotionType FROM UnitPromotions WHERE PromotionClass =  'PROMOTION_CLASS_RANGED');

INSERT INTO UnitPromotionModifiers(UnitPromotionType, ModifierId)
		SELECT UnitPromotionType || '_HUNTER',  ModifierId
		FROM   UnitPromotionModifiers
		WHERE UnitPromotionType IN (SELECT UnitPromotionType FROM UnitPromotions WHERE PromotionClass =  'PROMOTION_CLASS_RANGED');

UPDATE UnitPromotions SET Name = 'LOC_PROMOTION_HUNTER_NAME', Description = 'LOC_PROMOTION_HUNTER_DESCRIPTION' WHERE UnitPromotionType = 'PROMOTION_VOLLEY_HUNTER';







-- POLAND Hussar Fix
UPDATE Units SET MandatoryObsoleteTech = 'TECH_COMPOSITES' WHERE  UnitType = 'UNIT_POLISH_HUSSAR';





/* Rise & Fall Compatibility */

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_PIKE_AND_SHOT' WHERE Unit = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PIKE_AND_SHOT');
INSERT INTO UnitUpgrades SELECT 'UNIT_BRAZILIAN_BANDEIRANTE', 'UNIT_SPEC_OPS' WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_SPEC_OPS');
INSERT INTO UnitReplaces SELECT 'UNIT_SPANISH_TERCIO', 'UNIT_PIKE_AND_SHOT' WHERE EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PIKE_AND_SHOT');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_SNIPER' WHERE Unit = 'UNIT_KOREAN_HWACHA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_KOREAN_HWACHA');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_EXPLORER' WHERE Unit = 'UNIT_CREE_OKIHTCITAW' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CREE_OKIHTCITAW');
UPDATE Units SET Cost = 140 WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI');


/* Steel & Thunder Compatibility */