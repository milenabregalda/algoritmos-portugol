<?php
require_once 'conexao.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];

    $sql = "DELETE FROM usuarios WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Usuário deletado com sucesso!";
    } else {
        echo "Erro ao deletar: " . $conn->error;
    }
}

$conn->close();
?>
