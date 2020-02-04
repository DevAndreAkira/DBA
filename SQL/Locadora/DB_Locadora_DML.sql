-- USANDO O DB JÁ CRIADO
USE DB_Locadora

INSERT INTO Tabela_Empresa (NomeEmpresa)
VALUES ('Locacar'), ('VacomDeus');

INSERT INTO Tabela_Marca (NomeMarca)
VALUES ('GM'), ('Ford'), ('Fiat');

INSERT INTO Tabela_Cliente (NomeCliente, Cpf)
VALUES ('Leo','111.111.111-11'), ('Lena','222.222.222-22');

INSERT INTO Tabela_Modelo (NomeModelo)
VALUES ('Onix'), ('Fiesta'), ('Argo');

SELECT * FROM Tabela_Modelo;

INSERT INTO Tabela_Veiculo (NumPlaca)
VALUES ('XDF-4234'), ('FWE-2224');

INSERT INTO Tabela_Aluguel (DataInicio, DataFim)
VALUES ('2020-02-03','2020-02-17'),('2020-02-01','2020-02-09');

