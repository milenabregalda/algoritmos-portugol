<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de dados
   Exercício 1 - Crie uma lista com 5 produtos para Petshop. Imprima a lista. Remova o item 4 da lista e imprima novamente */

// A classe No representa um nó em uma lista encadeada
class No {
    public $dados; // Armazena os dados (neste caso, o nome do produto)
    public $proximo; // Aponta para o próximo nó da lista

    // O construtor da classe No inicializa os dados e define o próximo nó como nulo (ou seja, não tem próximo inicialmente)
    public function __construct($dados) {
        $this->dados = $dados; // Armazena os dados recebidos
        $this->proximo = null; // Inicialmente, o nó não aponta para nenhum outro nó
    }
}

// A classe Lista implementa uma lista encadeada
class Lista {
    private $cabeça; // A cabeça da lista

    // O construtor da classe Lista inicializa a cabeça como nula (a lista começa vazia)
    public function __construct() {
        $this->cabeça = null;
    }

    // O método adicionar insere um novo item (produto) no final da lista
    public function adicionar($dados) {
        $novoNo = new No($dados); // Cria um novo nó com os dados fornecidos
        
        if ($this->cabeça === null) {
            // Se a lista estiver vazia, o novo nó se torna a cabeça
            $this->cabeça = $novoNo;
        } else {
            // Caso contrário, percorre a lista até o último nó
            $atual = $this->cabeça;
            while ($atual->proximo !== null) {
                $atual = $atual->proximo; // Avança para o próximo nó
            }
            $atual->proximo = $novoNo; // O último nó agora aponta para o novo nó
        }
    }

    // O método removerPosicao remove um nó em uma posição específica na lista
    public function removerPosicao($posicao) {
        // Se a lista estiver vazia, exibe uma mensagem de erro
        if ($this->cabeça === null) {
            echo "A lista está vazia!\n";
            return; // Sai da função
        }

        // Caso a posição seja 1, remove o primeiro nó (cabeça da lista)
        if ($posicao === 1) {
            $this->cabeça = $this->cabeça->proximo; // A nova cabeça será o próximo nó
            return; // Sai da função
        }

        // Variável $atual é usada para percorrer a lista, começando da cabeça
        $atual = $this->cabeça;
        $contador = 1; // Contador para rastrear a posição atual na lista

        // O loop percorre a lista até encontrar a posição desejada
        // ou até o próximo nó ser nulo (fim da lista)
        while ($atual !== null && $contador < $posicao - 1) {
            $atual = $atual->proximo; // Avança para o próximo nó
            $contador++; // Incrementa o contador
        }

        // Verifica se a posição é válida e se o nó existe
        if ($atual !== null && $atual->proximo !== null) {
            // Remove o nó da posição desejada, fazendo o nó anterior apontar para o próximo do removido
            $atual->proximo = $atual->proximo->proximo;
        } else {
            // Caso contrário, a posição é inválida e exibe uma mensagem
            echo "Posição inválida!\n";
        }
    }

    // O método mostrarLista percorre e exibe os elementos da lista
    public function mostrarLista() {
        $atual = $this->cabeça; // Começa da cabeça da lista
        while ($atual !== null) { // Enquanto houver nós na lista
            echo $atual->dados . ' '; // Imprime os dados do nó atual
            $atual = $atual->proximo; // Avança para o próximo nó
        }
        echo "\n"; // Nova linha ao final
    }
}

// Exemplo de uso da classe Lista
$lista = new Lista(); // Cria uma nova lista

// Inserindo 5 produtos na lista utilizando o método adicionar
$lista->adicionar("Ração ");   // Primeiro item
$lista->adicionar("Coleira "); // Segundo item
$lista->adicionar("Brinquedo "); // Terceiro item
$lista->adicionar("Cama "); // Quarto item
$lista->adicionar("Roupa "); // Quinto item

// Exibe a lista completa
echo "Lista com os 5 Produtos: \n";
$lista->mostrarLista(); // Mostra os produtos na ordem de inserção

// Remover o 4º produto da lista (Cama)
$lista->removerPosicao(4); // Remove o item na posição 4 (contando a partir de 1)

echo "\nLista após remover o 4º Produto: \n";
$lista->mostrarLista(); // Exibe a lista após a remoção
