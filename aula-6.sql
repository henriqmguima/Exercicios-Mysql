CREATE DATABASE IF NOT EXISTS tarefa_ddl;

SHOW DATABASES;

USE tarefa_ddl;

CREATE TABLE IF NOT EXISTS carro (
    marca VARCHAR(50),
	modelo VARCHAR(50),
    ano INT,
    cor VARCHAR(20)
);

ALTER TABLE carro RENAME TO veiculo;

ALTER TABLE veiculo MODIFY ano VARCHAR(4);

ALTER TABLE veiculo ADD preco FLOAT	;

ALTER TABLE veiculo ADD motor VARCHAR(50) AFTER modelo;

ALTER TABLE veiculo ADD chassi VARCHAR(50) FIRST;

ALTER TABLE veiculo DROP cor;

DROP TABLE veiculo;

DROP DATABASE tarefa_ddl;