package com.mycompany.testardata;

public class Data {
    public int dia;
    public int mes;
    public int ano;

    public void escreverAData() {
        System.out.print("Data: ");
        
        if (this.dia < 10) System.out.print("0" + this.dia + "/");
        else System.out.print(dia + "/");
        
        if (this.mes < 10) System.out.print("0" + this.mes + "/");
        else System.out.print(this.mes + "/");
        
        System.out.println(this.ano);
    }
    
    public void escreverOMes() {
        System.out.print("Mês: ");
        
        switch (mes) {
            case 1 -> System.out.println("Janeiro");
            case 2 -> System.out.println("Fevereiro");
            case 3 -> System.out.println("Março");
            case 4 -> System.out.println("Abril");
            case 5 -> System.out.println("Maio");
            case 6 -> System.out.println("Junho");
            case 7 -> System.out.println("Julho");
            case 8 -> System.out.println("Agosto");
            case 9 -> System.out.println("Setembro");
            case 10 -> System.out.println("Outubro");
            case 11 -> System.out.println("Novembro");
            case 12 -> System.out.println("Dezembro");
        }
    }
}