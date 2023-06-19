CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    tipo VARCHAR(50)
);
INSERT INTO tb_classes (nome, descricao, tipo) VALUES
('Guerreiro', 'Classe especializada em combate corpo a corpo', 'Melee'),
('Mago', 'Classe especializada em magias e ataques à distância', 'Ranged'),
('Arqueiro', 'Classe especializada em ataques à distância com arco e flecha', 'Ranged'),
('Ladrão', 'Classe especializada em furtividade e ataques sorrateiros', 'Melee'),
('Curandeiro', 'Classe especializada em cura e suporte aos aliados', 'Support');

SELECT * FROM tb_classes;
