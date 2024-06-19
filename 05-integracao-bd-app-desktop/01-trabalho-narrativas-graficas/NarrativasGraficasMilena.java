package com.mycompany.narrativasgraficasmilena;

// Trabalho de classes POO Narrativas Gráficas (trabalho B)
// Milena Fontana Bregalda - 03/04/2024 até 08/04/2024

public class NarrativasGraficasMilena {

    public static void main(String[] args) {
        System.out.println("Este é o trabalho da Milena!");
        System.out.println("Testes dos meus métodos:");
        System.out.println("---------------------------------------------\n");

        GraphicNovel gn1 = new GraphicNovel(1, "Graphic Novel 1", "Autor", 20.00, true);
        GraphicNovel gn2 = new GraphicNovel(2, "Graphic Novel 2", "Autor", 25.00, true);
        
        Colecionador c1 = new Colecionador("Fulano", 1);
        Colecionador c2 = new Colecionador("Ciclano", 2);
        
        Atendente a = new Atendente(123, "Atendente");
        
        Compra c = new Compra();
        c.comprarGraphicNovel(gn1, a, c1);
        System.out.println(gn1.isEmEstoque());
        GraphicNovel primeiraCompra = new GraphicNovel();
        primeiraCompra = c1.listaCompras.get(0);
        
        System.out.println("Nome " + c1.getNome() + "\nGraphic Novel: " + primeiraCompra.getTitulo());
        
        Assinatura as = new Assinatura(c1);
        as.assinarServico();
        as.assinarServico();
        as.cancelarServico();
        Assinatura as2 = new Assinatura(c2);
        as2.cancelarServico();
        as2.assinarServico();
        GraphicNovel edicao = new GraphicNovel(10, "Nova edição", "Autor inédito", 50.00, true);
        as2.enviarEdicoes(edicao);
        
        gn1.verificarSeEmEstoque();
        gn2.verificarSeEmEstoque();
        GraphicNovel gn3 = new GraphicNovel();
//        gn3 = gn3.encomendarCopia();
        
        GraphicNovel gn4 = new GraphicNovel();
//        gn4 = gn4.pedirNovasEdicoes();
    }
}