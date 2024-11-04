create database Consultorio; /*Criei DB */
use Consultorio; /*Troquei */

drop database Consultorio; /*Delete */


create table Paciente(
	pk_id_paciente int auto_increment primary key,
    nome_paciente varchar(50) not null,
    data_nascimento_paciente date not null,
    cpf_paciente char(11) not null unique, /*not num: campo obrigatório */ /*unique: campo único, se tiver outro igual da erro */
    genero_paciente enum('f','m','o'),
    endereco_paciente varchar(100),
    email_paciente varchar(80) unique,
    telefone_paciente char(13)
);

insert into Paciente(nome_paciente, data_nascimento_paciente, cpf_paciente, genero_paciente, endereco_paciente, email_paciente, telefone_paciente) values
	('Juliana Santos', '1990-05-15', '12345678901', 'f', 'Avenida das Nações, 50', 'juliana.santos@gmail.com', '5511987654321'),
	('Rafael Almeida', '1985-12-21', '23456789012', 'm', 'Rua das Flores, 78', 'rafael.almeida@outlook.com', '5511976543210'),
	('Sofia Costa', '1993-03-14', '34567890123', 'f', 'Praça do Mercado, 10', 'sofia.costa@yahoo.com', '5511912345678'),
	('André Lima', '1978-07-05', '45678901234', 'm', 'Rua do Comércio, 30', 'andre.lima@hotmail.com', '5511923456789'),
	('Fernanda Pereira', '2001-09-28', '56789012345', 'f', 'Avenida do Sol, 90', 'fernanda.pereira@gmail.com', '5511934567890'),
	('Pedro Henrique', '1995-04-12', '67890123456', 'm', 'Rua Verde, 44', 'pedro.henrique@outlook.com', '5511945678901'),
	('Camila Rocha', '1982-08-03', '78901234567', 'f', 'Avenida Brasil, 200', 'camila.rocha@hotmail.com', '5511956789012'),
	('Lucas Martins', '1998-06-19', '89012345678', 'm', 'Rua das Acácias, 15', 'lucas.martins@gmail.com', '5511967890123'),
	('Tatiane Ribeiro', '1994-11-30', '90123456789', 'f', 'Rua do Limoeiro, 33', 'tatiane.ribeiro@yahoo.com', '5511978901234'),
	('Gabriel Alves', '1989-01-01', '01234567890', 'm', 'Rua das Palmeiras, 11', 'gabriel.alves@outlook.com', '5511989012345');
drop table Paciente;


create table Dentista(
	pk_id_dentista int auto_increment primary key,
    nome_dentista varchar(50) not null,
    data_nascimento_dentista date not null,
    cro_dentista char(7) not null unique,
    genero_dentista enum('f','m','o'),
    endereco_dentista varchar(100),
    email_dentista varchar(80) unique,
    telefone_dentista char(13)
);


insert into Dentista(nome_dentista, data_nascimento_dentista, cro_dentista, genero_dentista, endereco_dentista, email_dentista, telefone_dentista) values
	('João Silva', '1985-05-20', '5432189', 'm', 'Rua da Alegria, 45', 'joao.silva@mail.com', '5511934567890'),
	('Ana Paula', '1992-08-15', '9876543', 'f', 'Avenida dos Médicos, 100', 'ana.paula@dentista.com', '5511956781234'),
	('Carlos Mendes', '1978-02-10', '8765432', 'm', 'Rua dos Pinheiros, 88', 'carlos.mendes@gmail.com', '5511945678901'),
	('Juliana Martins', '1995-03-30', '1234567', 'f', 'Travessa do Sol, 4', 'juli.martins@outlook.com', '5511976543210'),
	('Roberto Lima', '1980-11-12', '6543210', 'm', 'Rua da Esperança, 67', 'roberto.lima@hotmail.com', '5511923456789'),
	('Mariana Souza', '1983-09-25', '5678901', 'f', 'Avenida das Flores, 250', 'mariana.souza@mail.com', '5511987654321'),
	('Lucas Ferreira', '1990-07-04', '3210987', 'm', 'Rua do Comércio, 22', 'lucas.ferreira@dentista.com', '5511934560123'),
	('Patrícia Almeida', '1988-06-17', '2345678', 'f', 'Rua dos Trabalhadores, 99', 'patricia.almeida@gmail.com', '5511943210987'),
	('Thiago Costa', '1993-12-03', '4567890', 'm', 'Avenida do Futuro, 300', 'thiago.costa@outlook.com', '5511973214567'),
	('Eliana Rocha', '1986-01-30', '3456789', 'f', 'Rua das Oliveiras, 55', 'eliana.rocha@hotmail.com', '5511920123456');
drop table Dentista;
ALTER TABLE tbl_dentista CHANGE nome_dentista nome_do_dentista VARCHAR(100); /*ALTERA O NOME DA COLUNA    OBS: NÃO CONFIRMEI O CÓDIGO */


create table Consulta(
	pk_id_consulta int auto_increment primary key,
    local_consulta varchar(50),
    data_consulta datetime,
    descricao text(100)
);

