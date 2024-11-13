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
	sigla_est char(2) primary key,
    nome_est char(50)
);


create table tb_cidade(
	cod_cid int not null auto_increment primary key,
    sigla_est char(2) not null,
    nome_cid varchar(100) not null
);


create table tb_cliente(
	cod_cli int not null auto_increment primary key,
    cod_cid int not null,
    nome_cli varchar(100) not null,
    end_cli  varchar(200) not null,
    renda_cli decimal(10, 2) not null,
    sexo_cli enum('f', 'm') not null,
	FOREIGN KEY (cod_cid) REFERENCES tb_cidade(cod_cid)
);


create table tb_conjuge(
	cod_cli int primary key not null,
	cod_conj varchar(100) not null,
    renda_conj decimal(10, 2) not null,
    sexo_conj enum('f', 'm') not null,
    foreign key (cod_cli) references tb_cidade(cod_cid)
);


create table td_funcionarios(
	cod_func int not null auto_increment primary key,
    nome_func varchar(100) not null,
    end_func varchar(200) not null,
    sal_func decimal(10, 2) not null,
    sexo_func enum('f', 'm') not null
);


CREATE TABLE tb_dependente (
    cod_dep INT NOT NULL PRIMARY KEY,
    cod_func INT NOT NULL,
    nome_dep VARCHAR(100) NOT NULL,
    sexo_dep ENUM('m', 'f') NOT NULL,
    FOREIGN KEY (cod_func) REFERENCES td_funcionarios(cod_func)
);


create table tb_titulo(
	cod_tit int not null auto_increment primary key,
    cod_cat int not null,
    cod_grav int not null,
    nome_cd varchar(100) not null,
    val_cd decimal(10, 2) not null,
    qtd_estq int not null,
    foreign key (cod_cat) references tb_categoria(cod_cat),
    foreign key (cod_grav) references tb_gravadora(cod_grav)
);


create table tb_pedido(
	num_ped int not null auto_increment primary key,
    cod_cli int not null,
    cod_func int not null,
    data_pedido datetime not null,
    val_pedido decimal(10, 2) not null,
    foreign key (cod_cli) references tb_cliente(cod_cli),
    foreign key (cod_func) references td_funcionarios(cod_func)
);


create table tb_titulo_pedido(
	num_ped int not null,
    cod_tit int not null,
    qtd_cd int not null,
    val_cd decimal(10, 2),
    foreign key (num_ped) references tb_pedido(num_ped),
    foreign key (cod_tit) references tb_titulo(cod_tit)
);


create table tb_titulo_artista(
	cod_tit int not null,
    cod_art int not null,
    foreign key (cod_tit) references tb_titulo(cod_tit),
    foreign key (cod_art) references tb_artista(cod_art)
);