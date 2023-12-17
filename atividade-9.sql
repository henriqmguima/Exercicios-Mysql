CREATE DATABASE atividade_dql;

show databases;

USE atividade_dql;

CREATE TABLE venda (
	cod INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    venda INT,
    data_venda DATE
);

INSERT INTO venda (nome,venda,data_venda) VALUES 
	('José' ,100 ,'2023-08-04'),
    ('Amaral', 32 ,'2023-08-04'),
    ('Joaquim' ,10 ,'2023-08-04'),
    ('José' ,7 ,'2023-08-05'),
    ('Amaral', 32, '2023-08-05'),
    ('Joaquim', 1, '2023-08-05'),
    ('José', 34, '2023-08-06'),
    ('Amaral', 53, '2023-08-06'),
    ('Joaquim ',12, '2023-08-06'),
    ('José',35, '2023-08-07'),
    ('Amaral', 10, '2023-08-07'),
    ('Joaquim', 15, '2023-08-07');

SELECT * FROM venda;

SELECT nome,venda FROM venda ORDER BY nome ASC;

SELECT cod,nome FROM venda WHERE venda > 30;

SELECT nome FROM venda WHERE nome LIKE ('a%');

SELECT distinct nome FROM venda WHERE nome LIKE('a%');

SELECT distinct data_venda FROM venda;

SELECT * FROM venda WHERE nome in ('Amaral','José');

SELECT * FROM venda WHERE nome LIKE('a%') OR nome LIKE ('%m');

SELECT * FROM venda WHERE nome LIKE ('jo%') AND nome LIKE ('%e');

SELECT venda, COUNT(venda) FROM venda
GROUP BY nome;

SELECT venda, COUNT(venda) FROM venda 
GROUP BY nome
HAVING AVG(venda) > 20;

SELECT AVG(venda) FROM venda
GROUP BY nome;

SELECT AVG(venda) FROM venda
GROUP BY nome ORDER BY venda DESC;

SELECT MIN(venda) FROM venda 
GROUP BY nome;
