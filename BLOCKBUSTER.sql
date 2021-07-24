create database blockbuster;

use blockbuster;

create table tb_genero (
id_genero int auto_increment primary key,
genero char(12) not null
);

select * from tb_genero;

insert into tb_genero(genero) values
('ação'),
('terror'),
('romance'),
('animação');

select * from tb_genero;

create table tb_filme (
id_filme int auto_increment primary key,
nFilme char (25),
duracao int,
nota int,
id_genero int,
constraint fk_genero
foreign key (id_genero) references tb_genero(id_genero)
);

drop table tb_filme;

select * from tb_filme;

insert into tb_filme(nFilme,duracao, nota, id_genero) values
('Premonição', 180, 2, 2),
('Frozen',90, 10,4),
('Anabelle', 90, 8, 2),
('Titanic',120, 7, 3),
('Harry Potter', 75, 10, 1),
('Liga da Justiça', 240,8,1);

select * from tb_filme;

select duracao from tb_filme;

select * from tb_filme where duracao = 180;

select * from tb_filme where nota> 6;

select nFilme,nota, genero from tb_filme inner join tb_genero
on tb_genero.id_genero = tb_filme.id_genero where nota>=5 and tb_genero.genero = 'terror';

UPDATE tb_filme set duracao = 150 where id_filme = '3';

select * from tb_filme








