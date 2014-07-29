SELECT l.type AS land_type, b.type AS buff_type,
ST_Multi(ST_Intersection(b.geometry, l.geometry)) AS geometry
FROM "buffer" AS b, "landuse" AS l
WHERE ST_Overlaps(b.geometry, l.geometry)
  OR ST_Intersects(b.geometry, l.geometry);