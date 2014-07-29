SELECT
    f.*,
    g.location
FROM
    ras_geophotos AS f JOIN
    ras_ortho_tiles AS g
    ON (ST_Intersects(f.geom, g.geom))