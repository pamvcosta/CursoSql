
USE aula_banco;

CREATE TABLE cidade(
	id INT NOT NULL AUTO_INCREMENT
	,nome VARCHAR(200)  NOT NULL
	,ativo CHAR(1) NOT NULL DEFAULT 'S' 
	,data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
	,estado_id INT NOT NULL 
	,CONSTRAINT pk_cidade PRIMARY KEY (id)
	,CONSTRAINT fk_cidade_estado FOREIGN KEY (estado_id) REFERENCES estado (id)
	,CONSTRAINT cidade_ativo CHECK (ativo IN ('S','N'))
	,CONSTRAINT cidade_unica UNIQUE(nome, estado_id)
);

INSERT INTO cidade (nome,estado_id) VALUES ('CURITIBA', 1);
INSERT INTO cidade (nome,estado_id) VALUES ('SÃO PAULO', 2);

SELECT * FROM cidade;