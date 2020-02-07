-- DML

USE Gufi_Manha

INSERT INTO TipoUsuario(TituloTipoUsuario)
VALUES ('Administrador'), ('Comum');


INSERT INTO TipoEvento(TituloTipoEvento)
VALUES ('C#'),('React'),('SQL');


INSERT INTO Instituicao(CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111', 'Escola SENAI de Inform�tica', 'Endereco');


INSERT INTO Usuario(IdTipoUsuario, Nome, Email, Senha, DataCadastro, Genero)
VALUES (1, 'Administrador', 'adm@adm.com', 'admin123', '06/02/2020', 'Nao informado'),
	   (2, 'Carol', 'carol@email.com', 'carol123', '06/02/2020', 'Feminino'),
	   (2, 'Saulo', 'saulo@mail.com', 'saulo123', '06/02/2020', 'Masculino');


INSERT INTO Evento(IdTipoEvento, IdInstituicao, NomeEvento, AcessoLivre, DataEvento, Descricao)
VALUES (1, 1, 'Orienta��o a objeto', 1, '07/02/2020', 'Conceito dos pilares da programa��o orientada � objetos'),
	   (2, 1, 'Ciclo da vida' , 0 , '08/02/2020', 'Como utilizar os ciclos da vida com a biblioteca React'),
	   (3, 1, 'Introdu��o em SQL', 1, '09/02/2020', 'Comando b�sicos utiulizado no SQL');

INSERT INTO Presenca(IdUsuario, IdEvento, Situacao)
VALUES (2, 2,'Confirmada'), (2, 3, 'N�o confirmada'), (3, 1, 'Confirmada');

