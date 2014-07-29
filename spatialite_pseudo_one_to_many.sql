# SQL query to write fields from one table (table_abc) to another table (table_1)

SELECT
    f.*,
    g.field_1,
    g.field_2,
    g.field_3
FROM
    table_1 AS f JOIN
    table_abc AS g
    ON (ST_Intersects(f.geom, g.geom))