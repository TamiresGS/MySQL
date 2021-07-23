CREATE DATABASE loja;
USE loja;
CREATE TABLE produtos (
	id_produto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    marca VARCHAR(45) NOT NULL,
    unidades INT NOT NULL, 
    valor FLOAT NOT NULL
);

SELECT * FROM produtos;

INSERT INTO produtos(nome, marca, unidades, valor)
VALUES ('Shox NZ', 'Nike', 10, 499);
INSERT INTO produtos
VALUES (DEFAULT, 'Superstar', 'Adidas', 15, 299);
INSERT INTO produtos
VALUES (DEFAULT, 'Old Skool', 'Vans', 10, 249);
INSERT INTO produtos
VALUES (DEFAULT, 'Union', 'DC', 15, 329);
INSERT INTO produtos
VALUES (DEFAULT, 'Vapormax', 'Nike', 8, 699);
INSERT INTO produtos
VALUES (DEFAULT, 'NMD', 'Adidas', 8, 799);
INSERT INTO produtos
VALUES (DEFAULT, 'Half Cab', 'Vans', 15, 549);
INSERT INTO produtos
VALUES (DEFAULT, 'Legacy 98', 'DC', 10, 549);

SELECT * FROM produtos WHERE valor >= 500;
SELECT * FROM produtos WHERE valor <= 500;
UPDATE produtos SET valor = 399 WHERE id_produto = 1;