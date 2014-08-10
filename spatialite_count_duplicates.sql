SELECT segid, count(*)
FROM bus_routes
GROUP BY segid
HAVING count(*) >1;