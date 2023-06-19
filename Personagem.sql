use  db_generation_game_online;

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES
('Rhysand',' 2500', '1800',' 1'),
('Cassian',' 2100', '1200', '2'),
('Azriel', '1800',' 2500',' 3'),
('Julieta', '2200', '1600',' 4'),
('Jullian','2800', '1900',' 1'),
('Elise', '1900', '2100', '2'),
('Feyre', '1700', '2300', '3'),
('Mor', '2300', '2000', '5');

-- SELECT que retorna todos os personagens cujo poder de ataque seja maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo de 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE para buscar personagens com a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT utilizando LEFT JOIN para unir dados de tb_personagens com tb_classes
SELECT * FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- SELECT utilizando INNER JOIN para achar os personagens do tipo arqueiro
SELECT p.* FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
