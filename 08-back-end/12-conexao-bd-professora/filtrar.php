<?php
require_once 'conexao_bd.php';

$sql = "SELECT id, nome, email FROM cadastro ORDER BY nome ASC";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // Saída de cada linha
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Nome: " . $row["nome"]. " - Email: " . $row["email"]. "<br>";
    }
} else {
    echo "0 resultados";
}
?>
