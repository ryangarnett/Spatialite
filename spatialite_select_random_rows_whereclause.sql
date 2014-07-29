SELECT * 
FROM ras_bldg2d
WHERE type = 'Standard'
ORDER BY RANDOM() 
LIMIT 80;