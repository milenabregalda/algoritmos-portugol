<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Usuário</title>
</head>
<body>
    <h1>Cadastro de Usuário</h1>
    <form action="../src/create.php" method="POST"> <!-- Método POST para enviar os dados, não aparecem os dados na URL como com GET -->
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required>
        <br>

        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" required>
        <br>

        <label for="senha">Senha:</label>
        <input type="password" id="senha" name="senha" required>
        <br>

        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
