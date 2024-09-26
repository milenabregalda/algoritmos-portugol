<?php

// Aula de 11/09/2024 - Lista de exercícios de PHP (funções do PHP)
// Exercício 4: Crie uma função formatarNomeCompleto que receba um nome completo (por exemplo, "joão da silva")
// e o formate para "João Da Silva", com a primeira letra de cada palavra em maiúsculas.

function formatarNomeCompleto($nomeCompleto) {
    return ucwords($nomeCompleto); // Função que converte o primeiro caractere de uma string para maiúsculas
}

// Chama a função e exibe o nome formatado com as primeiras letras das palavras em maiúsculas
echo "Nome formatado: " . formatarNomeCompleto("joão da silva");

?>