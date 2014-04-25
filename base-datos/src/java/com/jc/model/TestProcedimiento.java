/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.jc.model;

import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author campitos
 */
public class TestProcedimiento {
    public static void main(String args[])throws Exception{
        Conexion c=new Conexion();
        Connection con=c.conectarse();
        CallableStatement callate1=con.prepareCall("{call insertar_usuario1(?,?,?,?,?)}");
        callate1.registerOutParameter(1, java.sql.Types.INTEGER);
        callate1.setString(2, "Ruben");
        callate1.setString(3, "Andrade");
        callate1.setString(4, "Veloz");
        callate1.setString(5, "Administrador");
        callate1.execute();
        System.out.println("Insertado con exito");
        
        
        /*
        
        CallableStatement callate=con.prepareCall("{call autenticar_usuarios(?,?,?)}");
        callate.registerOutParameter(1,java.sql.Types.INTEGER);
        callate.setString(2,"rubens11");
        callate.setString(3,"veloz");
        callate.execute();
        int pk=callate.getInt(1);
        System.out.println("El id insertado es:"+pk);
        */
     
    }
    
}
