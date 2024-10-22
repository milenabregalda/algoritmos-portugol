<?php

/* Aula de 02/10/2024
Exercício: Escreva um script que permita ao usuário alterar o nome armazenado na variável de sessão usuario através de um formulário. */

// Inicia a sessão
session_start();

$_SESSION['usuario'] = 'Roberta';
echo $_SESSION['usuario'];

// Verifica se o formulário foi enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Altera o nome do usuário na sessão
    $_SESSION['usuario'] = $_POST['novo_usuario'];
    echo "<br>Nome de usuário atualizado para: " . $_SESSION['usuario'];
}
?> <!-- Aqui a formatação automática não tirou a tag PHP de fechamento,
    mas ela só é obrigatória se tiver dois blocos separados de PHP no mesmo arquivo -->

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <title>Alterar Nome de Usuário</title>
</head>

<body>
    <h1>Alterar Nome de Usuário</h1>
    <form method="POST">
        <label for="novo_usuario">Novo nome de usuário:</label>
        <input type="text" id="novo_usuario" name="novo_usuario" required>
        <button type="submit">Alterar Nome</button>
    </form>
</body>

</html>