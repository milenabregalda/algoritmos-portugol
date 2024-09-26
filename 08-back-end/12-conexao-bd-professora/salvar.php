<?php
require_once 'conexao_bd.php';

$sql = "INSERT INTO usuarios (nome, email) VALUES ('João Silva', 'joao.silva@example.com')";
// Ou colocar variáveis aqui, deixarei assim como exemplo porque não utilizamos o POST ainda

if ($conn->query($sql) === TRUE) {
    echo "Novo registro criado com sucesso";
} else {
    echo "Erro: " . $sql . "<br>" . $conn->error;
}
?>
