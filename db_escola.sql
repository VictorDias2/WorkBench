CREATE DATABASE db_Escola;
USE db_Escola;

CREATE TABLE tb_aluno(
	pk_id_aluno int auto_increment primary key,
    nome_aluno varchar(50),
    data_nasc_aluno date,
    genero_aluno enum('f','m','o'),
    endereco_aluno varchar(50),
    email_aluno varchar(50),
    telefone_aluno char(11)
);

INSERT INTO tb_aluno(nome_aluno, data_nasc_aluno, genero_aluno, endereco_aluno, email_aluno, telefone_aluno) VALUES
    ('Daniel Cardoso', '2005-07-23', 'm', 'Rua Velho York, 19', 'daniel.cardoso@example.com', '11956480880'),
    ('Mariana Souza', '2006-02-15', 'f', 'Rua das Palmeiras, 58', 'mariana.souza@example.com', '11987543090'),
    ('Pedro Almeida', '2004-10-10', 'm', 'Avenida Brasil, 123', 'pedro.almeida@example.com', '11976543210'),
    ('Isabela Rocha', '2005-12-25', 'f', 'Rua das Flores, 45', 'isabela.rocha@example.com', '11989432015'),
    ('Rafael Costa', '2003-09-05', 'm', 'Rua Rio Verde, 300', 'rafael.costa@example.com', '11995431220'),
    ('Lucas Andrade', '2006-03-18', 'm', 'Rua do Sol, 99', 'lucas.andrade@example.com', '11988654233'),
    ('Ana Oliveira', '2004-06-11', 'f', 'Rua Mar Azul, 120', 'ana.oliveira@example.com', '11980765544'),
    ('Bruno Martins', '2005-11-02', 'm', 'Avenida Central, 75', 'bruno.martins@example.com', '11992341012'),
    ('Larissa Lima', '2003-08-14', 'f', 'Rua dos Jacarandás, 15', 'larissa.lima@example.com', '11998765430'),
    ('Thiago Santos', '2006-05-29', 'm', 'Rua da Paz, 101', 'thiago.santos@example.com', '11984671234');


CREATE TABLE tb_aula(
	pk_id_aula int auto_increment primary key,
    sala_aula char(2),
    materia_aula varchar(20),
    quantidade_alunos_aula varchar(3),
	dia_horario_aula datetime,
    conteudo_aula text
);

INSERT INTO tb_aula(sala_aula, materia_aula, quantidade_alunos_aula, dia_horario_aula, conteudo_aula) VALUES
	('08', 'Matemática', '25', '2024-12-15 08:00:00', 'Introdução a álgebra linear e matrizes.'),
	('02', 'História', '30', '2024-12-16 09:30:00', 'A Revolução Industrial e suas consequências.'),
	('11', 'Biologia', '20', '2024-12-17 11:00:00', 'Evolução das espécies e seleção natural.'),
	('03', 'Português', '22', '2024-12-18 13:00:00', 'Análise sintática e morfológica de frases.'),
	('06', 'Física', '27', '2024-12-19 14:30:00', 'Leis de Newton e aplicação na vida cotidiana.'),
	('10', 'Geografia', '29', '2024-12-20 10:30:00', 'Formações rochosas e relevo terrestre.'),
	('01', 'Inglês', '18', '2024-12-21 12:00:00', 'Verb Tenses - Simple Past, Present, and Future.'),
	('05', 'Química', '28', '2024-12-22 15:00:00', 'Compostos orgânicos e suas aplicações.'),
	('02', 'Artes', '15', '2024-12-23 09:00:00', 'Introdução ao Renascimento e obras clássicas.'),
	('10', 'Educação Física', '32', '2024-12-24 16:30:00', 'Práticas de esportes coletivos e regras.');
    


CREATE TABLE tb_professor(
	pk_id_professor int auto_increment primary key,
    nome_professor varchar(50),
    cpf_professor char(11),
    idade_professor char(2),
    disciplina_professor varchar(20),
	cidade_professor varchar(30)
);

INSERT INTO tb_professor (nome_professor, cpf_professor, idade_professor, disciplina_professor, cidade_professor) VALUES
	('Carlos Alberto', '51065221451', '38', 'Matemática', 'Mariporã'),
	('Maria Fernanda', '12345678901', '29', 'História', 'São Paulo'),
	('José da Silva', '23456789012', '45', 'Biologia', 'Guarulhos'),
	('Ana Clara', '34567890123', '32', 'Português', 'Santo André'),
	('Ricardo Gomes', '45678901234', '50', 'Física', 'São Bernardo do Campo'),
	('Juliana Lima', '56789012345', '41', 'Geografia', 'Osasco'),
	('Marcio Santos', '67890123456', '35', 'Inglês', 'Diadema'),
	('Patrícia Costa', '78901234567', '28', 'Química', 'Mauá'),
	('Roberto Pereira', '89012345678', '47', 'Educação Física', 'Itaquaquecetuba'),
	('Sofia Martins', '90123456789', '30', 'Artes', 'Ferraz de Vasconcelos');
    
SELECT * FROM tb_aluno;
SELECT * FROM tb_aula;
SELECT * FROM tb_professor;


    
    
ALTER TABLE tb_professor
ADD COLUMN estado_civil_professor VARCHAR(15);

ALTER TABLE tb_professor
ADD COLUMN nome_mãe_professor VARCHAR(50);

ALTER TABLE tb_professor
MODIFY COLUMN cpf_professor CHAR(14);

INSERT INTO tb_professor (nome_professor, cpf_professor, idade_professor, disciplina_professor, cidade_professor, estado_civil_professor, nome_mãe_professor) VALUES
	('Fernanda Lima', '98765432100125', '34', 'Matemática', 'São Paulo', 'Solteira', 'Maria Lima'),
	('Gustavo Ribeiro', '87654321009541', '42', 'Física', 'Santo André', 'Casado', 'Ana Ribeiro'),
	('Cláudia Martins', '76543210908487', '29', 'Química', 'São Bernardo do Campo', 'Divorciada', 'Janaína Martins');
    

UPDATE tb_professor
SET cidade_professor = NULL;

UPDATE tb_professor
SET disciplina_professor = 'Física'
WHERE pk_id_professor in (13, 12, 11);

UPDATE tb_professor
SET disciplina_professor = 'Português'
WHERE pk_id_professor = '9';

UPDATE tb_professor
SET disciplina_professor = 'Matemática'
WHERE nome_professor = 'Sofia Martins';

DELETE from tb_professor
WHERE pk_id_professor in (7, 10, 12);

ALTER TABLE tb_professor
ADD COLUMN outro_email_professor VARCHAR(30);

UPDATE tb_professor
SET outro_email_professor = 'solicitação em andamento...';


ALTER TABLE tb_professor
MODIFY COLUMN estado_civil_professor VARCHAR(10);

ALTER TABLE tb_professor
ADD COLUMN formacao_prof VARCHAR(30);