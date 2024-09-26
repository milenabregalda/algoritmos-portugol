<?php

// Aula de 02/09/2024 - Lista de exercícios de PHP (classes)
// Exercício 4: Crie uma classe Aluno com propriedades nome, matricula, e notas (um array de notas). Adicione métodos para
// adicionarNota e calcularMedia, que calcula a média das notas. Instancie um objeto da classe Aluno, adicione algumas notas e exiba a média. 

class Aluno {
    // Propriedades
    public $nome;
    public $matricula;
    public $notas = array();

    // Construtor
    public function __construct($nome, $matricula) {
        $this->nome = $nome;
        $this->matricula = $matricula;
        // Notas não estão aqui porque serão adicionadas com o método adicionarNota
    }

    // Métodos
    public function adicionarNota($nota) {
        // Método separado do construtor para adicionar quantas notas quiser no array
        $this->notas[] = $nota;
    }

    public function calcularMedia() {
        $quantidadeNotas = count($this->notas); // Para saber quantas notas tem no array, e assim saber por quanto dividir no cálculo de média
        if ($quantidadeNotas > 0) { // O cálculo da média só ocorre se tiver pelo menos uma nota no array
            $somaNotas = array_sum($this->notas);
            $media = $somaNotas / $quantidadeNotas; // Faz o cálculo da média
            return number_format($media, 2, ',', '.');
            // Retorna em um número formatado: o número para formatar, em duas casas decimais, vírgula no lugar dos pontos nas casas decimais, ponto nos milhares
        } else {
            return number_format(0, 2, ',', '.'); // Se não tiver nenhuma nota, o número é zero
        }
    }
}

// Criando instância da classe
$aluno = new Aluno("Amanda", "294278402");

// Adicionando as notas (quantas quiser)
$aluno->adicionarNota(7.5);
$aluno->adicionarNota(8.5);
$aluno->adicionarNota(9.0);

echo "Média de " . $aluno->nome . ": " . $aluno->calcularMedia(); // De novo, cuidar para usar a seta

?>