CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45) NOT NULL,
    descricao_categoria VARCHAR(250)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(250) NOT NULL,
    fabricante VARCHAR(250),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Medicamentos', 'Produtos para tratamento e prevenção de doenças.');
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Cosméticos', 'Produtos de beleza e cuidados com a pele.');
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Higiene Pessoal', 'Produtos para higiene e cuidado pessoal.');
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Vitaminas e Suplementos', 'Suplementos alimentares e vitaminas.');
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Bebês e Crianças', 'Produtos específicos para bebês e crianças.');

INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Paracetamol 500mg', 'Genérico', 10.00, 100, 1);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Dipirona 500mg', 'Genérico', 8.00, 150, 1);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Shampoo Anticaspa', 'Clear', 25.00, 50, 3);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Creme Facial Hidratante', 'Nivea', 35.00, 30, 2);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Sabonete Líquido', 'Dove', 12.00, 80, 3);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Vitamina C 500mg', 'Vitamed', 40.00, 60, 4);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Fralda Pampers', 'Pampers', 50.00, 200, 5);
INSERT INTO tb_produtos (nome_produto, fabricante, preco, quantidade_estoque, id_categoria)
VALUES ('Protetor Solar FPS 50', 'Sundown', 55.00, 40, 2);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%c%';

SELECT * FROM tb_produtos
JOIN tb_categorias
ON tb_categorias.id_categoria = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Cosméticos";

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;




