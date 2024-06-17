SELECT t.database, t.name as table_name, c.name as column_name, c.type
FROM system.tables t
JOIN system.columns c on t.database == c.database and t.name == c.table
where table like '%%'