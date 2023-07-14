/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.DataSource;
import javax.activation.*;




/**
 *
 * @author MAURICIO
 */
import org.apache.commons.dbcp2.BasicDataSource;
public class Conexion {
   
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/oradores?useSSL=false&useTimeZone=true&serverTimeZone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USR ="root";
    private static final String JDBC_PASS ="pigush";
    
    public static DataSource getDataSource(){
       /*  try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        }*/
    BasicDataSource ds= new BasicDataSource();
    ds.setUrl(JDBC_URL);
    ds.setUsername(JDBC_USR);
    ds.setPassword(JDBC_PASS);
    ds.setInitialSize(50);
    return ds;
    }

    
       public static Connection getConexion() throws SQLException{
      //Class.forName("com.mysql.cj.jdbc.Driver");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        }
       
       // return DriverManager.getConnection(JDBC_URL,JDBC_USR,JDBC_PASS);
        return getDataSource().getConnection();
    }
    
    public static void close(ResultSet rs) throws SQLException{
        rs.close();
    }
    
    public static void close(Statement st) throws SQLException{
        st.close();
    }
    
    public static void close(Connection cn) throws SQLException{
        cn.close();
    }
    
}
