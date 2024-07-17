/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.carlosorozco.webapp.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 *
 * @author informatica
 */
public class JpaUtil {
    private static final EntityManagerFactory emf = buildEntityManagerFactory();
    
    public static EntityManagerFactory buildEntityManagerFactory(){
        try{
            return Persistence.createEntityManagerFactory("SGBDProductos");
        }catch(Exception e){
            e.printStackTrace();
            throw new ExceptionInInitializerError(e);
        }
    }
    
    public static EntityManager getEntityManager(){
        return emf.createEntityManager();
    }
    
    public static void close(){
        emf.close();
    }

    public static EntityManager getEntitiyManager() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
