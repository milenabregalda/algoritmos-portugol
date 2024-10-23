<?php
// Dados de conexão
$host = 'localhost';
$dbname = 'cadastro_imagens';
$user = 'root';
$password = '';

// Conexão com o banco de dados usando PDO
// (PHP Data Objects - interface de banco de dados genérica, pode ser usada com vários banco de dados)
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erro na conexão com o banco de dados: " . $e->getMessage());
}
