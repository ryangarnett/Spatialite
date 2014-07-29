UPDATE lu_geophotos SET gridid = (SELECT GRIDID
FROM lu_grid AS s
	WHERE ST_WITHIN (s.Geometry, lu_geophotos.Geometry)
	AND s.ROWID IN (SELECT ROWID
		FROM SpatialIndex
		WHERE f_table_name = 'lu_grid' AND search_frame = lu_geophotos.Geometry)
);