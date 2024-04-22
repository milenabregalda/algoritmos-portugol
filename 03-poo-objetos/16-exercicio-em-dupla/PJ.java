package com.mycompany.cadastro;

// Aula de 25/10/23 - Exercício em dupla (versão corrigida)

public class PJ extends Pessoa implements Aniversario {
    private String cnpj;

    public PJ(String cnpj, String nome, int idade) {
        super(nome, idade);
        this.cnpj = cnpj;
    }

    public PJ(String nome, int idade) {
        super(nome, idade);
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    @Override
    public void fazerAniversario(){
        setIdade(getIdade() + 1);
    }
    
    @Override
    public void fazerAniversario(int anos){
        setIdade(getIdade() + anos);
    }
    
    @Override
    public void dados() {
        super.dados();
        System.out.println("Tipo: Pessoa Jurídica");
        if(getCnpj() != null) {
            System.out.println("CNPJ: " + getCnpj());
            System.out.println("-------------------------------\n");
        } else {
            System.out.println("CNPJ: não cadastrado");
            System.out.println("-------------------------------\n");
        }
    }
}