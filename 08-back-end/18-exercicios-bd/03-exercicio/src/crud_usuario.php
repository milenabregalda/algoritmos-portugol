<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD de Usuários</title>
    <link rel="stylesheet" href="../public/css/styles.css"> <!-- Adicione esta linha -->
</head>

<!-- Aula de 03/10/2024
Exercício: Faça o Crud para usuarios.php; -->

<body>
    <?php
    require_once 'db.php';

    // Chama uma função de acordo com o botão clicado
    if (isset($_POST['acao'])) {
        $acao = $_POST['acao'];
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $senha = $_POST['senha'];
        $id = $_POST['id'];

        if ($acao == 'Criar') {
            criarUsuario($nome, $email, $senha);
        } elseif ($acao == 'Atualizar') {
            atualizarUsuario($id, $nome, $email);
        } elseif ($acao == 'Excluir') {
            excluirUsuario($id);
        } elseif ($acao == 'Listar') {
            listarUsuarios();
        }
    }

    // Cadastra usuário
    function criarUsuario($nome, $email, $senha) {
        $con = getConexaoBancoMySQL();
        $sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("sss", $nome, $email, $senha);

        if ($stmt->execute()) {
            echo "<script>alert('Usuário cadastrado com sucesso!'); window.location.href = '../public/index.html';</script>";
        } else {
            echo "<script>alert('Erro.'); window.location.href = '../public/index.html';</script>";
        }

        $stmt->close();
        $con->close();
    }

    // Atualiza usuário de acordo com o ID
    function atualizarUsuario($id, $nome, $email) {
        $con = getConexaoBancoMySQL();
        $sql = "UPDATE usuarios SET nome = ?, email = ? WHERE id = ?";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("ssi", $nome, $email, $id);

        if ($stmt->execute()) {
            echo "<script>alert('Usuário atualizado com sucesso!'); window.location.href = '../public/index.html';</script>";
        } else {
            echo "<script>alert('Erro.'); window.location.href = '../public/index.html';</script>";
        }

        $stmt->close();
        $con->close();
    }

    // Exclui usuário de acordo com o ID
    function excluirUsuario($id) {
        $con = getConexaoBancoMySQL();
        $sql = "DELETE FROM usuarios WHERE id = ?";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("i", $id);

        if ($stmt->execute()) {
            echo "<script>alert('Usuário excluído com sucesso!'); window.location.href = '../public/index.html';</script>";
        } else {
            echo "<script>alert('Erro.'); window.location.href = '../public/index.html';</script>";
        }

        $stmt->close();
        $con->close();
    }

    // Lista usuários cadastrados em nova página
    function listarUsuarios() {
        $con = getConexaoBancoMySQL();
        $sql = "SELECT id, nome, email FROM usuarios";
        $result = $con->query($sql);

        if ($result->num_rows > 0) { // Echo a tabela em HTML
            echo "<h2>Lista de usuários cadastrados:</h2>
                    <table border='1'>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>E-mail</th>
                    </tr>";
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['nome']}</td>
                        <td>{$row['email']}</td>
                      </tr>";
            }
            echo "</table>";
        } else {
            echo "Nenhum usuário encontrado.";
        }

        $con->close();
    }
    ?>
</body>
</html>
