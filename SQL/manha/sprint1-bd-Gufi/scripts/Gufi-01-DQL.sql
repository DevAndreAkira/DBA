-- DQL

USE Gufi_Manha

-- 1
SELECT Nome, Email, IdTipoUsuario, DataCadastro, Genero FROM Usuario;

-- 2
SELECT CNPJ, NomeFantasia, Endereco FROM Instituicao;

-- 3
SELECT TituloTipoEvento FROM TipoEvento;

-- 4
SELECT Nome, Email, Genero, Situacao, NomeEvento, DataEvento, Descricao, AcessoLivre, NomeFantasia, TituloTipoEvento FROM Evento 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento 
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario;

-- 5
SELECT AcessoLivre, Nome, Email, Genero, Situacao, NomeEvento, DataEvento, Descricao, NomeFantasia, TituloTipoEvento FROM Evento 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento 
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
WHERE Evento.AcessoLivre = 1;

-- 6
SELECT Nome, Email, Genero, Situacao, NomeEvento, DataEvento, Descricao, AcessoLivre, NomeFantasia, TituloTipoEvento FROM Evento 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento 
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
WHERE Usuario.IdUsuario = 2;

-- Extra 1
SELECT Nome, Email, Genero, Situacao, NomeEvento, DataEvento, Descricao, REPLACE(REPLACE(AcessoLivre, '1', 'Público'), '0' , 'Privado'), NomeFantasia, TituloTipoEvento FROM Evento 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento 
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario;

-- Extra 2
SELECT Nome, Email, Genero, Situacao, NomeEvento, DataEvento, Descricao, REPLACE(REPLACE(AcessoLivre, '1', 'Público'), '0' , 'Privado'), NomeFantasia, TituloTipoEvento FROM Evento 
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento 
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
WHERE Presenca.Situacao = 'CONFIRMADA' AND Usuario.IdUsuario = 2;
