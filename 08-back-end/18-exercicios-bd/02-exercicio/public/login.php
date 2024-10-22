<?php

/* Aula de 02/10/2024
Exercício: Implemente uma verificação que impeça o acesso a uma página protegida se a sessão não estiver ativa. Redirecione o usuário para uma página de login. */

session_start(); // Inicia a sessão

// Lógica de processamento do login
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $_SESSION['usuario'] = $_POST['usuario']; // Armazena o usuário na sessão
    header("Location: ../src/pagina_protegida.php"); // Redireciona para a página protegida
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Página de Login</title>
</head>
<body>
    <h1>Página de Login</h1>
    <form action="login.php" method="POST"> <!-- Envia ao mesmo arquivo -->
        <label for="usuario">Usuário:</label>
        <input type="text" id="usuario" name="usuario" required>
        <button type="submit">Login</button>
    </form>
</body>
</html>
