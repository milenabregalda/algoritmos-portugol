<?php
// Inicia a sessão ou retoma uma sessão existente
session_start(); 

// Exibe a mensagem que os dados foram recebidos
echo "Os dados recebidos foram:</br>";

// Acessa a variável de sessão 'usuario' e exibe o nome do usuário
echo "Olá, ", $_SESSION['usuario'], "</br>";
?>