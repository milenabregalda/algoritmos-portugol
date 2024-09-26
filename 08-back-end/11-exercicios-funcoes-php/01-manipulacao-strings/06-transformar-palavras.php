<?php

// Aula de 11/09/2024 - Lista de exercícios de PHP (funções do PHP)
// Exercício 8: Crie um script para uma função que transforma a frase "Hoje é dia do programador" em letras maiúsculas e, na
// mesma função, a frase "HERRAR É UMANO" em letras minúsculas.

function transformarFrases($fraseParaMaiusculas, $fraseParaMinusculas) {
    echo strtoupper($fraseParaMaiusculas) . "\n" . strtolower($fraseParaMinusculas);
}

transformarFrases("Hoje é dia do programador", "HERRAR É UMANO");

?>