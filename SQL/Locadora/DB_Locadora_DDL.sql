-- DDL

CREATE DATABASE DB_Locadora;


DROP DATABASE DB_Locadora;
USE DB_Locadora;

CREATE TABLE Tabela_Empresa (
	IdEmpresa   INT PRIMARY KEY IDENTITY,
	NomeEmpresa VARCHAR (200) NOT NULL
);

CREATE TABLE Tabela_Marca (
	IdMarca     INT PRIMARY KEY IDENTITY,
	NomeMarca   VARCHAR (200)
);

CREATE TABLE Tabela_Cliente (
	IdCliente   INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR (200),
	Cpf         VARCHAR (200)
);

CREATE TABLE Tabela_Modelo (
	IdModelo   INT PRIMARY KEY IDENTITY,
	NomeModelo VARCHAR (200),
	IdMarc     INT FOREIGN KEY REFERENCES Tabela_Marca(IdMarca)
);

CREATE TABLE Tabela_Veiculo (
	IdVeiculo  INT PRIMARY KEY IDENTITY,
	NumPlaca   VARCHAR (200),
	IdEmpresa  INT FOREIGN KEY REFERENCES Tabela_Empresa(IdEmpresa),
	IdModelo   INT FOREIGN KEY REFERENCES Tabela_Modelo(IdModelo)
);

CREATE TABLE Tabela_Aluguel (
	IdAluguel  INT PRIMARY KEY IDENTITY,
	DataInicio DATE,
	DataFim    DATE,
	IdCliente  INT FOREIGN KEY REFERENCES Tabela_Cliente(IdCliente),
	IdVeiculo  INT FOREIGN KEY REFERENCES Tabela_Veiculo(IdVeiculo)
);

	SELECT * FROM Tabela_Aluguel;
	SELECT * FROM Tabela_Cliente;
	SELECT * FROM Tabela_Empresa;
	SELECT * FROM Tabela_Marca;
	SELECT * FROM Tabela_Modelo;
	SELECT * FROM Tabela_Veiculo;