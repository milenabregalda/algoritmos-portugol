<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 10: Crie um script que determine se um ano é bissexto ou não. Um ano é bissexto se for divisível por 4, mas anos múltiplos de 100 não são bissextos
// a menos que também sejam múltiplos de 400. Use if/else para fazer a verificação.

$year = 1988; // Ano a ser verificado

// Verifica se o ano é bissexto
if (($year % 4 == 0 && $year % 100 != 0) || $year % 400 == 0) { // Faz todas as verificações necessárias para definir se o ano é bissexto ou não
    echo "O ano $year é bissexto.\n"; // Informa ao usuário se é bissexto
} else {
    echo "O ano $year não é bissexto.\n"; // Informa ao usuário se não é bissexto
}

?>