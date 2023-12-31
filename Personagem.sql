use  db_generation_game_online;

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    vida VARCHAR(255) NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, vida, classe_id) VALUES
('Rhysand',' 2500', '1800', 10 ,' 1'),
('Cassian',' 2100', '1200', 8 , '2'),
('Azriel', '1800',' 2500', 7 ,' 3'),
('Julieta', '2200', '1600', 5 ,' 4'),
('Jullian','2800', '1900', 9 ,' 1'),
('Elise', '1900', '2100', 10 , '2'),
('Feyre', '1700', '2300', 6 , '3'),
('Mor', '2300', '2000', 9 , '5');

-- SELECT que retorna todos os personagens cujo poder de ataque seja maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo de 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE para buscar personagens com a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT utilizando LEFT JOIN para unir dados de tb_personagens com tb_classes
SELECT * FROM tb_personagens p
<<<<<<< HEAD
inner JOIN tb_classes c ON p.classe_id = c.id;
=======
INNER JOIN tb_classes c ON p.classe_id = c.id;
>>>>>>> f00f1a84b3eb7f9cc6cadedbcc8cf362a5f8dbde

-- SELECT utilizando INNER JOIN para achar os personagens do tipo arqueiro
SELECT p.* FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
