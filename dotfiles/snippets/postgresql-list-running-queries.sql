SELECT pid, age(clock_timestamp(), query_start), usename, query, application_name, client_addr
FROM pg_stat_activity 
WHERE query != '<IDLE>' AND query NOT ILIKE '%pg_stat_activity%'
AND usename = user
and query != ''
ORDER BY 2 DESC;

SELECT pg_cancel_backend(procpid);