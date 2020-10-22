-- bare select
SELECT;

-- columnless table
CREATE TABLE X();

-- a weirder way to create a columnless table
SELECT INTO Y;

-- weird name
ALTER TABLE X RENAME TO """";

-- ???
SELECT EXISTS(SELECT);

-- ????
SELECT * FROM (SELECT) X;

-- select expression not evaluated in EXISTS
SELECT EXISTS(SELECT 1/0 FROM """");

-- "successful insert" into table with FALSE check
ALTER TABLE """" ADD CONSTRAINT X CHECK (FALSE);
INSERT INTO """" SELECT * FROM """";

-- returns 1, uses "*" with no table specified
SELECT COUNT(*);

-- what transaction?
ROLLBACK;
COMMIT;

-- select table alias (which is same as table name) directly instead of columns
SELECT """" FROM """" """";
