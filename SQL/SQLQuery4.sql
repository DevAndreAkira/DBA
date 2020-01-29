USE master

DROP DB_Optus;
CREATE DATABASE DB_Optus;

USE DB_Optus;

CREATE TABLE Tabela_etilos(
	IdEstilos INT PRIMARY KEY IDENTITY,
	Estilo_Musical VARCHAR (200)
);

CREATE TABLE Tabela_artistas(
	IdEstil INT PRIMARY KEY IDENTITY,
	Nome_Artistas VARCHAR (200)
);

CREATE TABLE Tabela_albuns(
	IdAlbum INT PRIMARY KEY IDENTITY,
	NomeAlbum VARCHAR (200)
);

CREATE TABLE Tabela_usuario(
	IdUsuario INT PRIMARY KEY IDENTITY,
	NomeUsuario VARCHAR (200)
);

