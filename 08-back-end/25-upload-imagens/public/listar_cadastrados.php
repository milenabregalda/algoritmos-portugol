<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Cadastrados</title>
    <style>
        /* CSS interno para que as tabelas apareçam um pouco melhor */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: 1px solid black;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
        }

        img {
            max-width: 150px;
            height: auto;
        }
    </style>
</head>

<body>
    <h1>Lista de Cadastrados</h1>

    <table>
        <thead>
            <tr>
                <!-- Os títulos da colunas da tabela: -->
                <th>Nome</th>
                <th>Foto</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Conecta ao banco de dados
            require '../src/conexao.php';

            // Faz consulta no banco de dados
            $stmt = $pdo->query("SELECT nome, caminho_foto FROM pessoas");

            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) { // Itera neste bloco de código enquanto a consulta ainda tiver resultados disponíveis
                // Continua construindo a tabela HTML com os resultados (cada vez que este bloco de código executa,
                // ele exibe uma linha da tabela com o nome e a foto de uma pessoa):
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row['nome']) . "</td>";
                echo "<td><img src='../" . htmlspecialchars($row['caminho_foto']) . "' alt='Foto de " . htmlspecialchars($row['nome']) . "'></td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>

</body>

</html>