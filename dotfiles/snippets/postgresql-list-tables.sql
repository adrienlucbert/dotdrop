SELECT * FROM information_schema.tables
WHERE table_name LIKE '%%'
AND table_schema NOT IN ('pg_catalog', 'information_schema')