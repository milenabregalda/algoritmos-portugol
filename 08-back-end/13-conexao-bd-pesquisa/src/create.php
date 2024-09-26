<?php
require_once 'conexao.php'; // Include se o arquivo é opcional, require_once se é essencial pro script e deve ser incluído apenas uma vez

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email', '$senha')";

    if ($conn->query($sql) === TRUE) {
        echo "Usuário cadastrado com sucesso!";
    } else {
        echo "Erro: " . $conn->error;
    }
}

$conn->close();
?>
