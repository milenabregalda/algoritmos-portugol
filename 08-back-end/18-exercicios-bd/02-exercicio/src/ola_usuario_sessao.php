<?php

/* Aula de 02/10/2024
Exercício: Crie uma página que inicie uma sessão, armazene um nome de usuário na variável de sessão e, em seguida, exiba uma mensagem de boas-vindas usando esse nome. */

// Inicia a sessão
session_start();

// Armazena o nome de usuário na sessão
$_SESSION['usuario'] = 'Amanda';

// Exibe uma mensagem de boas-vindas
echo "Olá, " . $_SESSION['usuario'] . "! Seja bem-vindo(a)!";
