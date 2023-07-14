/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;


import static data.Conexion.close;
import static data.Conexion.getConexion;
import java.sql.*;
import model.Orador;

import java.util.*;



/**
 *
 * @author MAURICIO
 */
public class OradoresDAO {
    private static final String SQL_SELECT = "SELECT * FROM oradores";
    private static final String SQL_SELECT_BY_ID = "SELECT * FROM oradores WHERE idorador = ?";
    private static final String SQL_INSERT = "INSERT INTO oradores(nombre,apellido,tecnologia,descripcion) VALUES(?,?,?,?)";
    private static final String SQL_UPDATE = "UPDATE oradores SET nombre = ?, apellido  = ?,tecnologia  = ?,descripcion  = ? WHERE idorador = ?";
    private static final String SQL_DELETE = "DELETE FROM oradores WHERE idorador = ?";
    
    
    public List<Orador> seleccionar() {
      
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs= null;
        Orador orador=null;
        List<Orador> oradores =new ArrayList () ;
        try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            while(rs.next()){
                int idorador = rs.getInt(1);
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String tecnologia = rs.getString("tecnologia");
                String descripcion = rs.getString("descripcion");
                
                orador = new Orador(idorador,nombre,apellido,tecnologia,descripcion);
                oradores.add(orador);
            }
        
        
        }catch(SQLException ex){
            ex.printStackTrace(System.out);
        }finally{
                try{
                close(rs);
                close(stmt);
                close(conn);
                }
                catch(SQLException ex){
                    ex.printStackTrace(System.out);
                }
                
        }
        return oradores;
    }
    
    public int insertar(Orador orador) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registrosMod = 0;
              try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_INSERT);
            
            stmt.setString(1, orador.getNombre());
            stmt.setString(2, orador.getApellido());
            stmt.setString(3, orador.getTecnologia());
            stmt.setString(4, orador.getDescripcion());
            
            registrosMod = stmt.executeUpdate();
            
              }   catch(SQLException ex){
            ex.printStackTrace(System.out);
            }finally{
                try{
                close(stmt);
                close(conn);
                }
                catch(SQLException ex){
                    ex.printStackTrace(System.out);
                }
              }
              return registrosMod;        
    }
    public int actualizar(Orador orador) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registrosMod = 0;
              try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE);
            
            stmt.setString(1, orador.getNombre());
            stmt.setString(2, orador.getApellido());
            stmt.setString(3, orador.getTecnologia());
            stmt.setString(4, orador.getDescripcion());
            stmt.setInt(5, orador.getIdorador());
            registrosMod = stmt.executeUpdate();
            
              }   catch(SQLException ex){
            ex.printStackTrace(System.out);
            }finally{
                try{
                close(stmt);
                close(conn);
                }
                catch(SQLException ex){
                    ex.printStackTrace(System.out);
                }
              }
              return registrosMod;        
    }
      public Orador seleccionarPorId(int id)  {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs= null;
        Orador orador=null;
        try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            stmt.setInt(1, id);            
            rs = stmt.executeQuery();
            
            while(rs.next()){
                int idorador = rs.getInt(1);
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String tecnologia = rs.getString("tecnologia");
                String descripcion = rs.getString("descripcion");
                
                orador = new Orador(idorador,nombre,apellido,tecnologia,descripcion);
            }
        }catch(SQLException ex){
            ex.printStackTrace(System.out);
        }finally{
                try{
                close(rs);
                close(stmt);
                close(conn);
                }
                catch(SQLException ex){
                    ex.printStackTrace(System.out);
                }
        }
        return orador;
    }
      
          public int eliminar(int idOrador){
        Connection conn = null;
        PreparedStatement stmt = null;
        int registrosMod = 0;
        
        try{
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, idOrador);
            
            registrosMod = stmt.executeUpdate();
            
        }catch(SQLException ex){
            ex.printStackTrace(System.out);
        }finally{
            try{
                close(stmt);
                close(conn);
            }catch(SQLException ex){
                ex.printStackTrace(System.out);
            }
        }
        
        return registrosMod;
    }
}