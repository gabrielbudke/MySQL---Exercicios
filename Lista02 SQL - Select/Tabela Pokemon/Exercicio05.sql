SELECT 
	peso 'Peso',
	altura 'Altura',
	(altura*altura) / peso'IMC'
FROM 
	pokemons
ORDER by
	(altura*altura) / peso DESC;