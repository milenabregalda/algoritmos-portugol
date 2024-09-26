<?php

// Aula de 11/09/2024 - Exemplo de funções do PHP para manipulação de strings

$stringOriginal = "   Exemplo de String para Teste com PHP!   ";

// strlen() - Calcula o comprimento da string
echo "\nComprimento da string: " . strlen($stringOriginal) . "\n"; //

// trim() - Remove espaços em branco do início e do fim da string
$stringTrimmed = trim($stringOriginal);
echo "\nString sem espaços: '" . $stringTrimmed . "'\n";

// strtoupper() - Converte todos os caracteres da string para maiúsculas
$stringUpper = strtoupper($stringTrimmed);
echo "\nString em maiúsculas: " . $stringUpper . "\n";

// strtolower() - Converte todos os caracteres da string para minúsculas
$stringLower = strtolower($stringUpper);
echo "\nString em minúsculas: " . $stringLower . "\n";

// ucfirst() - Converte a primeira letra da string para maiúscula
$stringUcfirst = ucfirst($stringLower);
echo "\nString com a primeira letra maiúscula: " . $stringUcfirst . "\n";

// ucwords() - Converte a primeira letra de cada palavra para maiúscula
$stringUcwords = ucwords($stringLower);
echo "\nString com a primeira letra de cada palavra maiúscula: " . $stringUcwords . "\n";

// str_replace() - Substitui todas as ocorrências de uma substring por outra
$stringReplaced = str_replace("teste", "exemplo", $stringOriginal);
echo "\nString com substituição: " . $stringReplaced . "\n";

// substr() - Retorna uma parte da string
$substring = substr($stringOriginal, 8, 6);
echo "\nSubstr (parte da string): " . $substring . "\n";

// strpos() - Encontra a posição da primeira ocorrência de uma substring
$position = strpos($stringOriginal, "String");
echo "\nPosição de 'String': " . $position . "\n";

// str_repeat() - Repete uma string um determinado número de vezes
$stringRepeated = str_repeat("PHP ", 3);
echo "\nString repetida: " . $stringRepeated . "\n";

// explode() - Divide uma string em um array usando um delimitador
$arrayExploded = explode(" ", $stringOriginal);
echo "\nArray após explode: ";
print_r($arrayExploded);

// implode() - Une os elementos de um array em uma string usando um delimitador
$stringImploded = implode("-", $arrayExploded);
echo "\nString após implode: " . $stringImploded . "\n";

// sprintf() - Formata uma string de acordo com um formato especificado
$formattedString = sprintf("Valor formatado: %.2f", 123.456);
echo $formattedString . "\n";

// str_pad() - Preenche a string com um caractere até atingir um comprimento total
$stringPadded = str_pad($stringOriginal, 50, "*", STR_PAD_BOTH);
echo "\nString com padding: " . $stringPadded . "\n";

// str_split() - Divide a string em um array de caracteres
$arraySplit = str_split($stringOriginal, 5);
echo "\nArray após str_split: ";
print_r($arraySplit);

// wordwrap() - Quebra a string em várias linhas, com um comprimento máximo
$wrappedString = wordwrap($stringOriginal, 20, "\n");
echo "\nString após wordwrap:\n" . $wrappedString . "\n";

// strlen() vs mb_strlen() - Calcula o comprimento da string (considerando multibyte)
echo "\nComprimento da string (strlen): " . strlen($stringOriginal) . "\n";

// Strings multibyte são strings com caracteres acentuados
// Função com mb não funcionou, provavelmente porque a extensão mbstring não está habilitada na configuração do PHP
if (function_exists('mb_strlen')) { // Verificação para não dar problema
    echo "Comprimento da string (mb_strlen): " . mb_strlen($stringOriginal) . "\n";
} else {
    echo "mb_strlen não está disponível.\n";
}

?>
