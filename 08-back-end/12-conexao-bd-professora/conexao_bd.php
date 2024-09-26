<?php

// Aula de 16 e 17/09/2024 - Conexão com banco de dados (exemplo)
// Require, require-once, include, include-once

$servername = "localhost";
$username = "root";
$password = ""; // Senha vazia por enquanto
$dbname = "bancodedados"; // Nome do banco de dados que será utilizado

// Cria uma conexão
$conn = new mysqli($servername, $username, $password, $dbname); // Localhost, root, senha vazia, nome do banco

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}
echo "Banco de dados conectado com sucesso";

$conn->close();

?>