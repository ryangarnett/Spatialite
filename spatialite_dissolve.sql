SELECT f.bldgid AS bldgid, st_unaryunion(st_collect(f.geom)) AS geom
FROM comp_bldg AS f
GROUP BY bldgid;