use  db_pizzaria_legal;

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    Valor INT,
    quantidade INT,
    categorias_id INT,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, Valor, quantidade, categorias_id) VALUES
('Pizza de Chocolate', '55.00', '10', '1'),
('Pizza de Frango com Catupiry', '60.00', '8', '2'),
('Pizza Calabresa com Cebola', '58.00', '5', '3'),
('Pizza Vegetariana', '32.00', '7', '4'),
('Pizza Vegana Suprema', '77.00', '6', '5'),
('Pizza de Romeu e Julieta', '50.00', '12', '1'),
('Pizza de Frago com Catupiry', '43.00', '9', '2'),
('Pizza Clabresa com Bacon', '79.00', '4', '3');

-- SELECT que retorna todos os personagens cujo poder de ataque seja maior que 2000
SELECT * FROM tb_pizzas WHERE Valor > 45;

-- SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo de 1000 e 2000
SELECT * FROM tb_pizzas WHERE Valor BETWEEN 50 AND 100;

-- SELECT utilizando o operador LIKE para buscar personagens com a letra C no nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT utilizando LEFT JOIN para unir dados de tb_personagens com tb_classes
SELECT * FROM tb_pizzas p
Inner JOIN tb_categorias c ON p.categorias_id = c.id;

-- SELECT utilizando INNER JOIN para achar os personagens do tipo arqueiro
SELECT p.* FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categorias_id = c.id
WHERE c.tipo = 'doce';

