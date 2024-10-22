<?php

/* Aula de 01/10/2024
Exercício: Modifique o script de consulta para implementar paginação. Exiba 10 usuários por página e adicione links para navegar entre as páginas. */

require_once '../src/conexao.php';

// Número de registros por página
$regPorPagina = 10;

// Obtém a página atual da URL, padrão é 1
$pagina = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;

// Calcula o offset para a consulta SQL
$offset = ($pagina - 1) * $regPorPagina;

// Conexão com o banco
$con = getConexaoBancoMySQL();

// Consulta para obter os usuários com LIMIT e OFFSET
$sql = "SELECT * FROM usuarios LIMIT $regPorPagina OFFSET $offset";
$resultado = $con->query($sql);

// Exibe a tabela de usuários
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

// Consulta para contar o total de usuários
$sqlTotal = "SELECT COUNT(*) AS total FROM usuarios";
$resultadoTotal = $con->query($sqlTotal);
$totalUsuarios = $resultadoTotal->fetch_assoc()['total'];

// Calcula o número total de páginas
$totalPaginas = ceil($totalUsuarios / $regPorPagina);

// Links de navegação
echo "<div>";
for ($i = 1; $i <= $totalPaginas; $i++) {
    if ($i == $pagina) {
        echo "<strong>$i</strong> "; // Página atual em destaque
    } else {
        echo "<a href=\"?pagina=$i\">$i</a> "; // Link para as outras páginas
    }
}
echo "</div>";

// Fecha a conexão
$con->close();

?>
