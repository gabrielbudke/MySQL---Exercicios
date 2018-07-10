DROP DATABASE IF EXISTS personalidade;
CREATE DATABASE personalidade;
USE personalidade;

CREATE TABLE alunos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) UNIQUE NOT NULL,
	idade TINYINT
);

INSERT INTO alunos(nome, idade) VALUES 
('Alice', 18),
('Sophia', 4),
('Miguel', 9),
('Heitor', 23),
('Valentina', 15),
('Joaquim', 49);

CREATE TABLE caracteristicas (
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_aluno INTEGER NOT NULL,
	nome VARCHAR (50) NOT NULL
);

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Organizado(a)'),
((SELECT id FROM alunos WHERE nome = 'Sophia'),'Pontual'),
((SELECT id FROM alunos WHERE nome = 'Miguel'),'Criativo(a)'),
((SELECT id FROM alunos WHERE nome = 'Heitor'),'Proativo(a)'),
((SELECT id FROM alunos WHERE nome = 'Alice'),'Altruista'),
((SELECT id FROM alunos WHERE nome = 'Valentina'),'Pessimista'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'),'Flexivel modelo'),
((SELECT id FROM alunos WHERE nome = 'Sophia'),'Observadora'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'),'Paciente'),
((SELECT id FROM alunos WHERE nome = 'Heitor'),'Indelicado(a)'),
((SELECT id FROM alunos WHERE nome = 'Sophia'),'Desobediente'),
((SELECT id FROM alunos WHERE nome = 'Miguel'),'Intolerante'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'),'Empático(a)'),
((SELECT id FROM alunos WHERE nome = 'Sophia'),'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Heitor'),'Egoista'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'),'Altruísta'),
((SELECT id FROM alunos WHERE nome = 'Sophia'),'Sensível');

