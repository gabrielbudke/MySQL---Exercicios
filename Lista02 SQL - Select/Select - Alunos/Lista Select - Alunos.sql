-- 1. Selecione todas as colunas da tabela.
SELECT nome, cpf, nick, signo, numero_favorito, nota_1, 
	nota_2, nota_3, nota_4, cor_preferida, DATE_FORMAT(data_nascimento, '%d/%m/%y') FROM alunos;

-- 2. Selecione o nome dos alunos que a nota 1 é maior que 9.0.
SELECT nome, nota_1 FROM alunos WHERE nota_1 > 9.0;

-- 3. Selecione o nome do aluno, nota 1, nota 2, nota 3, nota 4, e a média.
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4)/4 'Média' FROM alunos;

-- 4. Contabilize a quantidade de alunos com o signo de Peixes
SELECT COUNT(nome) 'Qtd alunos c/ signo de Peixes' FROM alunos WHERE signo LIKE '%Peixes%';

-- 5. Selecione a soma da nota 1
SELECT SUM(nota_1) 'Soma da Nota 1' FROM alunos;

-- 6. Selecione a média da nota 2
SELECT AVG(nota_2) 'Média da Nota 1' FROM alunos;

-- 7. Selecione o nome, menor nota 1.
SELECT nome 'Nome', MIN(nota_1) 'Min Nota' FROM alunos WHERE nota_1 = (SELECT MIN(nota_1) FROM alunos);

-- 8. Selecione o nome, nota 1, nota 2, nota 3, nota 4 com o maior nome.
SELECT nome, nota_1, nota_2, nota_3, nota_4, LENGTH(nome) FROM alunos ORDER BY LENGTH(nome) DESC;

-- 9. Selecione a cor e quantidade com a cor Gelo.
SELECT cor_preferida 'Cor Preferida', COUNT(cor_preferida) 'Qtd' FROM alunos WHERE cor_preferida LIKE '%gelo%';

-- 10. Selecione a quantidade de alunos que o nome contém Francisco no começo.
SELECT COUNT(nome) 'Qtd de Francisco' FROM alunos WHERE nome LIKE 'Francisco%';

-- 11. Selecione a quantidade de alunos que o nome contém Luc.
SELECT COUNT(nome) FROM alunos WHERE nome LIKE '%Luc%';

-- 12. Selecione o nome, signo e data de nascimento quando o signo Áries
SELECT nome, signo, data_nascimento FROM alunos WHERE signo LIKE 'Aries';

-- 13. Selecione o nome, nota 1, nota 2, nota 3, nota 4 com o maior média.
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4)/4 'Média' FROM	alunos
	WHERE
		(nota_1 + nota_2 + nota_3 + nota_4)/4 = (SELECT MAX((nota_1 + nota_2 + nota_3 + nota_4)/4) FROM alunos);


-- 14. Selecione o nome, média e caso a média for menor que 5 apresentar reprovado, caso for menor que 7
-- apresentar em exame senão apresentar aprovado.
-- Dica: buscar como fazer IF em sql.


-- 15. Selecione o nome, nota 1, nota 2, nota 3, nota 4 com o menor média.
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4)/4 'Média'
	FROM alunos 
		WHERE (nota_1 + nota_2 + nota_3 + nota_4)/4 = (SELECT MIN((nota_1 + nota_2 + nota_3 + nota_4)/4) FROM alunos);

-- 16. Selecione a quantidade de alunos em que a média foi maior que 7
SELECT COUNT(nome) FROM alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4)/4 > 7;

-- 17. Selecione o nome, nick do aluno que o nick contém 5 caracteres
SELECT nome, nick FROM alunos WHERE LENGTH(nick) > 5;

-- 18. Selecione o nome do aluno quando a cor for ouro ou amarelo-torrado e a média for maior que seis e meio.
SELECT nome FROM alunos WHERE cor_preferida LIKE 'ouro' OR 'amarelo-torrado' AND (nota_1 + nota_2 + nota_3 + nota_4)/4 > 6.5;

-- 19. Selecione o nome e o ano da data de nascimento.
SELECT nome, DATE_FORMAT(data_nascimento, '%Y') FROM alunos;

-- 20. Selecione o nick e o mês de nascimento quando o mês de nascimento for maior que 6.
SELECT nick, DATE_FORMAT(data_nascimento, '%m') FROM alunos WHERE data_nascimento > 6;

-- 21. Selecione a quantidade de pessoas que nasceram no ano de 1996
SELECT COUNT(nome) FROM alunos WHERE DATE_FORMAT(data_nascimento, '%Y') = 1996;

-- 22. Selecione a quantidade de pessoas que nasceram no dia dois do mês de fevereiro do ano 1964
-- ou 1994.
SELECT COUNT(nome) FROM alunos WHERE DATE_FORMAT(data_nascimento, '%d%m/%Y') = 1964-02-02 
								  OR DATE_FORMAT(data_nascimento, '%d%m/%Y') = 1994-02-02;

-- 23. Selecione o nick e a nota 4 do aluno que a nota 2 está entre 5.0 e 5.99.
SELECT nick, nota_2, nota_4 FROM alunos WHERE nota_2 BETWEEN 5.0 AND 5.99;

-- 24. Apresentar a média da aluna Josefina.
SELECT nome, (nota_1 + nota_2 + nota_3 + nota_4)/4 'Média' FROM alunos ORDER BY nome ASC;

-- 25. Apresentar nome, nick, nota 1, nota 2, nota 3, nota 4, quando o nome conter Justino e o signo começar com ‘A’.
SELECT nome, nick, nota_1, nota_2, nota_3, nota_4 FROM alunos WHERE nome LIKE '%Justino%' AND signo LIKE 'A%';

-- 26. Apresentar a média das médias.
SELECT AVG (nota_1 + nota_2 + nota_3 + nota_4)/4 'Média da médias' FROM alunos;






















