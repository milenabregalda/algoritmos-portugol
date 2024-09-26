<?php

// Aula de 05/09/2024 - Lista de exercícios de PHP (Do-while)
// Exercício 3: Crie um script PHP que solicite ao usuário uma senha. O loop deve continuar solicitando a senha até que o usuário insira a senha correta.
// *Como executar: abrir cmd, cd caminho da pasta, php nome do arquivo.

$password = "123";
$input = "";

do {
    $input = readline("Digite a senha: ");
    if($input != $password) {
        echo "\nSenha inválida. Tente novamente.\n\n";
    }
} while ($input != $password);

echo "\nVocê digitou a senha correta.";

?>