INSERT INTO "ham_roads_line_dis2" (r_stname_c, roadclass, nbrlanes, pavstatus, l_placenam, r_placenam, Geometry) 
SELECT r_stname_c, roadclass, nbrlanes, pavstatus, l_placenam, r_placenam, CastToMulti(GUnion(Geometry))
FROM ham_roads_line
GROUP BY r_stname_c, nbrlanes;