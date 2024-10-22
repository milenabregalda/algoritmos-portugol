<?php

/* Aula de 01/10/2024
Exercício: Escreva um script que consulta todos os registros da tabela usuarios e exiba os resultados em uma tabela HTML. */

// Inclui o arquivo de conexão ao banco de dados
require_once '../src/conexao.php';

// Cria uma conexão com o banco de dados MySQL
$con = getConexaoBancoMySQL();

// Define a consulta SQL para selecionar todos os registros da tabela usuarios
$sql = "SELECT * FROM usuarios";

// Executa a consulta e armazena o resultado
$resultado = $con->query($sql);

// Verifica se a consulta retornou resultados
if ($resultado->num_rows > 0) {
    // Inicia a tabela HTML e define os cabeçalhos das colunas
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Data de Nascimento</th>
            </tr>";
    
    // Loop para percorrer os resultados e exibir cada linha na tabela
    while ($linha = $resultado->fetch_assoc()) {
        echo "<tr>
                <td>{$linha['id']}</td>
                <td>{$linha['nome']}</td>
                <td>{$linha['email']}</td>
                <td>{$linha['data_nascimento']}</td>
            </tr>";
    }
    // Fecha a tabela HTML
    echo "</table>";
} else {
    // Mensagem exibida se não houver registros encontrados
    echo "Nenhum registro encontrado.";
}

// Fecha a conexão com o banco de dados
$con->close();
?> 
