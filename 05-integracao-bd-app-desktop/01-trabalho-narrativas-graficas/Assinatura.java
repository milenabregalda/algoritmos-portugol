package com.mycompany.narrativasgraficasmilena;
import java.util.Date;

// Trabalho de classes POO Narrativas Gráficas (trabalho B)
// Milena Fontana Bregalda - 03/04/2024 até 08/04/2024

public class Assinatura {
    private Colecionador colecionador;
    private GraphicNovel graphicNovel;
    private Date dataInicio;
    private Date dataFim;

    public Assinatura(Colecionador colecionador) {
        this.colecionador = colecionador;
    }
      
    public void enviarEdicoes(GraphicNovel edicao) {
        colecionador.listaCompras.add(edicao);
        System.out.println("Edição enviada com sucesso pela assinatura!");
    }
    
    public void assinarServico() {
        if (dataInicio != null) {
            System.out.println("O colecionador já tem uma assinatura ativa!");
        } else {
            dataInicio = new Date();
            System.out.println("Assinatura feita com sucesso!");
        }
    }
    
    public void cancelarServico(){
        if (dataInicio == null) {
            System.out.println("O colecionador não tem uma assinatura ativa para cancelar!");
        } else {
            this.dataFim = new Date();
            System.out.println("Cancelamento de assinatura realizado com sucesso.");
        }
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

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataFim() {
        return dataFim;
    }

    public void setDataFim(Date dataFim) {
        this.dataFim = dataFim;
    }
}