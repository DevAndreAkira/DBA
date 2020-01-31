USE master

DROP DATABASE DB_Optus;
CREATE DATABASE DB_Optus;

USE DB_Optus;

CREATE TABLE Tabela_estilos(
	IdEstilos INT PRIMARY KEY IDENTITY,
	Estilo_Musical VARCHAR (200)
);

CREATE TABLE Tabela_artistas(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome_Artistas VARCHAR (200)
);

CREATE TABLE Tabela_albuns(
	IdAlbum INT PRIMARY KEY IDENTITY,
	NomeAlbum VARCHAR (200),
	DataLancamento DATE,
	Localizacao VARCHAR (200),
	QuantidadeMinutos BIGINT,
	IdArtista INT FOREIGN KEY REFERENCES Tabela_artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Tabela_estilos (IdEstilos)
);

CREATE TABLE Tabela_usuario(
	IdUsuario INT PRIMARY KEY IDENTITY,
	TipoUsuario VARCHAR (200),
	NomeUsuario VARCHAR (200),
);

INSERT INTO Tabela_estilos(Estilo_Musical)
VALUES ('Samba'), ('Rock'), ('MPB'), ('Blues'), ('Eletronica');

INSERT INTO Tabela_artistas(Nome_Artistas)
VALUES ('Toquinho'), ('Raul Seixas'), ('Djavan'), ('Frank Sinatra'), ('David Gueta');

INSERT INTO Tabela_albuns(NomeAlbum, DataLancamento, Localizacao, QuantidadeMinutos)
VALUES ('Whisky na praia', '2000-02-20', 'SP', '1'), 
	('Gita', '2000-02-20', 'SP', '1'), 
	('Samurai', '2000-02-20', 'SP', '1'), 
	('Fly me to the moon', '2000-02-20', 'SP', '1'), 
	('Love is gonne', '2000-02-20', 'SP', '1');

INSERT INTO Tabela_usuario(TipoUsuario, NomeUsuario)
VALUES ('ADM', 'Carol'), ('ADM', 'Saulo'), ('User', 'Seila'), ('User', 'Eita'), ('User', 'Criatividades1000');

UPDATE Tabela_artistas
SET Nome_Artistas = 'Vinicius e Toquinho'
WHERE IdArtista = 1;

UPDATE Tabela_albuns
SET NomeAlbum = 'Metaformosa Ambulante'
WHERE IdAlbum = 2;

UPDATE Tabela_usuario
SET TipoUsuario = 'User'
WHERE IdUsuario = 1;

SELECT * FROM Tabela_estilos;
SELECT * FROM Tabela_artistas;
SELECT * FROM Tabela_albuns;
SELECT * FROM Tabela_usuario;

