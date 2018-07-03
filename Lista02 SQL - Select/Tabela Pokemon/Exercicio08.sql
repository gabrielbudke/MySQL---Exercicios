SELECT 	
	nome, 
	categoria, 
	MIN(ataque) 
FROM 
	pokemons 
WHERE 
	ataque = (SELECT min(ataque) FROM pokemons);
