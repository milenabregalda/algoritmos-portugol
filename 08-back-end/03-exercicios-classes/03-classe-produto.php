<?php

// Aula de 02/09/2024 - Lista de exercícios de PHP (classes)
// Exercício 3: Crie uma classe Produto com propriedades nome, preco, e quantidade. Adicione um método calcularValorTotal
// que retorna o valor total do produto (preço multiplicado pela quantidade). Instancie um objeto da classe Produto e mostre o valor total.

class Produto {
    // Propriedades
    public $nome;
    public $preco;
    public $quantidade;

    // Construtor
    public function __construct($nome, $preco, $quantidade) {
        $this->nome = $nome;
        $this->preco = $preco;
        $this->quantidade = $quantidade;
    }    

    // Método
    public function calcularValorTotal() {
        return $this->preco * $this->quantidade;
    }
}

// Criando instância da classe
$produto = new Produto("Notebook", 3999.99, 10);
// O método deve ser chamado a partir do produto instanciado, já que o produto é um objeto da classe Produto
echo "Valor total de " . $produto->nome . ": R$ " . $produto->calcularValorTotal(); // Novamente seta e não ponto para chamar o nome do produto

?>