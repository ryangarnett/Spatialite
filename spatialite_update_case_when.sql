UPDATE smc_bldgs SET price = CASE 
WHEN bldgcount < 11 THEN price = bldgcount * 9
WHEN bldgcount BETWEEN  11 AND 50 THEN bldgcount * 7
WHEN bldgcount BETWEEN 51 AND 300 THEN bldgcount * 5
ELSE areakm * 1500
END