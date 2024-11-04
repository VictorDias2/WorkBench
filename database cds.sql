create database db_cds;
use db_cds;

create table tb_artista(
	cod_art int not null auto_increment primary key,
    nome_art varchar(100) not null
);


create table tb_gravadora(
	cod_grav int not null auto_increment primary key,
    nome_grav varchar(50) not null
);


create table tb_categoria(
	cod_cat int not null auto_increment primary key,
    nome_cat varchar(50) not null
);


create table tb_estado(
	sigla_est char(2) auto_increment primary key,
    nome_est char(50)
);


create table tb_cidade(
	cod_cid int not null auto_increment primary key,
    sigla_est char(2) not null,
    nome_cid varchar(100) not null
);


create table tb_cliente(
	cod_cli int not null auto_increment primary key,
    nome_cli varchar(100) not null,
    end_cli  varchar(200) not null,
    renda_cli decimal(10, 2) not null,
    sexo_cli enum('f', 'm') not null
);


create table tb_conjuge(
	cod_conj varchar(100) not null,
    renda_conj decimal(10, 2) not null,
    sexo_conj enum('f', 'm') not null
);


create table cd_funcionarios(
	cod_func int not null auto_increment primary key,
    nome_func varchar(100) not null,
    end_func varchar(200) not null,
    sal_func decimal(10, 2) not null,
    sexo_func enum('f', 'm') not null
);


create table tb_dependente(
	cod_dep int not null auto_increment primary key,
    nome_dep varchar(100) not null,
    sexo_dep enum('m', 'f') not null
);


create table tb_titulo(
	cod_tit int not null auto_increment primary key,
    nome_cd varchar(100) not null,
    val_cd decimal(10, 2) not null,
    qtd_est int not null
);


create table tb_pedido(
	num_ped int not null auto_increment primary key,
    data_pedido datetime not null,
    val_pedido decimal(10, 2) not null
);


create table tb_titulo_pedido(
	
);