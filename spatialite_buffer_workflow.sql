CREATE TABLE camera_buff (
	gid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	filename TEXT NULL);
	
	
SELECT AddGeometryColumn('camera_buff', 'geom', 32616, 'MULTIPOLYGON', 'XY');


INSERT INTO camera_buff
	(filename, geom)
SELECT filename,
	CastToMultiPolygon(
		ST_Buffer(Geometry, 10.0))
from lu_geophotos;