SELECT segid, count(segid)
FROM bus_routes
GROUP BY segid
HAVING count(segid) >1
ORDER BY count(segid);
