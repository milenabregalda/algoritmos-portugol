package com.mycompany.testarlampada;

public class Lampada {
    public boolean acesa;
    public int potencia;
    
    public void acender() {
        this.acesa = true;
    }
    
    public void apagar() {
        this.acesa = false;
    }
    
    public void informarSituacao() {
        if(acesa) System.out.println("A luz está acesa.");
        else System.out.println("A luz está apagada.");
    }
    
    public void informarPotencia() {
        System.out.println("A potência da lâmpada é " + this.potencia + ".");
    }
}
