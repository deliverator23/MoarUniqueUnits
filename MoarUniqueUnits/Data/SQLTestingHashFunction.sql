
DROP TRIGGER OnTypeInsert;
CREATE TRIGGER OnTypeInsert AFTER INSERT ON Types BEGIN UPDATE Types SET Hash = random() Where Type = New.Type; END;
PRAGMA foreign_keys = ON;