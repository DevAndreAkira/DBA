USE master

DROP DATABASE RoteiroMusical;
CREATE DATABASE RoteiroMusical;

USE RoteiroMusical;

--------------------TABELA ESTILOS MUSICAIS	
CREATE TABLE EstilosMusicais(
	IdEstilos INT PRIMARY KEY IDENTITY,
	Estilos VARCHAR (255),
	Nome VARCHAR (255)
);

--------------------TABELA ARTISTAS
CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (255),
	IdEstilosMusicais INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilos)
);

--------------------Alteracao adicinar coluna nova
--ALTER TABLE Artistas
--ADD	DataNascimento DATE;	

--------------------Alteracao modificar coluna
--ALTER TABLE Artistas
--DROP COLUMN Nome;

--------------------Apagar
--DROP TABLE Artistas;

--DROP DATABASE RoteiroMusical;

----------------------------------DML LINGUAGEM DE MANIPULACAO DE DADOS

ALTER TABLE EstilosMusicais
ADD	Descricao VARCHAR (200);

INSERT INTO EstilosMusicais (Nome, Descricao,Estilos)
VALUES ('Samba', 'Estilo Musical', 'MPB'),
	('Jazz', 'Estilo Top', 'Jazz'),
	('Pop', 'Estilo popular', 'Qualquer');

INSERT INTO Artistas (Nome,IdEstilosMusicais)
VALUES ('Zeca Pagodinho',1),
	('Frank',2),
	('Caetano' , 3);

SELECT * FROM Artistas;
SELECT * FROM EstilosMusicais;

---------------------------------ALTERAR OS DADOS

UPDATE Artistas
--SET IdEstilosMusicais = 2
--WHERE IdArtista = 1;

---------------------------------DELETAR OS DADOS

DELETE FROM Artistas
WHERE IdArtista = 2;