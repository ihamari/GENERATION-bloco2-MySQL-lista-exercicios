CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    idade INT,
	serie VARCHAR(255),
    media_anual DECIMAL(3,1),
	frequencia_porcentagem INT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_estudantes
MODIFY COLUMN media_anual DECIMAL(3,1); 

INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("João Silva", 15 , "1º Ano Ensino Médio", 8.5 , 95);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Maria Oliveira", 14 , "1º Ensino Médio", 9.0 , 74);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Pedro Santos", 9 , "4º Ensino Fundamental", 8.5 , 88);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Ana Costa", 10 , "5º Ensino Fundamental", 8.5 , 97);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Lucas Pereira", 17 , "3º Ensino Médio", 8.5 , 37);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Carla Mendes", 16 , "2º Ensino Médio", 8.5 , 45);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Bruno Almeida", 15 , "1º Ensino Médio", 8.5 , 97);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Juliana Fernandes", 13 , "9º Ensino Fundamental", 8.5 , 64);
INSERT INTO tb_estudantes(nome, idade, serie, media_anual, frequencia_porcentagem) 
VALUES ("Hugh Jackman", 7 , "2º Ensino Fundamental", 10.0 , 100);

SELECT nome, media_anual FROM tb_estudantes WHERE media_anual > 7;
SELECT nome, media_anual FROM tb_estudantes WHERE media_anual < 7;

SELECT * FROM tb_estudantes;
UPDATE tb_estudantes SET media_anual = 11 WHERE id = "9";

SELECT * FROM tb_estudantes;