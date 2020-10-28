
CREATE TABLE EnabledUniqueUnits (OwnerType VARCHAR, Type VARCHAR, Enabled INTEGER, DefaultReplaces VARCHAR, DefaultUpgrade VARCHAR, UnitAiBaseUnit VARCHAR);

-- Base Game UUs
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_AMERICA', 'UNIT_AMERICAN_AH64_APACHE', 1, 'UNIT_HELICOPTER', NULL, 'UNIT_HELICOPTER');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_AMERICA', 'UNIT_AMERICAN_MINUTEMAN', 0, 'UNIT_MUSKETMAN', 'UNIT_INFANTRY', 'UNIT_MUSKETMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ARABIA', 'UNIT_ARABIAN_CAMEL_ARCHER', 1, NULL, 'UNIT_FIELD_CANNON', 'UNIT_SCYTHIAN_HORSE_ARCHER');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ARABIA', 'UNIT_ARABIAN_GHAZI', 0, NULL, 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_BRAZIL', 'UNIT_BRAZILIAN_BANDEIRANTE', 1, 'UNIT_RANGER', NULL, 'UNIT_RANGER');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_BRAZIL', 'UNIT_BRAZILIAN_FATHERLAND_VOLUNTEER', 0, NULL, 'UNIT_INFANTRY', 'UNIT_INFANTRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_CHINA', 'UNIT_CHINESE_CHOKONU', 0, 'UNIT_CROSSBOWMAN', 'UNIT_FIELD_CANNON', 'UNIT_CROSSBOWMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_CHINA', 'UNIT_CHINESE_SHIGONG', 1, NULL, NULL, 'UNIT_MEDIC');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_EGYPT', 'UNIT_EGYPTIAN_WAR_GALLEY', 0, 'UNIT_QUADRIREME', 'UNIT_FRIGATE', 'UNIT_QUADRIREME');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_EGYPT', 'UNIT_EGYPTIAN_KHOPESH', 1, 'UNIT_SWORDSMAN', 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ENGLAND', 'UNIT_ENGLISH_LONGBOWMAN', 1, 'UNIT_CROSSBOWMAN', 'UNIT_FIELD_CANNON', 'UNIT_CROSSBOWMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ENGLAND', 'UNIT_ENGLISH_SHIP_OF_THE_LINE', 1, 'UNIT_FRIGATE', 'UNIT_BATTLESHIP', 'UNIT_FRIGATE');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_FRANCE', 'UNIT_FRENCH_GENDARME', 1, 'UNIT_KNIGHT', 'UNIT_TANK', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_FRANCE', 'UNIT_FRENCH_MARINE', 0, 'UNIT_MUSKETMAN', 'UNIT_FRENCH_GARDE_IMPERIALE', 'UNIT_MUSKETMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GERMANY', 'UNIT_GERMAN_LANDSKNECHT', 1, 'UNIT_PIKEMAN', 'UNIT_AT_CREW', 'UNIT_PIKEMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GERMANY', 'UNIT_GERMAN_PANZER', 0, 'UNIT_TANK', 'UNIT_MODERN_ARMOR', 'UNIT_TANK');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GREECE', 'UNIT_GREEK_ARMATOLOS', 0, NULL, 'UNIT_INFANTRY', 'UNIT_INFANTRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GREECE', 'UNIT_GREEK_PELTAST', 1, 'UNIT_ARCHER', 'UNIT_CROSSBOWMAN', 'UNIT_ARCHER');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_INDIA', 'UNIT_INDIAN_MUGHAL_SOWAR', 0, 'UNIT_KNIGHT', 'UNIT_TANK', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_INDIA', 'UNIT_INDIAN_SEPOY', 1, NULL, 'UNIT_INFANTRY', 'UNIT_INFANTRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_JAPAN', 'UNIT_JAPANESE_SOHEI', 1, NULL, 'UNIT_MUSKETMAN', 'UNIT_MUSKETMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_JAPAN', 'UNIT_JAPANESE_YAMATO', 0, 'UNIT_BATTLESHIP', NULL, 'UNIT_BATTLESHIP');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_KONGO', 'UNIT_KONGO_GARDE_REPUBLICAINE', 0, 'UNIT_MECHANIZED_INFANTRY', NULL, 'UNIT_MECHANIZED_INFANTRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_KONGO', 'UNIT_KONGO_MEDICINE_MAN', 1, NULL, NULL, 'UNIT_MEDIC');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_NORWAY', 'UNIT_NORWEGIAN_HIRDMAN', 0, 'UNIT_SWORDSMAN', 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_NORWAY', 'UNIT_NORWEGIAN_ULFHEDNAR', 1, NULL, NULL, 'UNIT_MEDIC');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ROME', 'UNIT_ROMAN_EQUITE', 1, 'UNIT_HORSEMAN', 'UNIT_CAVALRY', 'UNIT_HORSEMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ROME', 'UNIT_ROMAN_ONAGER', 0, 'UNIT_CATAPULT', 'UNIT_BOMBARD', 'UNIT_CATAPULT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_RUSSIA', 'UNIT_RUSSIAN_DRUZHINA', 1, NULL, 'UNIT_CAVALRY', 'UNIT_HORSEMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_RUSSIA', 'UNIT_RUSSIAN_T34', 0, 'UNIT_TANK', 'UNIT_MODERN_ARMOR', 'UNIT_TANK');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SCYTHIA', 'UNIT_SCYTHIAN_AMAZON', 1, 'UNIT_KNIGHT', 'UNIT_TANK', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SCYTHIA', 'UNIT_SCYTHIAN_AMAZON_SCOUT', 0, 'UNIT_SCOUT', 'UNIT_RANGER', 'UNIT_SCOUT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SPAIN', 'UNIT_SPANISH_JINETE', 0, NULL, 'UNIT_CAVALRY', 'UNIT_CAVALRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SPAIN', 'UNIT_SPANISH_TERCIO', 1, NULL, 'UNIT_AT_CREW', 'UNIT_PIKEMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SUMERIA', 'UNIT_SUMERIAN_PHALANX', 1, 'UNIT_SPEARMAN', 'UNIT_PIKEMAN', 'UNIT_SPEARMAN');

