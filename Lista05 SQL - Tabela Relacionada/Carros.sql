CREATE TABLE pessoas(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	cpf VARCHAR(11)

);

CREATE TABLE carros(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_pessoas INT NOT NULL,
	marca VARCHAR(150) NOT NULL,
 	modelo VARCHAR(150) NOT NULL,
	ano_lancamento INTEGER NOT NULL,
	ano_fabricacao INTEGER NOT NULL,
	motor VARCHAR(150),
	cor	VARCHAR(150),
	preco DECIMAL (6,2),
	FOREIGN KEY (id_pessoas) REFERENCES pessoas(id)

);