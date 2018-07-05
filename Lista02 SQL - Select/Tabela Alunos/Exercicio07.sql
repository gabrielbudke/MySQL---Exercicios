SELECT
	nome 'Nome',
	MIN(nota_1) 'Min Nota'
FROM
	alunos
WHERE 
	nota_1 = (SELECT MIN(nota_1) FROM alunos);