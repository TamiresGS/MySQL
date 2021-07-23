CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE estudantes(
	id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR (40) NOT NULL,
    idade INT NOT NULL,
    serie INT NOT NULL,
    media_final FLOAT (1) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM estudantes;

INSERT INTO estudantes(nome, idade, serie, media_final)
VALUES ('José Colmeia', 8, 5, 5.5);
INSERT INTO estudantes
VALUES (DEFAULT, 'Francisco César', 7, 5, 8);
INSERT INTO estudantes
VALUES (DEFAULT,'Ivone Lara', 8, 5, 8.5);
INSERT INTO estudantes
VALUES (DEFAULT, 'Jovelina Pérola', 8, 5, 6.5);
INSERT INTO estudantes
VALUES (DEFAULT, 'Antonio Tornado', 9, 5, 6);
INSERT INTO estudantes
VALUES (DEFAULT, 'Maria Pedreira', 7, 6);
INSERT INTO estudantes
VALUES (DEFAULT, 'Pedro Paulo', 7, 5, 9);
INSERT INTO estudantes
VALUES (DEFAULT, 'Eliane Dias', 7, 5, 9.5);

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE media_final>=7;
SELECT * FROM estudantes WHERE media_final<=7;

UPDATE db_escola.estudantes SET media_final=7.5 WHERE id=5;