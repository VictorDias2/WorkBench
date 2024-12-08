create database pokemon;
use pokemon;

create table tb_treinador(
	pk_id_treinador int auto_increment primary key,
    nome_treinador varchar(50),
    idade_treinador int,
    aparencia_treinador varchar(200),
    gostos_treinador varchar(100)
);
drop table tb_treinador;


create table tb_pokemon (
    pk_id_pokemon int auto_increment primary key,
    nome_pokemon varchar(50),
    tipo_primario varchar(20),
    habilidade_pokemon varchar(50),
    ataque int,
    defesa int,
    hp int,
	fk_id_treinador int,
    foreign key (fk_id_treinador) references tb_treinador(pk_id_treinador)
    );
    drop table tb_pokemon;

insert into tb_treinador (nome_treinador, idade_treinador, aparencia_treinador, gostos_treinador) values
('Pedro', 19, 'Alto, sem barba, magro e cabelo liso', 'Chocolate, limão e lasanha'),
('Maria', 22, 'Baixa, cabelo cacheado, olhos castanhos', 'Sorvete, frutas e massas'),
('João', 30, 'Cabelos curtos e escuros, musculoso', 'Pizza, sucos naturais e carne'),
('Ana', 25, 'Cabelos loiros, alta e atlética', 'Salmão, café e viagens'),
('Carlos', 28, 'Careca, barba grande, olhos verdes', 'Hambúrguer, batatas fritas e videogames');

