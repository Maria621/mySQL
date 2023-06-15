create database tb_escola;
use tb_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(50) not null,
data_de_nascimento varchar(10) not null,
responsavel varchar(50) not null,
turma varchar(50) not null,
horario varchar(50) not null,
notas decimal(3,1) not null,
primary key (id)
);

INSERT INTO tb_alunos (nome, data_de_nascimento, responsavel, turma, horario, notas)
VALUES
  ('Cedric Digorry', '1998-03-23', 'Amos Digorry', '5 ano', 'integral', 9.9),
  ('Cassian', '1990-07-05', 'Rhysand', '3 Ano', 'Noite', 4.0),
  ('Fred Wesley', '1998-05-27', 'Arthur wesley', '4 ano', 'integral', 8.5),
  ('George Wesley', '1998-05-27', 'Arthur wesley', '4 ano', 'integral', 8.5),
  ('katniss everdeen', '1995-04-13', 'Sra Everdeen', '7 ano', 'integral', 10.0),
  ('Primrose Everdeen', '2003-02-23', 'Sra Everdeen', '1 ano', 'manha', 8.9),
  ('Peeta Mellark', '1995-08-03', 'Sr Mellark', '7 ano', 'integral', 9.5),
  ('Hazel Grace Lancaster', '2001-10-16', 'Sra Lancaster', '2 ano', 'tarde', 9.5),
  ('Augustus Waters', '2001-09-19', 'Sra waters', '2 ano', 'tarde', 7.5);

-- retorna todos os produtos com valor maior que 500

select * from tb_alunos where notas > 7;

-- retorna todos os produtos com valor menor que 7

select * from tb_alunos where notas < 7;

-- para atualizar os registros

update tb_alunos
set notas = 8 
where id = 2;

-- coloca os elementos em ordem descrecente pela nota, algo que sinte curiosidade

SELECT nome, data_de_nascimento, responsavel, turma, horario, notas
FROM tb_alunos
ORDER BY notas desc;