<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 7: Escreva um script PHP que classifique a temperatura em três categorias: Frio (abaixo de 10°C), Agradável (entre 10°C e 25°C) e Quente (acima de 25°C).

$temperatura = 14.0;

if($temperatura < 10.0) {
    echo "Está frio.";
} else if($temperatura <= 25.0) {
    echo "Está agradável.";
} else {
    echo "Está quente.";
}

?>