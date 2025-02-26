CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45) NOT NULL,
    descricao_categoria VARCHAR(250)
);

CREATE TABLE tb_cursos (
    id_curso BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT,
    preco DECIMAL(10, 2) NOT NULL,
    nivel VARCHAR(50),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Programação', 'Cursos de desenvolvimento de software e algoritmos.'),
('Redes', 'Cursos sobre infraestrutura de redes e protocolos.'),
('Segurança', 'Cursos de segurança da informação e cibersegurança.'),
('Banco de Dados', 'Cursos sobre modelagem e gerenciamento de bancos de dados.'),
('DevOps', 'Cursos sobre integração e entrega contínua.');

INSERT INTO tb_cursos (nome_curso, carga_horaria, preco, nivel, id_categoria)
VALUES
('Curso de Python', 40, 299.99, 'Iniciante', 1),
('Curso de Redes TCP/IP', 30, 599.99, 'Intermediário', 2),
('Curso de Segurança da Informação', 150, 1499.99, 'Avançado', 3),
('Curso de MySQL', 25, 249.99, 'Iniciante', 4),
('Curso de Docker', 60, 849.99, 'Intermediário', 5),
('Curso de JavaScript', 100, 1299.99, 'Avançado', 1),
('Curso de Firewall e VPNs', 120, 899.99, 'Intermediário', 2),
('Curso de MongoDB', 40, 599.99, 'Avançado', 4);

SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%j%';

SELECT * FROM tb_cursos
JOIN tb_categorias
ON tb_categorias.id_categoria = tb_cursos.id_categoria;

SELECT * FROM tb_cursos
JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Banco de Dados";

SELECT * FROM tb_cursos;
SELECT * FROM tb_categorias;


