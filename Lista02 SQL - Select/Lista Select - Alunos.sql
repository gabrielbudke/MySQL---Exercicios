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




























