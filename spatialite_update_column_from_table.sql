UPDATE lu_bldg3d
SET GRID_ID = 
( SELECT lu_bldg2d_sj.gridid
	FROM lu_bldg2d_sj
WHERE lu_bldg2d_sj.BLDGID = lu_bldg3d.BLDGID )