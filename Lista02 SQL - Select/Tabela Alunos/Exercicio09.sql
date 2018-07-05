SELECT
	cor_preferida 'Cor Preferida',
	COUNT(cor_preferida) 'Qtd'
FROM
	alunos
WHERE
	cor_preferida LIKE '%gelo%'