-- DLC UUs
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_AUSTRALIA', 'UNIT_AUSTRALIAN_SASR', 1, 'UNIT_MECHANIZED_INFANTRY', NULL, 'UNIT_MECHANIZED_INFANTRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_AZTEC', 'UNIT_AZTEC_JAGUAR', 1, 'UNIT_SWORDSMAN', 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_AZTEC', 'UNIT_AZTEC_WARRIOR_PRIEST', 0, NULL, NULL, 'UNIT_MEDIC');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_POLAND', 'UNIT_POLISH_CHOSEN_INFANTRY', 0, 'UNIT_MUSKETMAN', 'UNIT_INFANTRY', 'UNIT_MUSKETMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_POLAND', 'UNIT_POLISH_UHLAN', 1, 'UNIT_CAVALRY', 'UNIT_HELICOPTER', 'UNIT_CAVALRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_PERSIA', 'UNIT_PERSIAN_CATAPHRACT', 1, NULL, 'UNIT_KNIGHT', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_PERSIA', 'UNIT_PERSIAN_WARSHIP', 0, 'UNIT_GALLEY', 'UNIT_CARAVEL', 'UNIT_GALLEY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MACEDON', 'UNIT_MACEDONIAN_BALLISTA', 1, 'UNIT_CATAPULT', 'UNIT_BOMBARD', 'UNIT_CATAPULT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MACEDON', 'UNIT_MACEDONIAN_PEZHETAIROS', 0, 'UNIT_SPEARMAN', 'UNIT_PIKEMAN', 'UNIT_SPEARMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_NUBIA', 'UNIT_NUBIAN_AFRICAN_FOREST_ELEPHANT', 1, NULL, 'UNIT_KNIGHT', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_INDONESIA', 'UNIT_INDONESIAN_KRIS_SWORDSMAN', 1, NULL, NULL, 'UNIT_WARRIOR_MONK');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_KHMER', 'UNIT_KHMER_WAR_CANOE', 1, 'UNIT_GALLEY', 'UNIT_CARAVEL', 'UNIT_GALLEY');

