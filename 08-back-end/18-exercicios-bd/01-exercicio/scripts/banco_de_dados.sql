CREATE DATABASE exercicio_usuarios;

/* Aula de 01/10/2024
Exercício: Logo após crie uma tabela no banco de dados phpMyAdmin. Escreva um script que crie uma tabela usuarios. */

USE exercicio_usuarios;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    data_nascimento DATE
);
