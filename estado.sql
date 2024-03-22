/**
eliminando base de dados
só executa se existir
*/

DROP DATABASE IF EXISTS aula_banco; --eliminando base de dados. só executa se existir

CREATE DATABASE aula_banco; -- cria base de dados

USE aula_banco;

DROP TABLE IF EXISTS estado; -- elimina tabela se existir

CREATE TABLE estado(
	,id INT NOT NULL AUTO_INCREMENT
	,nome VARCHAR(200) NOT NULL UNIQUE -- CONSTRAINT INLINE
	,sigla CHAR(2) NOT NULL UNIQUE
	,ativo CHAR(1) NOT NULL DEFAULT 'S'
	,data_cadastro DATATIME NOT NULL DEFAULT CURRENT_TIMESTAMP -- variavel que busca a hora no momento que o registro é criado
--	,CHECK (ativo IN ('S','N')) -- CONSTRAINT OUT OF LINE sem nome
	,CONSTRAINT coluna_ativo CHECK (ativo ('S','N')) -- CONSTRAINT OUT OF LINE com nome
	,CONSTRAINT pk_estado PRIMARY KEY (id)
);

-- INSERT INTO estado (id,nome,sigla,ativo,data_cadastro) VALUES (1,'PARANA','PR','S','2024-03-13');
-- INSERT INTO estado (id,nome,sigla,ativo,data_cadastro) VALUES (2,'PARANA','PR','S','2024-03-13');
-- INSERT INTO estado (id,nome,sigla,ativo,data_cadastro) VALUES (3,NULL,'PR','A','2024-03-13');

INSERT INTO estado (nome,sigla) VALUES ('PARANA','PR');
INSERT INTO estado (nome,sigla) VALUES ('SÃO PAULO','SP');
INSERT INTO estado(nome,sigla) VALUES ('RIO DE JANEIRO','RJ');


SELECT id,nome,sigla,ativo,data_cadastro FROM estado;
	
	
