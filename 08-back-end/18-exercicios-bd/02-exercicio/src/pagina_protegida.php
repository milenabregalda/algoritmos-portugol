<?php

/* Aula de 02/10/2024
Exercício: Implemente uma verificação que impeça o acesso a uma página protegida se a sessão não estiver ativa. Redirecione o usuário para uma página de login. */

session_start(); // Inicia a sessão (deve ter nesta página também, mesmo se a seção já existe)
$_SESSION['executou_script'] = false;

// Verifica se é a primeira vez que o script está sendo executado
if (!isset($_SESSION['executou_script'])) {
    // Variável de sessão acima foi criada no script para ver se este código já foi executado ou não, começa como false
    session_unset(); // Remove todas as variáveis de sessão que foram criadas nos outros códigos já executados, mas não fecha a sessão
    $_SESSION['executou_script'] = true; // No final da primeira vez que este script rodar,
    // essa variável será true, e o session_unset não se repetirá nas próximas vezes
}

// Verifica se a sessão está ativa
if (!isset($_SESSION['usuario'])) {
    header("Location: ../src/login.php"); // Redireciona para o login se não estiver
    exit(); // Termina a execução do script aqui mesmo
}

// Se não o exit acima não foi executado, é por que o usuário pode acessar a mensagem abaixo:
echo "Você está em uma sessão! Esta é uma página protegida.";

//var_dump($_SESSION); // Mostra dados da sessão (bom para depuração)
