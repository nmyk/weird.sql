-- bare select
SELECT;

-- columnless table
CREATE TABLE X();

-- weird name
ALTER TABLE X RENAME TO """";

-- ???
SELECT EXISTS(SELECT);

-- ????
SELECT * FROM (SELECT);

-- select predicate not evaluated in EXISTS
SELECT EXISTS(SELECT 1/0 FROM """");

-- "successful insert" into table with FALSE check
ALTER TABLE """" ADD CONSTRAINT x CHECK (FALSE);
INSERT INTO """" SELECT * FROM """";

-- returns 1
SELECT COUNT(*);
