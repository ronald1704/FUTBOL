/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.CECAR.persistencia;

import java.sql.Connection;
import java.sql.DriverManager;


/**
 *
 * @author Jose David Ballesteros
 */
public class ConexionMySQL {
    private static Connection con;
   
    public ConexionMySQL() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/futbol","root","");
        }catch(Exception e){
            System.out.println(e);
        }    
    }
 
    public static Connection getConnection(){
        return con;
    }
   
    
}
