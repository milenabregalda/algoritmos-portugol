<?php

// Inclui o arquivo do controlador de usuários, onde as operações de CRUD são definidas.
include_once '../src/controllers/UsuarioController.php';

// Cria uma nova instância do controlador de usuários.
$usuarioController = new UsuarioController();

// Verifica se o método de requisição é POST e se a ação foi definida no formulário.
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['acao'])) {
    // Captura a ação a ser realizada (criar, atualizar ou excluir).
    $acao = $_POST['acao'];
    
    // Captura os dados do usuário do formulário.
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    // Verifica se a senha foi enviada e a atribui à variável, se não, define como null.
    $senha = isset($_POST['senha']) ? $_POST['senha'] : null;

    // Realiza a ação correspondente com base no valor da variável $acao.
    if ($acao == 'criar') {
        // Chama o método createUsuario para adicionar um novo usuário.
        $usuarioController->createUsuario($nome, $email, $senha);
    } elseif ($acao == 'atualizar') {
        // Captura o ID do usuário a ser atualizado.
        $id = $_POST['id'];
        // Chama o método updateUsuario para atualizar os dados do usuário.
        $usuarioController->updateUsuario($id, $nome, $email, $senha);
    } elseif ($acao == 'excluir') {
        // Chama o método deleteUsuario para remover um usuário com o ID especificado.
        $usuarioController->deleteUsuario($_POST['id']);
    }
}

// Chama o método readUsuarios para obter a lista de usuários.
$usuarios = $usuarioController->readUsuarios();
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD de Usuários</title>
</head>
<body>
    <h1>CRUD de Usuários POO</h1>

    <!-- Formulário para criar um novo usuário -->
    <form method="POST">
        <input type="hidden" name="id" value="<?= isset($usuario) ? $usuario->id : ''; ?>"> <!-- Campo oculto para ID -->
        <input type="text" name="nome" placeholder="Nome" required> <!-- Campo para nome do usuário -->
        <input type="email" name="email" placeholder="Email" required> <!-- Campo para email do usuário -->
        <input type="password" name="senha" placeholder="Senha" required> <!-- Campo para senha do usuário -->
        <button type="submit" name="acao" value="criar">Criar Usuário</button> <!-- Botão para criar usuário -->
    </form>

    <h2>Lista de Usuários</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th> <!-- Coluna para ID do usuário -->
                <th>Nome</th> <!-- Coluna para nome do usuário -->
                <th>Email</th> <!-- Coluna para email do usuário -->
                <th>Ações</th> <!-- Coluna para ações (atualizar e excluir) -->
            </tr>
        </thead>
        <tbody>
            <!-- Itera sobre a lista de usuários e exibe cada um na tabela -->
            <?php foreach ($usuarios as $usuario): ?>
                <tr>
                    <td><?= $usuario['id'] ?></td> <!-- Exibe o ID do usuário -->
                    <td><?= $usuario['nome'] ?></td> <!-- Exibe o nome do usuário -->
                    <td><?= $usuario['email'] ?></td> <!-- Exibe o email do usuário -->
                    <td>
                        <!-- Formulário para atualizar ou excluir um usuário -->
                        <form method="POST">
                            <input type="hidden" name="id" value="<?= $usuario['id'] ?>"> <!-- Campo oculto para ID -->
                            <input type="text" name="nome" value="<?= $usuario['nome'] ?>"> <!-- Campo para nome a ser atualizado -->
                            <input type="email" name="email" value="<?= $usuario['email'] ?>"> <!-- Campo para email a ser atualizado -->
                            <input type="password" name="senha" placeholder="Nova Senha"> <!-- Campo para nova senha -->
                            <button type="submit" name="acao" value="atualizar">Atualizar</button> <!-- Botão para atualizar usuário -->
                            <button type="submit" name="acao" value="excluir">Excluir</button> <!-- Botão para excluir usuário -->
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
