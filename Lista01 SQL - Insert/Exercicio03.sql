DROP DATABASE IF EXISTS exercicio03;
CREATE DATABASE exercicio03;
USE exercicio03;
CREATE TABLE champions(
	nome VARCHAR(100),
	descricao VARCHAR(100),
	habilidade_1 VARCHAR(100),
	habilidade_2 VARCHAR(100),
	habilidade_3 VARCHAR(100),
	habilidade_4 VARCHAR(100),
	habilidade_5 VARCHAR(100));

INSERT INTO champions 
	(nome, descricao, habilidade_1, habilidade_2, habilidade_3, habilidade_4, habilidade_5)
VALUES
('Katarina', 'a Lâmina Sinistra', 'Voracidade', 'Lâmina Saltitante', 'Preparação', 'Shunpo', 'Lótus da Morte'),
('Yasuo', '', 'Estilo do Errante', 'Tempestade de Aço', 'Parede de Vento', 'Espada Ágil', 'Último Suspiro'),
('Master Yi', 'o Espadachim Wuju', 'Ataque Duplo', '','','',''),
('Vayne', 'a Caçadora Noturna', 'Caçadora Noturna', 'Rolamento', 'Dardos de Prata', 'Condenar', 'Hora Final'),
('Lee Sin', 'o Monge Cego', 'Agitação', 'Onda Sônica / Ataque Ressonante', 'Proteger / Vontade de Ferro', 'Tempestade / Mutilar', ''),
('Vi', 'a Defensora de Piltover', 'Blindagem', '', 'Pancada Certeira', 'Força Excessiva', 'Saque e Enterrada'),
('Diana', 'o Escárnio da Lua', 'Espada de Prata Lunar', 'Golpe Crescente', 'Cascata Lívida', 'Colapso Minguante', 'Zênite Lunar'),
('Annie', 'a Criança Sombria', 'Piromania', 'Desintegrar', 'Incinerar', 'Escudo Fundido', 'Invocar Tibbers'),
('Aatrox', '', 'Poço de Sangue', 'Voo Sombrio', 'Sede de Sangue / Preço em Sangue', 'Lâminas da Aflição', 'Massacre');

SELECT 
	nome 'Nome', 
	descricao 'Descrição', 
	habilidade_1 'Habilidade 1', 
	habilidade_2 'Habilidade 2',
	habilidade_3 'Habilidade 3', 
	habilidade_4 'Habilidade 4', 
	habilidade_5 'Habilidade 5' FROM champions;
