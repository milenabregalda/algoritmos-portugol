<?php
require_once 'conexao.php';

$sql = "SELECT id, nome, email, data_cadastro FROM usuarios";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"]. " - Nome: " . $row["nome"]. " - E-mail: " . $row["email"]. " - Data Cadastro: " . $row["data_cadastro"]. "<br>";
    }
} else {
    echo "Nenhum usuário encontrado.";
}

$conn->close();
?>
