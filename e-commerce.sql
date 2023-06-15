CREATE DATABASE tb_ecommerce;

USE tb_ecommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) not null,
    descricao TEXT,
    preco DECIMAL(10, 2) not null,
    quantidade_estoque INT,
    categoria VARCHAR(50) not null
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoria)
VALUES 
    ('Camiseta', 'Camiseta de algodão de alta qualidade', 29.90, 50, 'Vestuário'),
    ('Tênis', 'Tênis esportivo', 199.90, 20, 'Calçados'),
    ('Celular', 'Smartphone com câmera de alta resolução', 1499.00, 10, 'Eletrônicos'),
    ('Livro', 'Harry Potter', 39.90, 30, 'Livros'),
    ('Mochila', 'Mochila resistente', 79.90, 15, 'Acessórios'),
    ('Headphone', 'Fone de ouvido com cancelamento de ruído', 299.00, 5, 'Eletrônicos'),
    ('Cadeira', 'Cadeira Gamer', 599.00, 8, 'Móveis'),
    ('Bolsa', 'Bolsa feminina de couro', 249.90, 12, 'Acessórios');

-- retorna todos os produtos com valor maior que 500

select * from tb_produtos where preco > 500;

-- retorna todos os produtos com valor menor que 500

select * from tb_produtos where preco< 500;

-- para atualizar os registros

update tb_produtos 
set preco = 179.90 
where id = 2;

