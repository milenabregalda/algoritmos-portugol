<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de dados
   Exercício 3 - Implemente uma estrutura de dados do tipo Árvore Binária em PHP. A classe deve permitir a inserção
   de elementos e realizar uma travessia em ordem (in-order/ordená-los) para exibir os elementos em ordem crescente. */

// Classe que representa um nó da árvore
class No {
    public $dados;      // Dado armazenado no nó
    public $esquerdo;   // Referência para o nó filho à esquerda
    public $direito;    // Referência para o nó filho à direita

    // Construtor da classe No, que inicializa os dados e as referências dos filhos
    public function __construct($dados) {
        $this->dados = $dados;     // Armazena o dado passado ao criar o nó
        $this->esquerdo = null;    // Inicializa o filho esquerdo como null
        $this->direito = null;     // Inicializa o filho direito como null
    }
}

// Classe que representa a árvore binária
class ArvoreBinaria {
    private $raiz; // A raiz da árvore

    // Construtor da classe ArvoreBinaria, que inicializa a raiz como null
    public function __construct() {
        $this->raiz = null; // Inicializa a árvore vazia
    }

    // Método para inserir dados na árvore
    public function insert($dados) {
        // Chama o método recursivo para inserir o dado na posição correta
        $this->raiz = $this->insertRec($this->raiz, $dados);
    }

    // Método recursivo que insere um dado na árvore
    private function insertRec($no, $dados) {
        // Se o nó atual é null, significa que encontramos a posição correta
        if ($no === null) {
            return new No($dados); // Cria um novo nó com os dados
        }

        // Se o dado a ser inserido é menor que o dado do nó atual
        if ($dados < $no->dados) {
            // Insere recursivamente no filho à esquerda
            $no->esquerdo = $this->insertRec($no->esquerdo, $dados);
        } else {
            // Insere recursivamente no filho à direita
            $no->direito = $this->insertRec($no->direito, $dados);
        }

        return $no; // Retorna o nó atual após a inserção
    }

    // Método para realizar a travessia em ordem (in-order)
    public function inOrder() {
        $this->inOrderRec($this->raiz); // Chama o método recursivo passando a raiz
    }

    // Método recursivo que realiza a travessia em ordem
    private function inOrderRec($no) {
        // Se o nó não é null, continua a travessia
        if ($no !== null) {
            $this->inOrderRec($no->esquerdo); // Percorre o filho à esquerda
            echo $no->dados . ' '; // Exibe o dado do nó atual
            $this->inOrderRec($no->direito); // Percorre o filho à direita
        }
    }
}

// Exemplo de uso da árvore binária
$arvore = new ArvoreBinaria(); // Cria uma nova instância da árvore binária

// Inserindo os elementos na árvore
$arvore->insert(8);
$arvore->insert(6);
$arvore->insert(9);
$arvore->insert(1);
$arvore->insert(7);
$arvore->insert(5);
$arvore->insert(4);

/* Visualização da árvore binária:
                    8
                   / \
                  6   9
                 / \
                1   7
                \
                 5
                 /
                4
 */

// Exibe a travessia em ordem crescente dos elementos
echo "Travessia em ordem crescente: ";
$arvore->inOrder(); // Chama o método que exibe os elementos em ordem
echo "\n"; // Adiciona uma nova linha após a saída
