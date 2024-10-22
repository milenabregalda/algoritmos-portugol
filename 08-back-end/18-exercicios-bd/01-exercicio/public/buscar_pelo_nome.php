<?php

/* Aula de 01/10/2024
Exercício: Crie uma funcionalidade (function) que permita buscar usuários pelo nome. */

require_once '../src/conexao.php';

function buscarUsuariosPorNome($nome) {
    $con = getConexaoBancoMySQL();
    $sql = "SELECT * FROM usuarios WHERE nome LIKE ?";
    $stmt = $con->prepare($sql);
    $nomeBusca = "%" . $nome . "%";
    $stmt->bind_param("s", $nomeBusca);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if ($resultado->num_rows > 0) {
        echo "<table border='1'>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Data de Nascimento</th>
                </tr>";
        while ($linha = $resultado->fetch_assoc()) {
            echo "<tr>
                    <td>{$linha['id']}</td>
                    <td>{$linha['nome']}</td>
                    <td>{$linha['email']}</td>
                    <td>{$linha['data_nascimento']}</td>
                </tr>";
        }
        echo "</table>";
    } else {
        echo "Nenhum registro encontrado.";
    }

    $stmt->close();
    $con->close();
}

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['nome'])) {
    $nome = $_POST['nome'];
    buscarUsuariosPorNome($nome);
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Buscar Usuários</title>
</head>
<body>
    <h2>Buscar Usuários pelo Nome</h2>
    <form action="" method="post">
        Nome: <input type="text" name="nome" required>
        <input type="submit" value="Buscar">
    </form>
</body>
</html>
