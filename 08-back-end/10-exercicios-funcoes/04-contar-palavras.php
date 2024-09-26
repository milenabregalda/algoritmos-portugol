<?php

// Aula de 10/09/2024 - Lista de exercícios
// Exercício 4: Crie uma função chamada contarPalavras que recebe uma string e retorna o número total de palavras na string. Considere palavras separadas por espaços. 

function contarPalavras($string) {
    $comprimento = strlen($string); // Método que retorna o tamanho da string
    $contador = 1; // Começa em 1, já que uma palavra sempre vai ter
    
    for ($i = 0; $i < $comprimento; $i++) { // Loop com o comprimento da string
        $caractereAtualString = $string[$i]; // Pega o caractere atual da string

        // Se for um espaço, quer dizer que começou uma nova palavra e o contador aumenta
        if ($caractereAtualString == " ") {
            $contador++;
        }

        // NOTA: Eu também poderia ter usado a função explode (divide palavras em array) e count para saber quantas palavras têm
    }

    return $contador;
}

// Chama a função que informa a quantidade
echo "Número de palavras na string: " . contarPalavras("Oi, meu nome é Milena");

?>