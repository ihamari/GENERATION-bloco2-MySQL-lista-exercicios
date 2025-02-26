CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(250),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    corte VARCHAR(100),
    peso DECIMAL(10, 2) NOT NULL,
    preco_kg DECIMAL(10, 2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES ('Carnes Bovinas', 'Cortes de carne bovina.'),
('Carnes Suínas', 'Cortes de carne suína.'),
('Aves', 'Cortes de frango e outras aves.'),
('Embutidos', 'Produtos embutidos como linguiça e salsicha.'),
('Outros', 'Outros produtos do açougue.');

INSERT INTO tb_produtos (nome_produto, corte, peso, preco_kg, id_categoria)
VALUES ('Picanha', 'Bovino', 2.5, 70.00, 1),
('Filé Mignon', 'Bovino', 1.8, 120.00, 1),
('Costela Suína', 'Suíno', 3.0, 40.00, 2),
('Peito de Frango', 'Ave', 1.5, 25.00, 3),
('Linguiça Toscana', 'Embutido', 1.0, 30.00, 4),
('Asa de Frango', 'Ave', 2.0, 20.00, 3),
('Salsicha', 'Embutido', 1.2, 15.00, 4),
('Alcatra', 'Bovino', 2.2, 60.00, 1);

SELECT * FROM tb_produtos WHERE preco_kg > 50;
SELECT * FROM tb_produtos WHERE preco_kg BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%c%';

SELECT * FROM tb_produtos
JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Embutidos";

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;
