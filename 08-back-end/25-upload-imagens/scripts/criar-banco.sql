CREATE DATABASE IF NOT EXISTS cadastro_imagens;
USE cadastro_imagens;

CREATE TABLE IF NOT EXISTS pessoas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    caminho_foto VARCHAR(255) NOT NULL
);
