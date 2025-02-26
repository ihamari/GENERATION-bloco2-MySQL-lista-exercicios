CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(250),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(250),
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES ("Tradicional", "Pizzas clássicas e populares.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES ("Vegetariana", "Pizzas sem carne.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES ("Vegana", "Pizzas sem nenhum ingrediente de origem animal.");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES ("Especial", "Pizzas gourmet com ingredientes diferenciados");
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES ("Doce", "Pizzas doces, para pessoas formiguinhas.");

INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Margherita', 'Molho de tomate, mussarela, manjericão fresco.', 45.00, 1);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Calabresa', 'Molho de tomate, mussarela, calabresa fatiada, cebola.', 50.00, 1);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, catupiry.', 60.00, 1);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Abobrinha', 'Molho de tomate, mussarela, abobrinha grelhada, tomate seco.', 55.00, 2);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Berinjela', 'Molho de tomate, mussarela, berinjela assada, azeitonas.', 58.00, 2);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado, catupiry.', 65.00, 1);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Chocolate com Morango', 'Chocolate derretido, morangos frescos.', 40.00, 5);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Vegana de Palmito', 'Molho de tomate, palmito, milho, ervilha, azeitonas.', 52.00, 3);
INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, id_categoria)
VALUES ('Pizza Premium de Trufas', 'Molho de tomate trufado, mussarela de búfala, presunto parma, trufas negras, rúcula fresca.', 120.00, 4);


SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT * FROM tb_pizzas
JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas
JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Vegetariana";

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;




