SELECT 
	COUNT(nome) 'Qtd alunos c/ signo de Peixes'
FROM
	alunos
WHERE
	signo LIKE '%Peixes%';