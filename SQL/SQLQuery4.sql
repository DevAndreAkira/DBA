USE master

DROP DATABASE DB_Optus;
CREATE DATABASE DB_Optus;

USE DB_Optus;

CREATE TABLE Tabela_estilos(
	IdEstilos         INT PRIMARY KEY IDENTITY,
	Estilo_Musical    VARCHAR (200)
);

CREATE TABLE Tabela_artistas(
	IdArtista         INT PRIMARY KEY IDENTITY,
	Nome_Artistas     VARCHAR (200)
);

CREATE TABLE Tabela_albuns(
	IdAlbum           INT PRIMARY KEY IDENTITY,
	NomeAlbum         VARCHAR (200),
	DataLancamento    DATE,
	Localizacao       VARCHAR (200),
	QuantidadeMinutos BIGINT,
	IdArtista         INT FOREIGN KEY REFERENCES Tabela_artistas (IdArtista),
	IdEstilo          INT FOREIGN KEY REFERENCES Tabela_estilos (IdEstilos)
);

CREATE TABLE Tabela_usuario(
	IdUsuario         INT PRIMARY KEY IDENTITY,
	TipoUsuario       VARCHAR (200),
	NomeUsuario       VARCHAR (200),
);

INSERT INTO Tabela_estilos(Estilo_Musical)
VALUES  ('Samba'), 
		('Rock'), 
		('MPB'), 
		('Blues'), 
		('Eletronica');

INSERT INTO Tabela_artistas(Nome_Artistas)
VALUES ('Toquinho'), ('Raul Seixas'), ('Djavan'), ('Frank Sinatra'), ('David Gueta');

INSERT INTO Tabela_albuns(NomeAlbum, DataLancamento, Localizacao, QuantidadeMinutos, IdArtista, IdEstilo)
VALUES ('Whisky na praia', '2000-02-20', 'SP', '1', '2', '1'), 
	   ('Gita', '2000-02-20', 'SP', '1', '2', '1'), 
	   ('Samurai', '2000-02-20', 'SP', '1', '2', '1'), 
	   ('Fly me to the moon', '2000-02-20', 'SP', '1', '2', '1'), 
	   ('Love is gonne', '2000-02-20', 'SP', '1', '2', '1');

INSERT INTO Tabela_usuario(TipoUsuario, NomeUsuario)
VALUES  ('ADM', 'Carol'), 
		('ADM', 'Saulo'), 
		('User', 'Seila'), 
		('User', 'Eita'), 
		('User', 'Criatividades1000');

UPDATE Tabela_artistas
SET Nome_Artistas = 'Vinicius e Toquinho'
WHERE IdArtista = 1;

UPDATE Tabela_albuns
SET NomeAlbum = 'Metaformosa Ambulante'
WHERE IdAlbum = 2;

UPDATE Tabela_usuario
SET TipoUsuario = 'User'
WHERE IdUsuario = 1;

--  COM INNER JOIN 

SELECT * FROM Tabela_artistas
INNER JOIN Tabela_albuns ON Tabela_artistas.IdArtista = Tabela_albuns.IdAlbum
WHERE Tabela_albuns.IdArtista = 2;

-- SELECIONAR OS ALBUNS LAÇAR NA MESMA DATA

SELECT * FROM Tabela_albuns WHERE DataLancamento = '2010-02-03';


-- COM INNER JOIN

SELECT * FROM Tabela_artistas
INNER JOIN Tabela_albuns ON Tabela_artistas.IdArtista = Tabela_albuns.IdArtista
WHERE DataLancamento = '2010-02-03';


-- SELECIONAR ALBUNS E ARTISTAS E ORDENAR POR DATA DE LANCAMENTO

SELECT * FROM Tabela_albuns ORDER BY DataLancamento DESC;


-- COM INNER JOIN 

SELECT * FROM Tabela_albuns
INNER JOIN Tabela_artistas ON Tabela_albuns.IdArtista = Tabela_artistas.IdArtista
ORDER BY DataLancamento DESC;

-- SELECIONAR OS ARTISTAS DO MESMO ESTILO MUSICAL

SELECT Tabela_artistas.Nome_Artistas, Tabela_estilos.Estilo_Musical FROM Tabela_artistas
INNER JOIN Tabela_albuns ON Tabela_artistas.IdArtista = Tabela_albuns.IdAlbum
INNER JOIN Tabela_estilos ON Tabela_artistas.IdArtista = Tabela_estilos.IdEstilos
WHERE Tabela_estilos.IdEstilos = 2;
