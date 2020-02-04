USE DB_Locadora

SELECT * FROM Tabela_Aluguel;

-- SELECT DataInicio, DataFim FROM Tabela_Aluguel INNER JOIN Tabela_Cliente ON Tabela_Aluguel.IdCliente = Tabela_Cliente.IdCliente;

/*  SELECT TC.NomeCliente, TC.Cpf
	FROM Tabela_Cliente AS TC
	INNER JOIN Tabela_Aluguel AS TA
	ON TC.IdCliente = TA.IdCliente;	*/