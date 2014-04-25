package com.jc.model;
import java.sql.*;
import java.util.ArrayList;

public class DAOEmpleado {
    Conexion con;
    
    public DAOEmpleado(){
        con=new Conexion();
    }
    
    public void insertarempleado(Empleado e)throws Exception{
     Connection conex=   con.conectarse();
   CallableStatement callate1=  conex.prepareCall("{call insertar_usuario1(?,?,?,?,?)}");
   callate1.registerOutParameter(1,java.sql.Types.INTEGER);
   callate1.setString(2,e.getNombre());
   callate1.setString(3,e.getApellidop());
   callate1.setString(4,e.getApellidom());
   callate1.setString(5,e.getRoles());
   callate1.executeUpdate();
   callate1.close();
   conex.close();
   System.out.println("Se inserto el registro con exito");
    }
    
 }