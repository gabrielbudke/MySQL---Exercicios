SELECT
	cidade,
	estado
FROM 
	cidades
WHERE 
	cidade LIKE '%tuba'
ORDER BY 
	estado DESC; 