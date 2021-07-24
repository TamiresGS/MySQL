CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	tamanho VARCHAR(30) NOT NULL,
    preco FLOAT (2) NOT NULL
);

DROP TABLE tb_categoria;

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (tamanho,preco) VALUES
('BROTINHO', 25.00),
('PEQUENA', 35.00),
('MÉDIA', 45.00),
('GRANDE',60.00),
('GRANDONA',75.00);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
	id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR (20) NOT NULL,
    ingredientes VARCHAR (45) NOT NULL,
    borda_recheada BOOLEAN NOT NULL,
    massa VARCHAR (10) NOT NULL,
    fk_categoria INT NOT NULL,
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);
    
    SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (sabor,ingredientes,borda_recheada,massa,fk_categoria) VALUES
('MUSSARELA', 'MUSSARELA E AZEITONAS ', TRUE, 'FINA', 3),
('CALABRESA','CALABRESA COM CEBOLAS', FALSE, 'GROSSA',1),
('PALMITO', 'PALMITO, MUSSARELA E AZEITONA PRETA', FALSE, 'FINA', 2),
('BACON', 'BACON, MUSSARELA E CEBOLA', TRUE, 'FINA', 4),
('DOCE DE LEITE', 'DOCE DE LEITE', FALSE, 'GROSSA', 1),
('ROMEU E JULIETA', 'GOIABADA E MUSSARELA', FALSE, 'GROSSA', 1),
('BRÓCOLIS', 'BRÓCOLIS, ALHO E MUSSARELA', TRUE, 'FINA', 5),
('4 QUEIJOS', 'MUSSARELA, CATUPIRY, PROVOLONE E PARMESÃO', TRUE, 'GROSSA', 5),
('FRANGO C/ CATUPIRY', 'FRANGO, CATUPIRY E MILHO', FALSE, 'FINA', 4);


SELECT * FROM tb_pizza;

SELECT * FROM tb_categoria WHERE preco > 45;
SELECT * FROM tb_categoria WHERE preco > 29 AND preco < 60;
SELECT * FROM tb_pizza WHERE sabor LIKE '%C%';

SELECT tb_categoria.id_categoria, tb_categoria.tamanho, tb_categoria.preco, tb_pizza.sabor, tb_pizza.ingredientes, tb_pizza.massa
FROM tb_categoria
INNER JOIN tb_pizza ON tb_pizza.fk_categoria = tb_categoria.id_categoria;

SELECT tb_pizza.sabor, tb_categoria.tamanho 
FROM tb_categoria 
INNER JOIN tb_pizza ON tb_pizza.fk_categoria = tb_categoria.id_categoria
WHERE id_categoria = 1;