/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.jc.model;

/**
 *
 * @author campitos
 */

import java.sql.*;
public class Conexion {
    
    public Connection conectarse()throws Exception{
        String url="jdbc:oracle:thin:@localhost:1521:XE";
       Class.forName("oracle.jdbc.OracleDriver");
       Connection con=DriverManager.getConnection(url,"basededatos1","elmasmejor110789");
       return con;
    }
    
}
