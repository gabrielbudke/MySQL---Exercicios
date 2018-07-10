#1
UPDATE pokemons 
	SET categoria = 'Seed' 
	WHERE codigo >= 50 AND codigo <= 100;
SELECT codigo, categoria FROM pokemons;

#2
UPDATE pokemons 
	SET ataque = 29
	WHERE nome LIKE '%inj%';
SELECT nome, ataque FROM pokemons ORDER BY ataque;

#3
UPDATE pokemons 
	SET velocidade = 2
	WHERE velocidade = 5;
SELECT nome, velocidade FROM pokemons ORDER BY velocidade DESC;

#4
UPDATE pokemons
	SET categoria = 'Manipulate'
	WHERE codigo = 100;
SELECT codigo, categoria FROM pokemons;

#5
UPDATE pokemons
	SET nome = REPLACE (nome, 'R', 'C')
	WHERE nome LIKE 'R%';
SELECT nome FROM POKEMONS ORDER BY nome;

#6
UPDATE pokemons
	SET altura = 0.51, peso = 0.70
	WHERE altura = 0.5;
SELECT nome, altura, peso FROM pokemons ORDER BY altura;

#7












