<?php

/* Aula de 01/10/2024
Exercício: Crie um script que insira ao menos 5 registros na tabela usuarios com dados fictícios. */

require_once 'conexao.php';

$con = getConexaoBancoMySQL();

$sql = "INSERT INTO usuarios (nome, email, data_nascimento) VALUES 
('Rogério da Silva', 'rogeriodasilva@email.com', '1990-02-15'),
('Marina Ribeiro', 'marinaribeiro@email.com', '1985-07-22'),
('José Freitas', 'josefreitas@email.com', '1992-10-11'),
('Luciana Borges', 'lucianaborges@email.com', '1994-03-30'),
('Pedro Mendes', 'pedro.mendes@example.com', '1988-11-25')";

if ($con->query($sql) === TRUE) {
    echo "Registros inseridos com sucesso!";
} else {
    echo "Erro ao inserir: " . $con->error;
}

$con->close();
?>
