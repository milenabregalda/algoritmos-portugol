<?php
require_once 'conexao_bd.php';

$sql = "DELETE FROM usuarios WHERE nome='João Silva'";

if ($conn->query($sql) === TRUE) {
    echo "Registro excluído com sucesso";
} else {
    echo "Erro: " . $sql . "<br>" . $conn->error;
}
?>
