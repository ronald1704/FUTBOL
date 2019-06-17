/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.CECAR.logica;

/**
 *
 * @author Jose David Ballesteros
 */
public class Equipo {
    private int identificacion;
    private String nombreEquipo;
    private String nombreEntrenador;
    

    public Equipo() {   
        this.identificacion=0;
        this.nombreEquipo = "";
        this.nombreEntrenador = "";      
    }

    public Equipo(int identificacion, String nombreEquipo, String nombreEntrenador) {
        this.identificacion = identificacion;
        this.nombreEquipo = nombreEquipo;
        this.nombreEntrenador = nombreEntrenador;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }
    
    public String getNombreEquipo() {
        return nombreEquipo;
    }

    public void setNombreEquipo(String nombreEquipo) {
        this.nombreEquipo = nombreEquipo;
    }

    public String getNombreEntrenador() {
        return nombreEntrenador;
    }

    public void setNombreEntrenador(String nombreEntrenador) {
        this.nombreEntrenador = nombreEntrenador;
    }

    
    
    
    
}
