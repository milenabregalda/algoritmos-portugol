<?php

/* Aula de 02/10/2024
Exercício: Crie um script que inicie uma sessão e armazene uma variável de sessão chamada usuario com um valor de sua escolha */

// Inicia a sessão
session_start();

// Armazena uma variável de sessão
$_SESSION['usuario'] = 'Milena';

// Exibe o valor armazenado
echo "Usuário armazenado na sessão: " . $_SESSION['usuario'];

// É boa prática não colocar ? > no final de arquivos PHP puros