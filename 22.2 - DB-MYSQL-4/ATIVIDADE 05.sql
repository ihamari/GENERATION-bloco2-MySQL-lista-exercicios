CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45) NOT NULL,
    descricao_categoria VARCHAR(250)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(250) NOT NULL,
    marca VARCHAR(50),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Tintas', 'Produtos para pintura e acabamento.'),
('Ferragens', 'Parafusos, pregos e acessórios de fixação.'),
('Hidráulica', 'Tubos, conexões e acessórios hidráulicos.'),
('Elétrica', 'Fios, disjuntores e acessórios elétricos.'),
('Madeiras', 'Madeiras para construção e acabamento.');

INSERT INTO tb_produtos (nome_produto, marca, preco, quantidade_estoque, id_categoria)
VALUES
('Tinta Branca Fosca', 'Coral', 120.00, 50, 1),
('Parafuso 6mm', 'Tramontina', 0.50, 1000, 2),
('Tubo PVC 25mm', 'Tigre', 15.00, 200, 3),
('Fio Elétrico 2,5mm', 'Cobrex', 80.00, 150, 4),
('Tinta Azul Fosca', 'Suvinil', 130.00, 40, 1),
('Prego 18x28', 'Tramontina', 0.20, 2000, 2),
('Registro de Pressão', 'Deca', 25.00, 100, 3),
('Disjuntor 20A', 'Steck', 30.00, 80, 4);

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
JOIN tb_categorias
ON tb_categorias.id_categoria = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Elétrica";

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;



