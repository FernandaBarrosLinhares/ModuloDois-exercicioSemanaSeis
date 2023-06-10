--3Crie uma tabela chamda proprietario, com no minímo os campos:

--Nome
--Sobrenome
--Endereco

CREATE TABLE PROPRIETARIO(
	NOME VARCHAR(30),
	SOBRENOME VARCHAR (30),
	ENDERECO VARCHAR (100)
);

--4 Crie uma tabela chamda Imovel, com no minímo os campos:

--Tipo_imovel (Casa, Apto, Galpão)
--Valor
--Observacoes
--Detalhes
--Endereco

CREATE TABLE IMOVEL(
	TIPO_IMOVEL_CASA VARCHAR(10),
	TIPO_IMOVEL_APTO VARCHAR(10),
	TIPO_IMOVEL_GALPAO VARCHAR(10),
	VALOR REAL,
	OBSERVACOES VARCHAR (100),
	DETALHES VARCHAR (100),
	ENDERECO VARCHAR (100)
);
--5 Crie a coluna id do tipo int, na tabela proprietario e defina como chave primaria (Primary Key)‌

--Pode ser tanto utilizando o alter table quanto excluindo a tabela proprietario e recriando ela já com a chave.
DROP TABLE PROPRIETARIO

CREATE TABLE PROPRIETARIO(
	ID SERIAL PRIMARY KEY,
	NOME VARCHAR(30),
	SOBRENOME VARCHAR (30),
	ENDERECO VARCHAR (100)
);

--6 Crie a coluna id do tipo int, na tabela Imovel e defina como chave primaria (Primary Key)
--Pode ser tanto utilizando o alter table quanto excluindo a tabela Imovele recriando ela já com a chave.

ALTER TABLE IMOVEL ADD COLUMN ID SERIAL;
ALTER TABLE IMOVEL ADD CONSTRAINT ID_PK PRIMARY KEY (ID)

--7Crie o script para incluir as colunas de telefone e endereco, do tipo varchar, na tabela proprietario, utilizando o alter table.

ALTER TABLE PROPRIETARIO ADD COLUMN TELEFONE VARCHAR (12)
ALTER TABLE PROPRIETARIO ADD COLUMN ENDERECO VARCHAR (100)

--8Crie a coluna IDProprietario na tabela imovel e defina como uma fk da tabela proprietario.

ALTER TABLE IMOVEL DROP COLUMN DETALHES

--9Crie a coluna IpProprietario na tabela imovel e defina como uma fk da tabela proprietario.



--Pode ser tanto utilizando o alter table quanto excluindo a tabela proprietario e recriando ela já com a chave.

ALTER TABLE IMOVEL ADD COLUMN ID_PROPRIETARIO INT
ALTER TABLE IMOVEL ADD CONSTRAINT FK_ID_PROPRIETARIO FOREGEIN KEY (ID_PROPRIETARIO) REFERENCES PROPRIETARIO (ID)

--10 Crie o Script para excluir as tabelas proprietario e Imovel

DROP TABLE PROPRIETARIO
DROP TABLE IMOVEL

