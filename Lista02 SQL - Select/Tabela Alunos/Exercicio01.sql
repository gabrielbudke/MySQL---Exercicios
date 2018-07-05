SELECT
	nome 'Nome', 
	cpf 'CPF', 
	nick 'Nick', 
	signo 'Signo', 
	numero_favorito 'Nº Favorito', 
	nota_1 'Nota 1', 
	nota_2 'Nota 2', 
	nota_3 'Nota 3', 
	nota_4 'Nota 4', 
	cor_preferida 'Cor Preferida', 
	DATE_FORMAT(data_nascimento, '%d/%m/%y') 'Data Nascimento'
FROM
	alunos;