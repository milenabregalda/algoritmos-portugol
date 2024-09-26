<?php

// Aula de 02/09/2024 - Lista de exercícios de PHP (classes)
// Exercício 1: Crie uma classe Pessoa com propriedades nome, idade, e email. Adicione um método exibirInfo que retorna uma string com o nome,
// idade e email da pessoa. Instancie um objeto da classe Pessoa e exiba suas informações. 

class Pessoa {
    // Propriedades
    public $nome;
    public $idade;
    public $email;

    // Construtor
    public function __construct($nome, $idade, $email) {
        $this->nome = $nome;
        $this->idade = $idade;
        $this->email = $email;
    }

    // Método
    public function exibirInfo() {
        return "Nome: " . $this->nome . ", idade: " . $this->idade . ", e-mail: " . $this->email . ".";
    }
}

// Criando instância da classe
$pessoa = new Pessoa("Milena", 22, "milena@email.com");
echo $pessoa->exibirInfo();

?>