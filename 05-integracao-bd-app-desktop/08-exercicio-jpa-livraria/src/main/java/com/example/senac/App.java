package com.example.senac;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.example.senac.model.Author;
import com.example.senac.model.Book;

// Aula de 05/06/2024 - Montamos projeto de JPA, fizemos create e read, aprendemos update e delete.
// Aula de 06/06/2024 - Mapear o relacionamento entre tabelas no banco de dados (Um para um)

public class App 
{
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("jpa");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        // -- CÓDIGOS DE 06/06/2024
        /*
        entityManager.getTransaction().begin();
        
        // Fazer datas customizadas funcionarem
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date dateBook1 = null;
        Date dateBook2 = null;
        Date dateBook3 = null;
        try {
            // Ajustando as datas para os livros
            dateBook1 = dateFormat.parse("01/01/2001");
            dateBook2 = dateFormat.parse("02/02/2002");
            dateBook3 = dateFormat.parse("03/03/2003");
        } catch (ParseException e) {
            e.printStackTrace();
            return;
        }

        // CREATE
        Book book1 = new Book("Livro 1", "Autor 1", dateBook1);
        entityManager.persist(book1);

        Book book2 = new Book("Livro 2", "Autor 2", dateBook2);
        entityManager.persist(book2);

        // READ
        Book bookRetornado = entityManager.find(Book.class, book1.getId()); // Aqui ele chama pelo id do Book1, para procurar outros deve chamar o método novamente
        System.out.println("\nLivro encontrado: " + bookRetornado.getTitle() + ", Autor: " + bookRetornado.getAuthor() + ", Data de Publicação: " + dateFormat.format(bookRetornado.getPublishedDate()) + "\n");

        Book bookRetornado2 = entityManager.find(Book.class, book2.getId()); // Aqui chama no banco pelo id de book2
        System.out.println("\nLivro encontrado: " + bookRetornado2.getTitle() + ", Autor: " + bookRetornado2.getAuthor() + ", Data de Publicação: " + dateFormat.format(bookRetornado2.getPublishedDate()) + "\n");
        
        // UPDATE
        Book livroAtualizado = entityManager.find(Book.class, book1.getId()); // Crio objeto que usarei para atualizar com o id do banco
        livroAtualizado.setTitle("Livro atualizado"); // Coloco os novos dados
        livroAtualizado.setAuthor("Autor atualizado");
        livroAtualizado.setPublishedDate(dateBook3);
        entityManager.merge(livroAtualizado); // Mando para o banco

        // DELETE
        Book bookDeletado = entityManager.find(Book.class, book2.getId());
        entityManager.remove(bookDeletado);
        entityManager.getTransaction().commit(); // O commit vem para o final, senão o que vem depois dele não vale*/



        // - CÓDIGOS DE 06/06/2024

        // Criar os objetos das classes antes de iniciar a comunicação com o banco de dados:
        Author author1 = new Author("Autor", "Brasil"); // Primeiro é melhor criar o objeto da classe que não referencia nada (o autor)
        Book book3 = new Book("Livro 3", author1, new Date()); // Agora que o autor já foi criado, posso criar livro e passar autor aqui

        // Agora com os objetos criados, a comunicação acontece
        // (dentro de um try catch, já que o fato de um objeto precisar de outro aumenta a chance de erros):
        try { 
            entityManager.getTransaction().begin();
            entityManager.persist( book3 ); // Por causa da anotação cascade em Book, salvando o book3 já salva o author também
            entityManager.getTransaction().commit(); 
            System.out.println("Objetos salvos com sucesso!"); 
        } catch (RuntimeException e) { 
            e.printStackTrace(); 
            entityManager.getTransaction().rollback(); 
        } finally { 
            entityManager.close(); 
        } 
    }
        //entityManager.close();
        //entityManagerFactory.close();
}


