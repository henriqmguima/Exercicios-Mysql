CREATE DATABASE atividade8_where;

SHOW DATABASES;

USE atividade8_where;

CREATE TABLE vendas(
	cod_venda INT NOT NULL PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    venda INT,
    data_venda DATE
);

INSERT INTO vendas (nome,venda,data_venda) VALUES 
	('Alessandra' ,55 ,'2023-08-04'),
    ('Henrique', 32 ,'2023-05-13'),
    ('Maria Clara' ,250 ,'2023-12-05'),
    ('Julia' ,100 ,'2023-04-09'),
    ('Rodrigo', 38, '2023-01-25'),
    ('Thayse', 100, '2023-06-28')
  
UPDATE INTO vendas SET nome 'Henrique' WHERE nome 'Guimaraes';