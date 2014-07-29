SELECT lu_bldg3d.BLDGID, lu_bldg3d.Building, lu_bldg3d.Stories, lu_bldg3d.Height, lu_bldg3d.GRID_ID, lu_bldg2d.BLDGID, lu_bldg2d.gridid
FROM lu_bldg3d
INNER JOIN lu_bldg2d
ON lu_bldg3d.BLDGID=lu_bldg2d.BLDGID;