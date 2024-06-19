package Model;
import java.util.Date;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class MaterialDidatico {
    private String nome;
    private Curso[] curso;
    private int numeroPaginas;
    private Date dataEntrega;
    private Date dataRevisao;
    private boolean estaCompleto;
    private TipoMaterialDidatico tipoMaterialDidatico;

    public MaterialDidatico() {
    }

    public MaterialDidatico(String nome, Curso[] curso, int numeroPaginas, Date dataEntrega, Date dataRevisao, boolean estaCompleto, TipoMaterialDidatico tipoMaterialDidatico) {
        this.nome = nome;
        this.curso = curso;
        this.numeroPaginas = numeroPaginas;
        this.dataEntrega = dataEntrega;
        this.dataRevisao = dataRevisao;
        this.estaCompleto = estaCompleto;
        this.tipoMaterialDidatico = tipoMaterialDidatico;
    }

    public void baixar() {
        System.out.println("O material didático é baixado.");
    }

    public void liberar() {
        System.out.println("O material didático é liberado.");
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Curso[] getCurso() {
        return curso;
    }

    public void setCurso(Curso[] curso) {
        this.curso = curso;
    }

    public int getNumeroPaginas() {
        return numeroPaginas;
    }

    public void setNumeroPaginas(int numeroPaginas) {
        this.numeroPaginas = numeroPaginas;
    }

    public Date getDataEntrega() {
        return dataEntrega;
    }

    public void setDataEntrega(Date dataEntrega) {
        this.dataEntrega = dataEntrega;
    }

    public Date getDataRevisao() {
        return dataRevisao;
    }

    public void setDataRevisao(Date dataRevisao) {
        this.dataRevisao = dataRevisao;
    }

    public boolean isEstaCompleto() {
        return estaCompleto;
    }

    public void setEstaCompleto(boolean estaCompleto) {
        this.estaCompleto = estaCompleto;
    }

    public TipoMaterialDidatico getTipoMaterialDidatico() {
        return tipoMaterialDidatico;
    }

    public void setTipoMaterialDidatico(TipoMaterialDidatico tipoMaterialDidatico) {
        this.tipoMaterialDidatico = tipoMaterialDidatico;
    }
}
