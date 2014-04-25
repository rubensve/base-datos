package com.jc.controladores;

import com.jc.model.Conexion;
import com.jc.model.DAOEmpleado;
import com.jc.model.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rubens
 */
public class ServletInsertarEmpleado extends HttpServlet {

    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    
        PrintWriter out = response.getWriter();
    /*   String mensaje="no insertado";
       
    String nombre=    request.getParameter("nombre");
     String apellidop=    request.getParameter("apellidop");
      String apellidom=    request.getParameter("apellidom");
       String roles=    request.getParameter("roles");
        
    
   Empleado e= new Empleado();
   e.setNombre(nombre);
   e.setApellidop(apellidop);
   e.setApellidom(apellidom);
   e.setRoles(roles);
      
    DAOEmpleado dao=new DAOEmpleado();
        try {
            dao.insertarempleado(e);
            mensaje="Tu usuario se guardo con exito :)";
        } catch (Exception ex) {
   mensaje=ex.getMessage();
        }
              out.println(mensaje);    
    }
      */
        
        Conexion c=new Conexion();
        Connection con;
        try {
            con = c.conectarse();
        CallableStatement callate1=con.prepareCall("{call insertar_usuario1(?,?,?,?,?)}");
        callate1.registerOutParameter(1, java.sql.Types.INTEGER);
        callate1.setString(2, "Ruben1");
        callate1.setString(3, "Andrade");
        callate1.setString(4, "Veloz");
        callate1.setString(5, "Administrador");
        callate1.execute();
        out.println("Insertado con exito");
        } catch (Exception ex) {
            Logger.getLogger(ServletInsertarEmpleado.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
