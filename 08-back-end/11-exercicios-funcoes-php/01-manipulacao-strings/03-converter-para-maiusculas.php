<?php

// Aula de 11/09/2024 - Lista de exercícios de PHP (funções do PHP)
// Exercício 3: Crie uma função converterParaMaiusculas que converta todos os caracteres de uma string para maiúsculas.

function converterParaMaiusculas($string) {
    return strtoupper($string); // Função que converte todos os caracteres de uma string para maiúsculas
}

echo "Texto em maiúsculas: " . converterParaMaiusculas("Gosto de programar em PHP!"); // Chama a função e exibe a string convertida para maiúsculas

?>
