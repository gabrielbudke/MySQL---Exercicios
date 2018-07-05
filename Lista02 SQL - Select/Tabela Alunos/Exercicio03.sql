SELECT 
	nome,
	nota_1 'Nota 1',
	nota_2 'Nota 2',
	nota_3 'Nota 3', 
	nota_4 'Nota 4',
	(nota_1 + nota_2 + nota_3 + nota_4)/4 'Média'
FROM
	alunos;