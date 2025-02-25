CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
	salario DECIMAL(6,2),
    data_admissao DATE,
	departamento VARCHAR(255),
    PRIMARY KEY (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Pam Beesly","111.111.111-11",2000.00, "2010-12-15", "Administração");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Jim Halpert","222.222.222-22",5000.00, "2010-03-03", "Vendas");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Dwight Schrute","333.333.333-33",5000.00, "2025-02-25", "Vendas");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Angela Martin","444.444.444-44",3000.00, "2023-08-04", "Finanças");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Creed Bratton","555.555.555-55",4000.00, "2008-01-13", "Operações");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Toby Flenderson","666.666.666-66",5000.00, "2015-12-15", "RH");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao) 
VALUES ("Meredith Palmer","777.777.777-77",3000.00, "2013-09-23");
INSERT INTO tb_colaboradores(nome, cpf, salario, data_admissao, departamento) 
VALUES ("Michael Scott","888.888.888-88",1000.00, "2010-12-15", "Administração");

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
-- SELECT * FROM tb_colaboradores WHERE departamento = "Vendas";

UPDATE tb_colaboradores SET departamento = "Assistant to the Regional Manager" WHERE id = "3";
-- SELECT * FROM tb_colaboradores WHERE departamento = "Vendas";