insert into Consulta(local_consulta, data_consulta, descricao) values
	('sala 1', '2024-11-10 14:00:00', 'Consulta de rotina'),
    ('sala 4', '2024-11-15 10:30:00', 'Exame de sangue'),
    ('sala 2', '2024-11-20 16:00:00', 'Avaliação dermatológica'),
    ('sala 3', '2024-12-01 09:15:00', 'Consulta de endocrinologia'),
    ('sala 5', '2024-12-05 11:45:00', 'Reavaliação da pressão arterial'),
    ('sala 6', '2024-12-10 15:30:00', 'Consulta com nutricionista'),
    ('sala 7', '2024-12-15 08:00:00', 'Consulta ortopédica'),
    ('sala 8', '2025-01-02 13:00:00', 'Exame de raio-x'),
    ('sala 9', '2025-01-10 14:30:00', 'Consulta psiquiátrica'),
    ('sala 10', '2025-01-20 09:00:00', 'Consulta oftalmológica');
drop table Consulta;
    
describe table Paciente;
describe table Dentista;
describe table Consulta;

select * from Paciente; /*descrição e dados da tabela */
select * from Dentista;
select * from Consulta;
select Nome_Paciente, Data_Nascimento_Paciente from Paciente; /*Ver somente os dois */
select Nome_Paciente, genero_paciente from Paciente;


ALTER TABLE Paciente /* selecionando a tebela pra mexer nela*/ /*Trabalha na estrutura da tabela */
ADD COLUMN Convenio_Paciente VARCHAR(50); /*Atua na alteração da estrutura da tabela */

update Paciente 
set Convenio_Paciente = 'Siria Líbano' 
where pk_id_paciente = 2; /*Confirmar e adicionar o registro */ /*where significa "onde", onde alterar */

update Paciente
set Convenio_Paciente = 'Sulamerica Seguros'
where nome_paciente = 'Juliana Santos';

update Paciente
set Convenio_Paciente = 'Porto Seguros'
where pk_id_paciente in (5,7,10);


alter table Paciente
add column valor_convenio decimal(10, 2); /*valor númerico: onde aceita 10 caracteres com 2 casas decimais */

update Paciente
set valor_convenio = '100.00';

delete from Paciente
where pk_id_paciente = 3; /*Apaguei o 3º registro */

select * from Paciente;

/*UPDATEE E DELETEE SEM WHERE ESTÁ ERRAAADOOOOO */
/* O comando UPDATE é usado para modificar dados existentes em uma ou mais colunas de registros dentro de uma tabela.*/

ALTER TABLE Dentista /*selecionando a tebela pra mexer nela */ /*Trabalha na estrutura da tabela */
ADD COLUMN Especialidade_dentista VARCHAR(50); /*Atua na alteração da estrutura da tabela */

update Dentista 
set Especialidade_dentista = 'Cirurgia e Traumatologia'
where pk_id_dentista = 2; /*Confirmar e adicionar o registro */ /*where significa "onde", onde alterar */

update dentista
set especialidade_dentista = 'Radiologia Odontológica'
where pk_id_dentista in (1, 3, 4);

update dentista
set especialidade_dentista = 'Endodontia'
where nome_dentista = 'Roberto Lima';

update dentista
set especialidade_dentista = 'Prótese Bucomaxilofacial'
where nome_dentista = 'Juliana Martins';

alter table Consulta    /* ADICIONANDO CHAVE ESTRANGEIRA (paciente) NA TABELA CONSUKTA */
add column fk_id_paciente int;

alter table Consulta  /* FAZENDO A LIGAÇÃO COM A TABELA PACIENTE */
add constraint fk_id_paciente
foreign key (fk_id_paciente) references Paciente(pk_id_paciente);

alter table Consulta
add column fk_id_dentista int;

alter table Consulta
add constraint fk_id_dentista
foreign key (fk_id_dentista) references Dentista(pk_id_dentista);

select * from Paciente; /*descrição e dados da tabela */
select * from Dentista;
select * from Consulta;
describe table Paciente;
describe table Dentista;
describe Consulta; /* DESCREVE OS ELEMENTOS*/




/* JUNTANDO AS TABELAS COM JOIN (junção de 2 tabelas)/ / JOIN => junção da tabela consulta (as c)*/
select
* from Consulta as c /* as = criei uma variavél (inserindo um alias) para a consulta*/
join Paciente as p
on c.pk_id_consulta = p.pk_id_paciente;


/* JUNTANDO AS TABELAS COM JOIN (junção de 2 tabelas)/ / JOIN => junção da tabela dentista (as d)*/
select d.cro_dentista, c.data_consulta, c.local_consulta /* MANDEI MONSTRAR APENAS OS 3*/
from Consulta as c
join Dentista as d
on c.pk_id_consulta = d.pk_id_dentista;


select c.data_consulta, p.nome_paciente, p.cpf_paciente /* MANDEI MONSTRAR APENAS OS 3*/
from Consulta as c
join Paciente as p 
on c.pk_id_consulta = p.pk_id_paciente;

/* MOSTRANDO TUDO O QUE TEMOS PARA OFERECER com INNER JOIN (junção de 3 ou mais tabelas)*/
select *
from Consulta as c
join Paciente as p
on c.pk_id_consulta = pk_id_paciente
join Dentista as d
on c.pk_id_consulta = pk_id_dentista;


/* inner join filtrando as colunas desejadas*/

select p.nome_paciente, d.cro_dentista, c.data_consulta, c.local_consulta
from consulta as c
join paciente as p
on c.pk_id_consulta = pk_id_paciente
join dentista as d
on c.pk_id_consulta = pk_id_dentista;