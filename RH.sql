CREATE DATABASE db_rh;
CREATE TABLE tb_funcionarios (
id_funcionario int not null auto_increment primary key,
nome varchar(45) not null, 
idade int not null,
cargo varchar (45) not null,
salario int not null
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios (nome, idade, cargo, salario)
VALUES ('Tamires', 30, 'Desenvolvedora', 3500);
INSERT INTO tb_funcionarios 
VALUES (default, 'Thalmai', 26, 'Engenheiro de Software', 4500);
INSERT INTO tb_funcionarios 
VALUES (default,'Lucas', 26, 'Segurança de Software', 5000);
INSERT INTO tb_funcionarios 
VALUES (default,'Thiago', 45, 'Gerente de Gestão', 7000);
INSERT INTO tb_funcionarios 
VALUES (default,'Daiane', 23, 'Recepcionista', 1500);

SELECT * FROM tb_funcionarios WHERE salario >= 2000;
SELECT * FROM tb_funcionarios WHERE salario <= 2000;
UPDATE db_rh.tb_funcionarios SET salario = 2000 WHERE id_funcionario = 4;











