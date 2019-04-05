DELETE FROM PlayerItems WHERE Type IN (SELECT Type FROM UnitsToDelete);

-- Disable UUs for Civilizations that are not present (DLC)
UPDATE ConfigEnabledUniqueUnits SET Enabled = 0 WHERE NOT EXISTS (SELECT 1 FROM Players WHERE OwnerType = ConfigEnabledUniqueUnits.OwnerType);

INSERT INTO PlayerItems (Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex)
SELECT p.Domain, p.CivilizationType, p.LeaderType, e.Type, 'ICON_'||e.Type, 'LOC_'||e.Type||'_NAME', 'LOC_'||e.Type||'_DESCRIPTION', e.SortIndex
FROM   Players p, ConfigEnabledUniqueUnits e
WHERE  p.CivilizationType = e.OwnerType
AND    e.Enabled = 1;

INSERT INTO PlayerItems (Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex)
SELECT p.Domain, p.CivilizationType, p.LeaderType, e.Type, 'ICON_'||e.Type, 'LOC_'||e.Type||'_NAME', 'LOC_'||e.Type||'_DESCRIPTION', e.SortIndex
FROM   Players p, ConfigEnabledUniqueUnits e
WHERE  p.LeaderType = e.OwnerType
AND    e.Enabled = 1;