SELECT f.bldgid AS bldgid, Building, Max(Height), Max(Stories), st_unaryunion(st_collect(f.Geometry)) AS geom
FROM lu_bldg3d AS f
GROUP BY bldgid;