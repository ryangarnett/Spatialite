SELECT BLDGID, Height, Stories
FROM lu_bldg3d
WHERE Stories BETWEEN 2 AND 5
ORDER BY Stories, BLDGID;