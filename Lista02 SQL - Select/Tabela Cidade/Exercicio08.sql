SELECT 
	COUNT(cidade) 'Quantidade de Cidades'
FROM
	cidades
WHERE 
	estado LIKE '%SP%'