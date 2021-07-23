CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT,
    nome_classe VARCHAR(255),
    tipo_habilidade VARCHAR(255),
    PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem INT AUTO_INCREMENT,
	nome VARCHAR(255),
    cor_cabelo VARCHAR(255),
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    fk_classe INT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome_classe, tipo_habilidade)
VALUES
('Tank','Escudo'),
('Arqueiro','Arco'),
('Flash','Corre'),
('Super Shock', 'Solta Raios'),
('Fire', 'Solta fogo');


INSERT INTO tb_personagem (nome, cor_cabelo,ataque,defesa, fk_classe)
VALUES
('VERINHA','Marrom',1000, 700, 1),
('RENATINHA','Laranja', 2000, 1000, 2),
('Thalmaizi','Preto',3000, 1800, 1),
('Gilzinho', 'Vermelho',1500,1000, 3),
('Lili','Rosa',3000,400,5),
('Theozinho','Azul',5000,4500,4),
('Thaisinha','Purple',2000,2000,4),
('Tamiresca','Black',6000,5000,5);

SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;


SELECT * FROM tb_personagem WHERE ataque >= 2000;
SELECT * FROM tb_personagem WHERE defesa <= 2000 AND defesa >= 1000;

SELECT * FROM tb_personagem WHERE nome LIKE '%C%';

SELECT tb_personagem.nome,tb_classe.nome_classe, tb_classe.tipo_habilidade,tb_personagem.cor_cabelo,tb_personagem.ataque,tb_personagem.defesa
FROM tb_personagem 
INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;
 
SELECT tb_personagem.id_personagem, tb_personagem.nome, tb_classe.nome_classe
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe
WHERE tb_classe.nome_classe="Arqueiro";