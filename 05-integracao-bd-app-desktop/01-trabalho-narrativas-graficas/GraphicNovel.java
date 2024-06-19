package com.mycompany.narrativasgraficasmilena;
import java.util.Scanner;

// Trabalho de classes POO Narrativas Gráficas (trabalho B)
// Milena Fontana Bregalda - 03/04/2024 até 08/04/2024

public class GraphicNovel {
    private int codigo;
    private String titulo;
    private String autor;
    private Double preco;
    private boolean emEstoque;

    public GraphicNovel() {
    }

    public GraphicNovel(int codigo, String titulo, String autor, Double preco, boolean emEstoque) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.autor = autor;
        this.preco = preco;
        this.emEstoque = emEstoque;
    }

    public void verificarSeEmEstoque(){
        if (this.emEstoque) {
            System.out.println(this.titulo + " está em estoque.");
        } else {
            System.out.println(this.titulo + " não está em estoque.");
        }
    }
    
    public GraphicNovel pedirNovasEdicoes() {
        Scanner sc = new Scanner(System.in);
        System.out.println("\nPedido de nova edição de Graphic Novel");
        System.out.println("----------------------------------------------");
        System.out.print("Código: ");
        int codigo = sc.nextInt();
        System.out.print("Título (que não está em estoque): ");
        sc.nextLine();
        String titulo = sc.nextLine();
        System.out.print("Autor: ");
        String autor = sc.nextLine();
        System.out.print("Preço: ");
        Double preco = sc.nextDouble();
        GraphicNovel gn = new GraphicNovel(codigo, titulo, autor, preco, true);
        System.out.println("Pedido de nova edição realizado com sucesso!");
        System.out.println("----------------------------------------------");
        
        return gn;
    }
    
    public GraphicNovel encomendarCopia() {
        Scanner sc = new Scanner(System.in);
        System.out.println("\nEncomenda de cópia de Graphic Novel");
        System.out.println("----------------------------------------------");
        System.out.print("Código: ");
        int codigo = sc.nextInt();
        System.out.print("Título (de Graphic Novel em estoque): ");
        sc.nextLine();
        String titulo = sc.nextLine();
        System.out.print("Autor: ");
        String autor = sc.nextLine();
        System.out.print("Preço: ");
        Double preco = sc.nextDouble();
        GraphicNovel gn = new GraphicNovel(codigo, titulo, autor, preco, true);
        System.out.println("Encomenda de cópia realizada com sucesso!");
        System.out.println("----------------------------------------------");
        
        return gn;
    }
            
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public boolean isEmEstoque() {
        return emEstoque;
    }

    public void setEmEstoque(boolean emEstoque) {
        this.emEstoque = emEstoque;
    }
}