<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de dados
   Exercício 2 - Implemente uma estrutura de dados do tipo Pilha utilizando uma lista encadeada em PHP. 
   Insira 10 nomes na pilha, exiba todos os nomes da pilha, 
   remova os nomes da 8ª e 9ª posições (contando do topo da pilha) e exiba a pilha após as remoções. */

// Classe que representa um nó da lista encadeada
class No {
    public $dados; // Dados armazenados no nó
    public $proximo; // Ponteiro para o próximo nó

    // Construtor da classe No
    public function __construct($dados) {
        $this->dados = $dados; // Inicializa os dados do nó
        $this->proximo = null; // Inicializa o ponteiro para null
    }
}

// Classe que representa a pilha
class Pilha {
    private $topo; // Ponteiro para o topo da pilha

    // Construtor da classe Pilha
    public function __construct() {
        $this->topo = null; // Inicializa o topo como null
    }

    // Insere um novo nome na pilha
    public function push($dados) {
        $novoNo = new No($dados); // Cria um novo nó com os dados fornecidos
        $novoNo->proximo = $this->topo; // O próximo do novo nó aponta para o topo atual
        $this->topo = $novoNo; // O novo nó se torna o topo da pilha
    }

    // Remove um elemento em uma posição específica da pilha
    public function removerPosicao($posicao) {
        // Verifica se a pilha está vazia
        if ($this->topo === null) {
            echo "A pilha está vazia!\n"; // Mensagem de erro se a pilha estiver vazia
            return; // Sai da função
        }

        // Se a posição a ser removida for 1, remove o topo da pilha
        if ($posicao === 1) {
            $this->topo = $this->topo->proximo; // O topo passa a ser o segundo nó
            return; // Sai da função
        }

        // Inicializa os ponteiros para percorrer a pilha
        $atual = $this->topo; // Nó atual começa no topo
        $anterior = null; // Nó anterior começa como null
        $contador = 1; // Contador para acompanhar a posição

        // Percorre até encontrar a posição desejada
        while ($atual !== null && $contador < $posicao) {
            $anterior = $atual; // Atualiza o nó anterior para o atual
            $atual = $atual->proximo; // Move para o próximo nó
            $contador++; // Incrementa o contador
        }

        // Se a posição for válida e o nó encontrado
        if ($anterior !== null && $atual !== null) {
            // Remove o nó atual
            $anterior->proximo = $atual->proximo; // O anterior passa a apontar para o próximo do atual
        } else {
            // Se a posição não é válida
            echo "Posição inválida!\n"; // Mensagem de erro
        }
    }

    // Exibe a pilha
    public function mostrarPilha() {
        $atual = $this->topo; // Começa a exibir a partir do topo
        // Percorre a pilha enquanto houver nós
        while ($atual !== null) {
            echo $atual->dados . ' '; // Exibe os dados do nó atual
            $atual = $atual->proximo; // Move para o próximo nó
        }
        echo "\n"; // Nova linha após exibir todos os elementos
    }
}

// Exemplo de uso da pilha
$pilha = new Pilha(); // Cria uma nova pilha

// Inserindo 10 nomes na pilha
$pilha->push("Ana "); // Adiciona "Ana" na pilha
$pilha->push("Bruno, "); // Adiciona "Bruno" na pilha
$pilha->push("Carlos, "); // Adiciona "Carlos" na pilha
$pilha->push("Daniel, "); // Adiciona "Daniel" na pilha
$pilha->push("Eduardo, "); // Adiciona "Eduardo" na pilha
$pilha->push("Fernanda, "); // Adiciona "Fernanda" na pilha
$pilha->push("Gabriel, "); // Adiciona "Gabriel" na pilha
$pilha->push("Helena, "); // Adiciona "Helena" na pilha
$pilha->push("Isabela, "); // Adiciona "Isabela" na pilha
$pilha->push("João, "); // Adiciona "João" na pilha

// Exibe todos os nomes na pilha
echo "Pilha com os 10 nomes: \n";
$pilha->mostrarPilha(); // Mostra a pilha com os 10 nomes

// Remover o 8º e o 9º nome (contando de cima para baixo)
$pilha->removerPosicao(8); // Remove nome na oitava posição
$pilha->removerPosicao(8); // Remove nome que estava na nona posição e agora está na oitava

// Exibe a pilha após as remoções
echo "\nPilha após remover nomes nas posições 8 e 9: \n";
$pilha->mostrarPilha(); // Mostra a pilha após as remoções
