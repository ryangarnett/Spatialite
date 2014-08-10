SELECT route_num, Sum(length_km) AS total
FROM bus_routes_halifax
GROUP BY route_num
ORDER BY total;