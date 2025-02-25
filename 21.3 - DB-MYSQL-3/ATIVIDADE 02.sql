CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255),
	preco DECIMAL(8,2),
    estoque INT,
	avaliacao DECIMAL(2,1),
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Celular não chinês 100% legítimo", "Eletrônicos" , 1499.99, 100 , 3.7);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Camiseta Básica", "Moda" , 45.98, 550 , 4.7);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Cadeira Gamer Desconfortável 3000", "Móveis" , 499.99, 250 , 3.9);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Um best Seller aí", "Livros" , 65.59, 1100 , 4.9);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Esmalte que borra com facilidade", "Manicure" , 3.99, 1400 , 5.0);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Fone bluetooth só carrega um lado","Eletrônicos" , 599.99, 250 , 4.5);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Serúm anti-acne SkinDontCare", "Cosméticos" , 87.86, 800 , 4.2);
INSERT INTO tb_produtos(nome, categoria, preco, estoque, avaliacao) 
VALUES ("Smartn't TV Samsung", "Eletrônicos" , 5499.99, 30 , 4.7);

SELECT nome, preco FROM tb_produtos WHERE preco > 500;
SELECT nome, preco FROM tb_produtos WHERE preco < 500;

UPDATE tb_colaboradores SET preco = 49.99 WHERE id = "2";
