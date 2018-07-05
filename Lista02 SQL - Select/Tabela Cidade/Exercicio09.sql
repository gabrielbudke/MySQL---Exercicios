SELECT
	cidade 'Cidade',
	LENGTH(cidade) 'Qtd de Caracteres'
FROM
	cidades
WHERE 
	LENGTH(cidade) = 10;