-- Rise & Fall UUs
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_KOREA', 'UNIT_KOREAN_TURTLE_SHIP', 1, 'UNIT_CARAVEL', 'UNIT_IRONCLAD', 'UNIT_CARAVEL');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_NETHERLANDS', 'UNIT_DUTCH_SCHUTTERIJ', 1, 'UNIT_MUSKETMAN', 'UNIT_INFANTRY', 'UNIT_MUSKETMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GEORGIA', 'UNIT_GEORGIAN_TADZREULI', 1, 'UNIT_KNIGHT', 'UNIT_TANK', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_CREE', 'UNIT_CREE_OTEHTAPIW', 1, 'UNIT_CAVALRY', 'UNIT_HELICOPTER', 'UNIT_CAVALRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MAPUCHE', 'UNIT_MAPUCHE_GUERILLA', 1, 'UNIT_PIKEMAN', 'UNIT_AT_CREW', 'UNIT_PIKEMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SCOTLAND', 'UNIT_SCOTTISH_GALLOWGLASS', 1, NULL, 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MONGOLIA', 'UNIT_MONGOLIAN_HUI_HUI_PAO', 1, NULL, 'UNIT_BOMBARD', 'UNIT_CATAPULT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ZULU', 'UNIT_ZULU_ASSEGAI', 1, 'UNIT_ARCHER', 'UNIT_CROSSBOWMAN', 'UNIT_ARCHER');

-- Gathering Storm UUs
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_CANADA', 'UNIT_CANADA_HMCS_HAIDA', 1, 'UNIT_DESTROYER', NULL, 'UNIT_DESTROYER');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_HUNGARY', 'UNIT_HUNGARY_KALANDOZO', 1, 'UNIT_CROSSBOWMAN', 'UNIT_FIELD_CANNON', 'UNIT_CROSSBOWMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_INCA', 'UNIT_INCA_CHASQUI', 1, 'UNIT_SCOUT', 'UNIT_INCA_WARAKAQ', 'UNIT_SCOUT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MALI', 'UNIT_MALI_SOFA', 1, 'UNIT_CROSSBOWMAN', 'UNIT_FIELD_CANNON', 'UNIT_CROSSBOWMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MAORI', 'UNIT_MAORI_TUPARA', 1, 'UNIT_RANGER', NULL, 'UNIT_RANGER');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_OTTOMAN', 'UNIT_OTTOMAN_SIPAHI', 1, 'UNIT_KNIGHT', 'UNIT_TANK', 'UNIT_KNIGHT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_PHOENICIA', 'UNIT_PHOENICIA_NUMIDIAN_CAVALRY', 1, 'UNIT_HORSEMAN', 'UNIT_CAVALRY', 'UNIT_HORSEMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_SWEDEN', 'UNIT_SWEDEN_HAKKAPELIITTA', 1, 'UNIT_CAVALRY', 'UNIT_HELICOPTER', 'UNIT_CAVALRY');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('LEADER_ELEANOR_ENGLAND', 'UNIT_ELEANOR_TEMPLAR', 1, NULL, 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');

-- New Frontier UUs
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_MAYA', 'UNIT_MAYAN_HOLKAN', 1, NULL, 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GRAN_COLOMBIA', 'UNIT_COLOMBIAN_BRITISH_LEGION', 1, NULL, 'UNIT_INFANTRY', 'UNIT_MUSKETMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_GAUL', 'UNIT_GAUL_CARRUS', 1, 'UNIT_HEAVY_CHARIOT', 'UNIT_KNIGHT', 'UNIT_HEAVY_CHARIOT');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_BYZANTIUM', 'UNIT_BYZANTINE_VARANGIAN_GUARD', 1, NULL, 'UNIT_MUSKETMAN', 'UNIT_SWORDSMAN');
INSERT INTO EnabledUniqueUnits (OwnerType, Type, Enabled, DefaultReplaces, DefaultUpgrade, UnitAiBaseUnit) VALUES ('CIVILIZATION_ETHIOPIA', 'UNIT_ETHIOPIAN_MEHAL_SEFARI', 1, NULL, 'UNIT_INFANTRY', 'UNIT_MUSKETMAN');

CREATE TABLE UnitsToDelete (Type VARCHAR);

INSERT INTO UnitsToDelete VALUES ('UNIT_ENGLISH_SEADOG');