CREATE DATABASE tb_empresa;

USE tb_empresa;

CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) not null,
    idade INT,
    cargo VARCHAR(50) not null,
    salario DECIMAL(10, 2) not null,
    telefone varchar(50) not null
);

INSERT INTO tb_colaboradores (nome, idade, cargo, salario,telefone)
VALUES ('João Silva', 30, 'Analista', 2500.00, '(11) 9 1234-5678'),
       ('Maria Santos', 25, 'Desenvolvedor junior', 1500.00,'(11) 9 5678-5678'),
       ('Pedro Almeida', 28, 'Desenvolvedor', 1800.00,'(11) 9 1234-5679'),
       ('Ana Oliveira', 20, 'Desenvolvedor Senior', 1800.00,'(11) 9 5678-1234'),
       ('Mariana Costa', 32, 'Analista', 2100.00,'(11) 9 1234-1234');
       
-- SELECT que retorna todos os colaboradores com salário maior que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- SELECT que retorna todos os colaboradores com salário menor que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualiza o salário do colaborador com ID 3 para 2200.00
UPDATE tb_colaboradores 
SET salario = 2200.00 
WHERE id = 3;

update tb_colaboradores set idade=25 where id = 2;