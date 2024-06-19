package com.example.senac.model;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date; // O professor importou java.sql.Date

// Aula de 05/06/2024 - Montamos projeto de JPA, fizemos create e read, aprendemos update e delete.
// Aula de 06/06/2024 - Aprendemos a mapear o relacionamento entre tabelas no banco de dados (Um para um)

@Entity
@Table(name = "books")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    // O professor usou AUTO - abordagem mais portátil entre diferentes sistemas de gerenciamento de banco de dados
    @Column(name = "book_id")
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    // Jeito mais longo de fazer as colunas serem ligadas, tem um jeito mais fácil também:
    @JoinColumn(name = "authors", referencedColumnName = "author_id")  // Para conectar tabela books com tabela authors
    @OneToOne(cascade={CascadeType.PERSIST}) // Relacionamento um por um
    private Author author; // Cria objeto da outra classe já que o livro tem autor

    @Column(name = "date_publishe")
    @Temporal(TemporalType.DATE)
    private Date publishedDate;

    public Book() {
    }

    public Book(String title, Author author, Date publishedDate) {
        this.title = title;
        this.author = author;
        this.publishedDate = publishedDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Date getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(Date publishedDate) {
        this.publishedDate = publishedDate;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author=" + author +
                ", publishedDate=" + publishedDate +
                '}';
    }
}