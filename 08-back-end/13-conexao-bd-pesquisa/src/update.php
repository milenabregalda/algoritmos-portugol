<?php
require_once 'conexao.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $email = $_POST['email'];

    $sql = "UPDATE usuarios SET nome='$nome', email='$email' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Usuário atualizado com sucesso!";
    } else {
        echo "Erro ao atualizar: " . $conn->error;
    }
}

$conn->close();
?>
