UPDATE test_bldg2d
SET bldgid = 'cos' || (gid  + 1000000)
WHERE gid > 0;