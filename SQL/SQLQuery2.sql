USE master

DROP DATABASE RoteiroMusical;
CREATE DATABASE RoteiroMusical;

USE RoteiroMusical;

-- TABELA ESTILOS MUSICAIS
CREATE TABLE EstilosMusicais(
	IdEstilos INT PRIMARY KEY IDENTITY,
	Estilos VARCHAR (255)
);

-- TABELA ARTISTAS
CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (255),
	IdEstilosMusicais INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilos)
);

SELECT * FROM EstilosMusicais;
SELECT * FROM Artistas;

-- Alteracao adicinar coluna nova
ALTER TABLE Artistas
ADD	DataNascimento DATE;

SELECT * FROM Artistas;

-- Alteracao modificar coluna
ALTER TABLE Artistas
DROP COLUMN Nome;

-- Apagar
DROP TABLE Artistas;

DROP DATABASE RoteiroMusical;