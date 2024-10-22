CREATE DATABASE usuarios_db;

/* Aula de 03/10/2024
Exercício: Crie um banco de dados chamado usuarios_db com uma tabela usuarios. */

USE usuarios_db;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);