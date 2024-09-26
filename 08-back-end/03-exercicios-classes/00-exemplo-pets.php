<?php

// Aula de 02/09/2024 - Lista de exercícios de PHP (classes)
// Exercício de exemplo de classes: Crie uma classe Pets com variáveis do tipo dono, nomePet, raca, idade e diagnostico.
// Para isso, crie as propriedades, métodos e funções necessárias para imprimir na tela.

class Pets {
    // Propriedades
    public $dono;
    public $nomePet;
    public $raca;
    public $idade;
    public $diagnostico;

    // Construtor
    public function __construct($dono, $nomePet, $raca, $idade, $diagnostico) {
        $this->dono = $dono;
        $this->nomePet = $nomePet;
        $this->raca = $raca;
        $this->idade = $idade;
        $this->diagnostico = $diagnostico;
        
    }
    
    // Método
    public function exibirInfo() {
        return "Dono: " . $this->dono .  ", nome do pet: " . $this->nomePet .  ", raça: " . $this->raca .  ", idade: " . $this->idade  . " anos, diagnóstico: " . $this->diagnostico;
    }
}

// Criando instância da classe
$pet = new Pets("Tadeu", "Bold", "Golden Retriever", 2, "Muito saudável");
echo $pet->exibirInfo();

?>