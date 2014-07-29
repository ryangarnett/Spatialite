SELECT BLDGID, Height, Stories
FROM lu_bldg3d
WHERE Stories IN (1,2,4,6)
ORDER BY Stories, BLDGID;