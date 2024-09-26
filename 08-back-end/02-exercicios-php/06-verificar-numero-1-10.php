<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 6: Escreva um script PHP que verifique se um número está entre 1 e 10 (inclusive).

$numero = 1;
$estarEntreUmEDez = false;

for ($i = 1; $i <= 10; $i++) {
    if($numero == $i) {
        $estarEntreUmEDez = true;
    }
}

if($estarEntreUmEDez) {
    echo "O número $numero está entre um e dez.";
} else {
    echo "O número $numero não está entre um e dez.";
}

?>