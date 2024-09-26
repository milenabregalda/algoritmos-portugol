<?php

// Funções de gerador: Geradores são uma maneira de iterar sobre grandes conjuntos de dados sem precisar carregar tudo na memória.
// Desafio de 11/09/2024: testar com float (funciona).

function gerarNumeros($inicio, $fim) {
    for ($i = $inicio; $i <= $fim; $i++) {
        yield $i; // Retorna valores um por um, o que é útil para trabalhar com grandes conjuntos de dados sem carregar todos os dados na memória de uma só vez.
    }
}

foreach (gerarNumeros(1.5, 7.9) as $numero) {
    echo $numero . " ";
}

?>
