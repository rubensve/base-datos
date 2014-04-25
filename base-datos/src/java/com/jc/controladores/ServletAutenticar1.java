package com.jc.controladores;

import com.jc.model.Conexion;
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
public class ServletAutenticar1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    
        PrintWriter out = response.getWriter();
       
        
        //paso 1, por medio del request pedir un parametro, en este caso
        //el nombre
          String name=request.getParameter("usuario");
          String pas=request.getParameter("contra");
           int pk = 0;
           
        Conexion c1=new Conexion();
        Connection con;
        try {
        con = c1.conectarse();
        CallableStatement callate=con.prepareCall("{call autenticar_usuarios(?,?,?)}");
        callate.registerOutParameter(1,java.sql.Types.INTEGER);
        callate.setString(2,name);
        callate.setString(3,pas);
        callate.execute();
        pk=callate.getInt(1);
        } catch (Exception ex) {
         Logger.getLogger(ServletAutenticar1.class.getName()).log(Level.SEVERE, null, ex);
        }
       
         if(pk==1){
          RequestDispatcher despachar= request.getRequestDispatcher("bienvenida.jsp");
          despachar.forward(request, response);
               
          }else{
              request.setAttribute("valor", "los datos estan mal");
              RequestDispatcher despachar= request.getRequestDispatcher("index.jsp");
          despachar.forward(request, response);
          }
   
    }

}
