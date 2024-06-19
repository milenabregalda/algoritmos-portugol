package com.mycompany.narrativasgraficasmilena;
import java.util.Date;

// Trabalho de classes POO Narrativas Gráficas (trabalho B)
// Milena Fontana Bregalda - 03/04/2024 até 08/04/2024

public class Compra {
    private Date data;
    private Colecionador colecionador;
    private GraphicNovel graphicNovel;
    private Atendente quemAtendeu;

    public Compra() {
    }
    
    public Compra(Date data, Colecionador colecionador, GraphicNovel graphicNovel, Atendente quemAtendeu) {
        this.data = data;
        this.colecionador = colecionador;
        this.graphicNovel = graphicNovel;
        this.quemAtendeu = quemAtendeu;
    }

    public void comprarGraphicNovel(GraphicNovel graphicNovel, Atendente atendente, Colecionador colecionador) {
        if (graphicNovel.isEmEstoque()) {
            setData(new Date());
            setColecionador(colecionador);
            setGraphicNovel(graphicNovel);
            setQuemAtendeu(atendente);
            graphicNovel.setEmEstoque(false);
            colecionador.listaCompras.add(graphicNovel);
            System.out.println("Compra realizada com sucesso!");
        } else {
            System.out.println("Compra não é possível. Graphic Novel não está em estoque.");
        }
    }
    
    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Colecionador getColecionador() {
        return colecionador;
    }

    public void setColecionador(Colecionador colecionador) {
        this.colecionador = colecionador;
    }

    public GraphicNovel getGraphicNovel() {
        return graphicNovel;
    }

    public void setGraphicNovel(GraphicNovel graphicNovel) {
        this.graphicNovel = graphicNovel;
    }

    public Atendente getQuemAtendeu() {
        return quemAtendeu;
    }

    public void setQuemAtendeu(Atendente quemAtendeu) {
        this.quemAtendeu = quemAtendeu;
    }
}