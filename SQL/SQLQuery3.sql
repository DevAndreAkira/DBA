
CREATE DATABASE RoteiroPessoa;

USE RoteiroPessoa;

-- Lista telefonica
CREATE TABLE TelefoneList(
	IdTel INT PRIMARY KEY IDENTITY,
	NumTel VARCHAR (255)
);

--Lista de Email
CREATE TABLE EmailList(
	IdEmail INT PRIMARY KEY IDENTITY,
	EnEmail VARCHAR (255)
);

--Lista de CNH's
CREATE TABLE CnhList(
	IdCnh INT PRIMARY KEY IDENTITY,
	NumCnh VARCHAR (255)
);

--Lista de pessoas
CREATE TABLE Pessoal(
	IdCnh INT PRIMARY KEY IDENTITY,
	NomePessoa VARCHAR (255),
	IdTelefone INT FOREIGN KEY REFERENCES TelefoneList (IdTel),
	IdMail INT FOREIGN KEY REFERENCES EmailList (IdEmail),
	IdCarta INT FOREIGN KEY REFERENCES CnhList (IdCnh)
);

SELECT * FROM TelefoneList;
SELECT * FROM EmailList;
SELECT * FROM CnhList;
SELECT * FROM Pessoal;

