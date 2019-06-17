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
public class Jugador {
    private int identificacion;
    private String nombreCompleto;
    private int dorsal;
    private String posicion;

    public Jugador() {
        this.identificacion = 0;
        this.nombreCompleto = "";
        this.dorsal = 0;
        this.posicion = "";
    }

    
    public Jugador(int identificacion, String nombreCompleto, int dorsal, String posicion) {
        this.identificacion = identificacion;
        this.nombreCompleto = nombreCompleto;
        this.dorsal = dorsal;
        this.posicion = posicion;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public int getDorsal() {
        return dorsal;
    }

    public void setDorsal(int dorsal) {
        this.dorsal = dorsal;
    }

    public String getPosicion() {
        return posicion;
    }

    public void setPosicion(String posicion) {
        this.posicion = posicion;
    }
    
    
}
