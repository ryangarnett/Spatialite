UPDATE footprints
SET area_id = (SELECT gid FROM area_bounds
	WHERE ST_Intersects(footprints.geom, area_bounds.geom))