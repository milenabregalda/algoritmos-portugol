<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscar Endereço por CEP</title>
</head>

<body>
    <h1>Buscar Endereço</h1>

    <form method="GET" action="index.php">
        <label for="cep">Informe o CEP:</label>
        <input type="text" id="cep" name="cep" autocomplete="off" required>
        <button type="submit">Buscar</button>
    </form>

    <?php
    // Verifica se foi passado um CEP na requisição
    if (isset($_GET['cep'])) {
        require 'buscarEndereco.php';

        // Obtém o CEP do formulário
        $cep = $_GET['cep'];

        // Chama a função para buscar o endereço
        $endereco = buscarEnderecoPorCep($cep);

        // Verifica se o retorno é um array (endereço encontrado)
        if (is_array($endereco)) {
            echo "<h2>Endereço encontrado:</h2>";
            echo "Logradouro: " . $endereco['logradouro'] . "<br>";
            echo "Bairro: " . $endereco['bairro'] . "<br>";
            echo "Cidade: " . $endereco['localidade'] . "<br>";
            echo "Estado: " . $endereco['uf'] . "<br>";
        } else {
            // Se não for um array, exibe a mensagem de erro
            echo "<p>" . $endereco . "</p>";
        }
    }
    ?>
</body>

</html>