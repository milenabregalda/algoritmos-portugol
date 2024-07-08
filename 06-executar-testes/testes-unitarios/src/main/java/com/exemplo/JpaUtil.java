package com.exemplo;

// Importação da classe EntityManager da API de persistência Java (JPA)
import javax.persistence.EntityManager;

// Declaração da classe JpaUtil
public class JpaUtil {

    // Método estático que retorna uma instância de EntityManager
    
    public static EntityManager getEntityManager() {
        // Retorna uma instância de EntityManagerSimulado
        return new EntityManagerSimulado();
    }
}
