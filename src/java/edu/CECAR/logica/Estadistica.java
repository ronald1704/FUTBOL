/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.CECAR.logica;

/**
 *
 * @author KOGARASUMARU
 */
public class Estadistica {

    private int idEquipo;
    private int golesFavor;
    private int golesContra;
    private int pJugados;
    private int pEmpatados;
    private int pGanados;

    public Estadistica() {
        this.idEquipo = 0;
        this.golesFavor = 0;
        this.golesContra = 0;
        this.pJugados = 0;
        this.pEmpatados = 0;
        this.pGanados = 0;
    }

    public Estadistica(int idEquipo, int golesFavor, int golesContra, int pJugados, int pEmpatados, int pGanados) {
        this.idEquipo = idEquipo;
        this.golesFavor = golesFavor;
        this.golesContra = golesContra;
        this.pJugados = pJugados;
        this.pEmpatados = pEmpatados;
        this.pGanados = pGanados;
    }

    public int getIdEquipo() {
        return idEquipo;
    }

    public void setIdEquipo(int idEquipo) {
        this.idEquipo = idEquipo;
    }

    public int getGolesFavor() {
        return golesFavor;
    }

    public void setGolesFavor(int golesFavor) {
        this.golesFavor = golesFavor;
    }

    public int getGolesContra() {
        return golesContra;
    }

    public void setGolesContra(int golesContra) {
        this.golesContra = golesContra;
    }

    public int getpJugados() {
        return pJugados;
    }

    public void setpJugados(int pJugados) {
        this.pJugados = pJugados;
    }

    public int getpEmpatados() {
        return pEmpatados;
    }

    public void setpEmpatados(int pEmpatados) {
        this.pEmpatados = pEmpatados;
    }

    public int getpGanados() {
        return pGanados;
    }

    public void setpGanados(int pGanados) {
        this.pGanados = pGanados;
    }

}
