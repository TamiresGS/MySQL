CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
tipoRemedio VARCHAR (50) NOT NULL,
receita VARCHAR (50) NOT NULL
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (tipoRemedio,receita) VALUES
('ANTIBIÓTICO','OBRIGATÓRIO RECEITA MÉDICA'),
('ANTIALÉRGICO',' NÃO OBRIGATÓRIO RECEITA MÉDICA'),
('ANALGÉSICO',' NÃO OBRIGATÓRIO RECEITA MÉDICA'),
('ANTIFLAMATÓRIOS',' NÃO OBRIGATÓRIO RECEITA MÉDICA'),
('ANTIINFECCIOSOS','OBRIGATÓRIO RECEITA MÉDICA');

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
laboratorio VARCHAR (50) NOT NULL,
mg INT NOT NULL,
preco FLOAT (2) NOT NULL,
generico VARCHAR (10) NOT NULL,
estoque INT NOT NULL,
fk_categoria INT NOT NULL,
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto (nome,laboratorio,mg,preco,generico,estoque,fk_categoria) VALUES
('AMOXICILINA', 'TEUTO',500, 45.00, 'SIM', 200, 1),
('LORATADINA', 'CIMED',10,  16.90, 'SIM', 200, 2),
('ALLEGRA', 'SANOFI AVENTIS',60, 30.90, 'NÃO', 50, 2),
('DIPIRONA', 'PRATI',500,  11.36,'SIM', 210, 3 ),
('PARACETAMOL', 'NATULAB',200, 1.99, 'SIM', 250, 3),
('DICLOFENACO', 'EUROFARMA',100, 3.90,'SIM', 30, 4),
('CETOCANOZOL', 'TEUTO',200,22.65, 'SIM', 50, 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_categoria WHERE preco >50;
SELECT * FROM tb_categoria WHERE preco > 3 AND preco < 60;
SELECT * FROM tb_produto WHERE sabor LIKE '%B%';

SELECT tb_categoria.idcategoria, tb_categoria.tipoRemedio, tb_produto.nome, tb_produto.mg, tb_produto.preco 
FROM tb_categoria
INNER JOIN tb_produto ON tb_produto.fk_categoria = tb_categoria,id_categoria;

SELECT tb_produto.nome, tb_produto.estoque
FROM tb_categoria 
INNER JOIN tb_produto ON tb_produto.fk_categoria = tb_categoria.id_categoria
WHERE id_categoria = 2;



