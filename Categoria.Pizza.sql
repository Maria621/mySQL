CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
 id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    tipo VARCHAR(50)
);

INSERT INTO tb_categorias (nome_categoria, descricao, tipo) VALUES
('Pizza Normal', 'Pizzas com ingredientes doces', 'Doce'),
('Pizza Normal', 'Pizzas com Frango desfiado e outros ingredientes', 'Frango'),
('Pizza Normal', 'Pizza com linguiça calabresa e outros ingredientes', 'Calabresa'),
('Pizza Vegetariana', 'Pizza com ingredientes frescos e variados de vegetais', 'Legumes'),
('Pizza Vegana', 'Pizza com ingredientes frescos e variados de vegetais sem nada derivado de animal', 'Legumes 2');

SELECT * FROM tb_categorias;
