<?php

// Aula de 02/09/2024 - Lista de exercícios de PHP (classes)
// Exercício 2: Crie uma classe Livro com propriedades titulo, autor, e anoPublicacao. Adicione um método resumo que retorna uma descrição do livro.
// Instancie um objeto da classe Livro e exiba o resumo do livro.

class Livro {
    // Propriedades
    public $titulo;
    public $autor;
    public $anoPublicacao;

    // Construtor
    public function __construct($titulo, $autor, $anoPublicacao) {
        $this->titulo = $titulo;
        $this->autor = $autor;
        $this->anoPublicacao = $anoPublicacao;
    }

    // Método
    public function descreverLivro() {
        return "O livro se chama " . $this->titulo . ". Foi escrito por " . $this->autor ." em " . $this->anoPublicacao . ".";
        // Usar "->" ao invés de "." depois do this para chamar propriedade
    }
}

// Criando instância da classe
$livro = new Livro("Harry Potter e a Pedra Filosofal", "J. K. Rowling", 1997);
echo $livro->descreverLivro();

?>