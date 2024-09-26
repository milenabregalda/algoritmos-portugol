<?php
require_once 'conexao_bd.php';

$sql = "UPDATE usuarios SET email='novoemail@example.com' WHERE nome='João Silva'";

if ($conn->query($sql) === TRUE) {
    echo "Registro atualizado com sucesso";
} else {
    echo "Erro: " . $sql . "<br>" . $conn->error;
}
?>
