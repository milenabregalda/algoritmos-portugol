<?php

/* Aula de 01/10/2024
Exercício: Escreva um script que exclua um usuário da tabela usuários baseado no seu ID. Use um formulário para receber o ID. */

require_once '../src/conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Conexão com o banco
    $con = getConexaoBancoMySQL();

    // Obtém o ID do usuário enviado pelo formulário
    $id = $_POST['id'];

    // Comando SQL para excluir o usuário
    $sql = "DELETE FROM usuarios WHERE id = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("i", $id);

    // Executa a exclusão
    if ($stmt->execute()) {
        echo "Usuário excluído com sucesso!";
    } else {
        echo "Erro ao excluir: " . $stmt->error;
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
    <title>Excluir Usuário</title>
</head>
<body>
    <h2>Excluir Usuário</h2>
    <form action="" method="post">
        ID do Usuário: <input type="text" name="id" required>
        <input type="submit" value="Excluir">
    </form>
</body>
</html>
