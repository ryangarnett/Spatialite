INSERT INTO camera_buff
	(filename, geom)
SELECT filename,
	CastToMultiPolygon(
		ST_Difference(
			ST_Buffer(Geometry, 20.0),
			ST_Buffer(Geometry, 10.0)))
from lu_geophotos;