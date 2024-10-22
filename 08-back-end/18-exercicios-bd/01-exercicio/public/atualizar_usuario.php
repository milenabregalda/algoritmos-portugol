<?php

/* Aula de 01/10/2024
Exercício: Escreva um script que atualize o nome de um usuário baseado no seu ID. Use um formulário para receber o novo nome e o ID. */

require_once '../src/conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Conexão com o banco
    $con = getConexaoBancoMySQL();

    // Obtém o ID do usuário e o novo nome enviados pelo formulário
    $id = $_POST['id'];
    $novoNome = $_POST['nome'];

    // Comando SQL para atualizar o nome do usuário
    $sql = "UPDATE usuarios SET nome = ? WHERE id = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("si", $novoNome, $id);

    // Executa a atualização
    if ($stmt->execute()) {
        echo "Nome atualizado com sucesso!";
    } else {
        echo "Erro ao atualizar: " . $stmt->error;
    }

    // Fecha a conexão
    $stmt->close();
    $con->close();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Atualizar Nome do Usuário</title>
</head>
<body>
    <h2>Atualizar Nome do Usuário</h2>
    <form action="" method="post">
        ID do Usuário: <input type="text" name="id" required>
        Novo Nome: <input type="text" name="nome" required>
        <input type="submit" value="Atualizar">
    </form>
</body>
</html>
