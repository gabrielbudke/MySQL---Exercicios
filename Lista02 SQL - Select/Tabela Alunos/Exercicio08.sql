SELECT
	nome,
	nota_1,
	nota_2,
	nota_3,
	nota_4,
	LENGTH(nome)
FROM
	alunos
ORDER BY LENGTH(nome) DESC;
