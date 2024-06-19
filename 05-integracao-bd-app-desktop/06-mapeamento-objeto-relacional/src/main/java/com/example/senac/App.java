package com.example.senac;


import javax.persistence.*;

import com.example.senac.model.Endereco;
import com.example.senac.model.Pessoa;
import com.example.senac.model.Usuario;

// Aula de 30/04/2024 - Mapeamento objeto-relacional (que funcionou para usar como modelo para próximos projetos)

public class App 
{
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("jpa");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        
        // Inserindo uma nova pessoa no banco de dados
        entityManager.getTransaction().begin();
        Pessoa pessoa = new Pessoa("João", 30);
        entityManager.persist(pessoa); // Inserts aqui

        // Exercício 1: cadastrar um Usuário (corrigido - tudo na mesma transação)
        Usuario usuario = new Usuario("Orfelina", "orfelina@gmail.com", "12345678");
        entityManager.persist(usuario);

        // Exercício 2: criar classe Endereco e cadastrá-la aqui
        Endereco endereco = new Endereco("Av", "Venâncio Aires", 93, "Cidade Baixa", "90.000.000", "Porto Alegre", "RS", "BR");
        entityManager.persist(endereco);

        entityManager.getTransaction().commit(); // Commit só se der tudo certo
        
        // Buscando uma pessoa pelo ID
        Pessoa pessoaRetornada = entityManager.find(Pessoa.class, pessoa.getId());
        System.out.println("Pessoa encontrada: " + pessoaRetornada.getNome() + ", " + pessoaRetornada.getIdade() + " anos");

        Usuario usuarioRetornado = entityManager.find(Usuario.class, usuario.getId());
        System.out.println("Usuário encontrado: " + usuarioRetornado.getNome() + ", " + usuarioRetornado.getEmail() + ", " + usuarioRetornado.getSenha());

        Endereco enderecoRetornado = entityManager.find(Endereco.class, endereco.getId());
        System.out.println("Endereço encontrado: " + enderecoRetornado.getTipoLogradouro() + " " + enderecoRetornado.getNome() +
        ", " + enderecoRetornado.getNumero() + ", " + enderecoRetornado.getBairro() + ", " + enderecoRetornado.getCep() + ", " +
        enderecoRetornado.getCidade() + ", " + enderecoRetornado.getEstado() + ", " + enderecoRetornado.getPais());

        // Fechando o EntityManager e o EntityManagerFactory - mudei de lugar para fazer mais uma transação
        entityManager.close();
        entityManagerFactory.close();
    }
}
