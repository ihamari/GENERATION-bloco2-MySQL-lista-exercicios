CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes
( id BIGINT AUTO_INCREMENT,
nome VARCHAR(45)  NOT NULL,
tipo_habilidade VARCHAR(45),
PRIMARY KEY(id) );

CREATE TABLE tb_personagens
( id BIGINT AUTO_INCREMENT,
nome VARCHAR(255)  NOT NULL,
nivel INT NOT NULL,
ataque INT,
defesa INT,
PRIMARY KEY(id) );

ALTER TABLE tb_personagens ADD classe_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT 
fk_personagens_classes -- nome da restrição
FOREIGN KEY (classe_id) -- nome da coluna EXISTENTE
REFERENCES tb_classes(id); -- de onde vem a chave estrangeira

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(nome, tipo_habilidade) 
VALUES ("Arqueiro", "Físico");
INSERT INTO tb_classes(nome, tipo_habilidade) 
VALUES ("Barbaro", "Físico");
INSERT INTO tb_classes(nome, tipo_habilidade) 
VALUES ("Mago", "Mágico");
INSERT INTO tb_classes(nome, tipo_habilidade) 
VALUES ("Clerigo", "Mágico");
INSERT INTO tb_classes(nome, tipo_habilidade) 
VALUES ("Monge", "Físico");

INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("Shaolin Matador de Porco", 80, 15000, 10000, 5);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("Incompetank", 56, 2000, 8000, 2);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("Mulher de Fases fase 5 finalboss", 36, 1500, 1500, 3);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("Sans", 100, 100000, 1, 3);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("Mônica", 33, 1000, 1000, 1);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("EnzoGames", 12, 500, 15000, 4);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("Mochilinha", 67, 15000, 15000, 1);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa,classe_id) 
VALUES ("User 6548-b457-9645d", 2, 500, 200, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens
JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens
JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Mago";

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;



