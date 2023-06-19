-- Utilização do banco de dados das categorias
USE db_farmacia_bem_estar;

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  data_de_vencimento VARCHAR(10) NOT NULL,
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (id, nome, preco, descricao, data_de_vencimento, categoria_id)
VALUES
  (1, 'Paracetamol', 10.50, 'Analgésico e antitérmico', '2023-07-17', 1),
  (2, 'Shampoo', 55.90, 'Limpeza e cuidados com os cabelos', '2023-09-1', 2),
  (3, 'Sabonete', 2.50, 'Limpeza e hidratação da pele', '2023-08-14', 3),
  (4, 'Vitamina C', 30.00, 'Suplemento vitamínico', '2023-10-17', 4),
  (5, 'Arroz', 8.99, 'Alimento básico', '2023-09-20', 5),
  (6, 'Ibuprofeno', 12.75, 'Analgésico e anti-inflamatório', '2023-11-19', 1),
  (7, 'Creme hidratante', 19.90, 'Hidratação da pele', '2023-12-27', 2),
  (8, 'Desodorante', 8.50, 'Controle de odor corporal', '2023-09-07', 3);

-- SELECT que retorna todos os produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT que retorna todos os produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT que utiliza o operador LIKE para buscar produtos com a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- SELECT utilizando INNER JOIN para unir dados das tabelas tb_produtos e tb_categori
SELECT * FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- SELECT utilizando INNER JOIN para unir dados das tabelas tb_produtos e tb_categorias para uma categoria específica
SELECT * FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';
