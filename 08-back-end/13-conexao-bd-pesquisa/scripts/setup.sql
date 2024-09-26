CREATE DATABASE IF NOT EXISTS teste_cadastro;
USE teste_cadastro;

CREATE TABLE usuarios (
    id INT(6) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

USE teste_cadastro;
SELECT * FROM usuarios;