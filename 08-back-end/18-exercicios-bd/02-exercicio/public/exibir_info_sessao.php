<?php

/* Aula de 02/10/2024
Exercício: Crie um script que armazene várias informações na sessão, como nome, email, e data_nascimento. Exiba essas informações em uma página. */

// Inicia a sessão
session_start();

// Armazena várias informações na sessão
$_SESSION['nome'] = 'Júlia';
$_SESSION['email'] = 'julia@email.com';
$_SESSION['data_nascimento'] = '1990-05-01';

// Exibe as informações armazenadas na sessão
echo "Informações da sessão:<br>"; // Para tag p funcionar, precisaria da estrutura HTML completa
echo "Nome: " . $_SESSION['nome'] . "<br>";
echo "E-mail: " . $_SESSION['email'] . "<br>";
echo "Data de Nascimento: " . $_SESSION['data_nascimento'] . "<br>";
