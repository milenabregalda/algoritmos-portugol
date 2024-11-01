<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busca de Produtos</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <h1>Consulta de Produtos</h1>
    <form action="index.php" method="get">
        <label for="busca">Buscar por nome:</label>
        <input type="text" id="busca" name="busca" placeholder="Digite o nome do produto...">

        <label for="categoria">Filtrar por categoria:</label>
        <select id="categoria" name="categoria">
            <option value="">Todas</option>
            <option value="Eletrônicos">Eletrônicos</option>
            <option value="Eletrodomésticos">Eletrodomésticos</option>
            <option value="Móveis">Móveis</option>
        </select>

        <label for="preco_min">Preço mínimo:</label>
        <input type="number" id="preco_min" name="preco_min" step="0.01">

        <label for="preco_max">Preço máximo:</label>
        <input type="number" id="preco_max" name="preco_max" step="0.01">

        <button type="submit">Buscar</button>
    </form>

    <?php
    // Inclui o arquivo de conexão com o banco de dados
    require_once '../src/conexao.php';

    // Verifica se o formulário foi enviado e se algum dos filtros foi preenchido (isset vê se variável é definida e não é null)
    if ($_SERVER['REQUEST_METHOD'] === 'GET' && (isset($_GET['busca']) || isset($_GET['categoria']) || isset($_GET['preco_min']) || isset($_GET['preco_max']))) {

        // Recupera os valores de filtro do formulário, se definidos; caso contrário, define como string vazia
        $busca = isset($_GET['busca']) ? $_GET['busca'] : '';
        $categoria = isset($_GET['categoria']) ? $_GET['categoria'] : '';
        $preco_min = isset($_GET['preco_min']) ? $_GET['preco_min'] : '';
        $preco_max = isset($_GET['preco_max']) ? $_GET['preco_max'] : '';

        // Inicia a construção da consulta SQL, WHERE 1=1 é uma técnica comum usada para facilitar a construção dinâmica de condições em consultas
        $sql = "SELECT * FROM produtos WHERE 1=1";

        // Adiciona condição para a busca pelo nome do produto, se houver valor
        if ($busca) {
            $sql .= " AND nome LIKE '%" . $conn->real_escape_string($busca) . "%'";
            /* real_escape_string trata as entradas do usuário para garantir que apenas dados válidos sejam usados nas consultas ao banco de dados.
               Isso protege a aplicação contra injeções SQL (código SQL malicioso preenchido nos campos de entrada por um usuário). Utilizar isso ou prepared statements.
               Exemplo: Se $busca for O'Reilly, a função retornará O\'Reilly, o que impede que o SQL interprete o apóstrofo como o final de uma string.*/
        }

        // Adiciona condição para filtrar por categoria, se houver valor
        if ($categoria) {
            $sql .= " AND categoria = '" . $conn->real_escape_string($categoria) . "'";
        }

        // Adiciona condição para filtrar pelo preço mínimo, se houver valor
        if ($preco_min) {
            $sql .= " AND preco >= " . (float)$preco_min; // Converte para float para garantir o tipo correto
        }

        // Adiciona condição para filtrar pelo preço máximo, se houver valor
        if ($preco_max) {
            $sql .= " AND preco <= " . (float)$preco_max; // Converte para float para garantir o tipo correto
        }

        // Executa a consulta no banco de dados
        $result = $conn->query($sql);

        // Exibe os resultados dentro de uma div com id 'resultados'
        echo "<div id='resultados'>";
        if ($result->num_rows > 0) { // Verifica se existem resultados
            echo "<h2>Resultados:</h2>"; // Título para a seção de resultados
            while ($row = $result->fetch_assoc()) { // Itera sobre cada resultado retornado
                echo "<div class='resultado-item'>"; // Inicia um novo bloco para cada produto
                echo "<strong>Nome:</strong> " . $row["nome"] . "<br>"; // Exibe o nome do produto
                echo "<strong>Categoria:</strong> " . $row["categoria"] . "<br>"; // Exibe a categoria do produto
                echo "<strong>Preço:</strong> R$ " . number_format($row["preco"], 2, ',', '.') . "<br>"; // Exibe o preço formatado
                echo "</div>"; // Fecha o bloco do produto
            }
        } else {
            echo "Nenhum produto encontrado."; // Mensagem quando não há produtos que atendem aos critérios
        }
        echo "</div>"; // Fecha a div de resultados
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
    ?>
</body>

</html>