-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Utilização do banco de dados
USE db_farmacia_bem_estar;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255) NOT NULL
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (id, nome, descricao)
VALUES
  (1, 'Medicamentos', 'Categoria para medicamentos'),
  (2, 'Cosméticos', 'Categoria para produtos de beleza'),
  (3, 'Higiene', 'Categoria para produtos de higiene'),
  (4, 'Vitaminas', 'Categoria para suplementos vitamínicos'),
  (5, 'Alimentos', 'Categoria para alimentos');

-- Listar toda a tabela
SELECT * FROM tb_categorias
