<?php

// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "teste_cadastro";  // Nome do banco de dados

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

/* Neste exemplo, criei outros arquivos php para CRUD.
Eu também poderia fazer funções dentro deste mesmo arquivo conexao, mas assim é melhor. */

?>