SELECT elapsed, user, query_id, elapsed, query FROM system.processes
where user = user()
ORDER BY elapsed desc
LIMIT 10

KILL QUERY WHERE query_id=''