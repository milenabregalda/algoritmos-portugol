package com.exemplo;

// Importação das classes necessárias
import java.util.HashSet;
import java.util.Set;

/* HashSet é uma implementação da interface Set que armazena elementos únicos usando uma estrutura de dados de tabela hash.
Não permite elementos duplicados, tem operações de tempo constante, ordem de elementos não garantida (pode mudar com o tempo) */

// Declaração da classe ProdutoRepositorio
public class ProdutoRepositorio {
    // Criação de um conjunto (Set) para armazenar os nomes dos produtos
    private Set<String> produtos = new HashSet<>();

    // Método para salvar um produto no repositório
    public void salvar(Produto produto) throws ProdutoComNomeJaCadastradoException {
        // Verifica se o nome do produto já está no conjunto
        if (produtos.contains(produto.getNome())) {
            // Se o nome já estiver no conjunto, lança uma exceção indicando que o produto já está cadastrado
            throw new ProdutoComNomeJaCadastradoException("Produto com nome já cadastrado."); // Parâmetro que na classe da exceção é message
        }
        // Adiciona o nome do produto ao conjunto
        produtos.add(produto.getNome());
    }
}
