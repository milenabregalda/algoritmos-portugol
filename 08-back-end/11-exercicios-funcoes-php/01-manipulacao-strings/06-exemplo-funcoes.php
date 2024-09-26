<?php
    
    //A variável recebe uuma string
    $texto="Olá mundo!";

    //Declara-se uma nova variável que, através da função Strtoupper vai transformar o que 
    //está dentro do parentese em maiúscula;
    $palavra=strtoupper($texto);
    //Aqui a variável paralavra vai tranformar no que estava em Maiúsculo para minúsculo.
    echo strtolower($palavra);
    //Aqui imprime o que está dentro da variável em Maiúscula.
    echo $palavra;

    //Não precisa da declaração da variável para transforma em maiúscula, o texto direto no parâmetro
    //Já tranforma tudo em Maiúscula.
    echo strtoupper("Olá Mundo!");

    //Não precisa de declação de variável para tranformar em minúscula, o texto direto no parâmetro
    //Já transforma em minuscula.
    echo strtolower("OLA MUNDO!");

    echo str_replace("PHP", "Node.js", "Eu gosto muito de PHP");

    echo substr("O mundo de Sofia", 0,8);

    


?>
