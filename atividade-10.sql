CREATE DATABASE IF NOT EXISTS atividade10;

SHOW DATABASES;

USE atividade10;

CREATE TABLE jogador(
	cod_jogador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    numero INT,
    posicao varchar(20),
    salario FLOAT,
    data_admissao DATE,
	filhos INT
);

INSERT INTO jogador(nome, numero, posicao, salario, data_admissao, filhos) VALUES
	('Lionel Messi', 10, 'Meia', 3000000, '2018-04-04', 2),
    ('Cristiano Ronaldo', 7, 'Atacante', 4300000, '2020-03-14', 2),
	('Luis Suarez', 9, 'Atacante', 2000000, '2023-01-23', 3),
	('Neymar Junior', 10, 'Meia', 3500000, '2017-02-01', 2),
	('Pedro Rocha', 9, 'Ponta', 1000000, '2021-06-22', 1),
	('Di Maria', 7, 'Ponta', 2000000, '2020-11-05', 4),
	('Junior Barbosa', 10, 'Meia', 5000000, '2022-10-25', 1),
	('Vinicius Junior', 7, 'Ponta', 7000000, '2020-08-15', 0);

SELECT posicao, AVG(filhos) AS media_filhos FROM jogador
GROUP BY posicao;

SELECT * FROM jogador WHERE numero = 7;

SELECT posicao, AVG(filhos) AS filhos_atacantes FROM jogador
WHERE posicao = 'Atacante';

SELECT * FROM jogador WHERE numero = 10 AND salario < 3500000;

SELECT * FROM jogador WHERE posicao = 'Ponta' AND salario >= 1500000 AND salario <= 3000000; 

SELECT COUNT(*) as quantidade FROM jogador WHERE nome LIKE 'Neymar%';

SELECT COUNT(*) as quantidade_junior FROM jogador WHERE nome LIKE '% Junior';

SELECT COUNT(*) as quantidade FROM jogador WHERE nome LIKE '%Junior%';

SELECT posicao, COUNT(*) FROM jogador
GROUP BY posicao;

SELECT filhos, COUNT(*) FROM jogador
GROUP BY filhos;

SELECT posicao, SUM(salario) AS salario_posicao FROM jogador
GROUP BY posicao
HAVING salario_posicao > 4000000;

SELECT nome, numero, data_admissao FROM jogador
ORDER BY numero, data_admissao ASC;