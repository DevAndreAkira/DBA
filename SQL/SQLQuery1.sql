USE master
-- comando para criar banco de dados
DROP DATABASE RoteiroLivros;
CREATE DATABASE RoteiroLivros;

USE RoteiroLivros;

--DQL comandos de consulta

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200) NOT NULL
);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR (200),
);

CREATE TABLE Livros (
	IdLivro INT PRIMARY KEY IDENTITY,
	TituloLivro VARCHAR (255),
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor),
);

--DML comandos de consulta

--Inserindo valores
INSERT INTO Generos(Nome)
VALUES 
	('Estilo de vida'),
	('Ensaio'),
	('Conto'),
	('Poema'),
	('Relato');

INSERT INTO Autores(NomeAutor)
VALUES 
	('Henry David Thoreau'),
	('Dante Alighieri'),
	('Oscar Wilde'),
	('Ovídio Naso'),
	('Edgar Allan Poe');

INSERT INTO Livros(TituloLivro,IdGenero,IdAutor)
VALUES 
	('Walden',1,1),
	('Divina comédia',2,2),
	('O corvo',3,3),
	('O retrato de Dorian Gray',3,3),
	('A arte de amar',2,4);


--Alterando os valores
UPDATE Generos
SET Nome = 'Passeata'
WHERE IdGenero=  1;

UPDATE Livros
SET TituloLivro = 'Apenas um teste'
Where IdLivro = 2;

--Deletando valores
DELETE FROM Autores
WHERE IdAutor = 5;

--Mostrando valores
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;
