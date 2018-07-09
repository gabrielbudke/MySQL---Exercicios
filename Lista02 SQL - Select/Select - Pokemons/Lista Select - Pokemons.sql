-- 1. Selecione todos as colunas.
SELECT nome 'Nome', 
	codigo 'Código', 
	categoria 'Categoria', 
	descricao 'Descrição', 
	altura 'Altura',  
	peso 'Peso', 
	hp 'HP', 
	ataque 'Ataque', 
	defesa 'Defesa', 
	especial_ataque 'Ataque Especial', 
	especial_defesa 'Defesa Especial', 
	velocidade 'Velocidade'
FROM pokemons;

-- 2. Selecione o ataque, ataque especial, defesa e defesa especial.
SELECT nome, ataque, defesa, especial_ataque, especial_defesa FROM pokemons;

-- 3. Selecione nome, categoria e ataque ordenado pelo ataque em ordem crescente.
SELECT nome, categoria, ataque FROM pokemons ORDER BY ataque ASC;

-- 4. Selecione altura, peso, com o cálculo do imc.
SELECT peso, altura, (altura*altura) / peso FROM pokemons;

-- 5. Selecione altura, peso, com o cálculo do imc ordenando o imc em ordem decrescente.
SELECT peso, altura, (altura*altura) / peso FROM pokemons ORDER by (altura*altura) / peso DESC;

-- 6. Selecione nome e o tamanho do nome em ordem decrescente pelo nome.
SELECT nome, LENGTH(nome) FROM pokemons ORDER BY nome DESC;

-- 7. Selecione nome, descrição, quando o nome contiver mais que 10 caracteres.
SELECT nome, descricao FROM pokemons WHERE LENGTH(nome) > 10;

-- 8. Selecione nome, categoria, e ataque do pokemon que contém o menor valor de ataque.
SELECT 	nome, categoria, MIN(ataque) FROM pokemons WHERE ataque = (SELECT min(ataque) FROM pokemons);

-- 9. Selecione o ataque, ataque especial, nome, defesa e defesa especial ordenando pelo ataque.
SELECT nome, ataque, especial_ataque, defesa, especial_defesa FROM pokemons ORDER BY ataque DESC;

-- 10. Selecione a média dos ataques.
SELECT AVG(ataque) 'Média dos Ataques' FROM pokemons;

-- 11. Selecione a somatória dos ataques.
SELECT SUM(ataque) 'Soma dos Ataques' FROM pokemons;

-- 12. Selecione a média dos ataques especiais quando o nome do pokemon começar com ‘P’.
SELECT AVG (especial_ataque) 'Média de Ataque' FROM pokemons WHERE nome LIKE 'P%';







