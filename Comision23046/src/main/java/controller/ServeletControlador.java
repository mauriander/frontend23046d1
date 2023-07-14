/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import data.OradoresDAO;
import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Orador;

/**
 *
 * @author MAURICIO
 */
//Esta clase va actuar como escuchador
@WebServlet("/servletControlador")
public class ServeletControlador extends HttpServlet{
    
    //Utilizamos unos metodos especificos
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       /*  
        List<Orador> oradores = new OradoresDAO().seleccionar();
        oradores.forEach(System.out::println);
        req.setAttribute("oradores",oradores);
        req.getRequestDispatcher("oradores.jsp").forward(req, res);
        */
        String accion = req.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                    editarOrador(req, res);
                    break;
                case "eliminar":
                    eliminar(req, res);
                    break;
                default:
                    accionDefault(req, res);
                    break;
            }
        } else {
            accionDefault(req, res);
        }
        
    }
    
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                     insertarOrador(req, res);
                    break;
                case "modificar":
                   // modificarOrador(req, res);
                    break;
                default:
                    accionDefault(req, res);
                    break;
            }
        } else {
            accionDefault(req, res);
        }
    }
    
      private void accionDefault(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
         List<Orador> oradores = new OradoresDAO().seleccionar();
        oradores.forEach(System.out::println);
        req.setAttribute("oradores",oradores);
        req.getRequestDispatcher("oradores.jsp").forward(req, res);

      //  System.out.println(sesion);

        res.sendRedirect("oradores.jsp");

    }
      
       private void  insertarOrador(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nombre = req.getParameter("nombre");
           
        String apellido = req.getParameter("apellido");
        String tecnologia = req.getParameter("tecnologia");
        String descripcion = req.getParameter("descripcion");

        Orador oradorNuevo = new Orador(nombre, apellido, tecnologia, descripcion);

        int registrosMod = new OradoresDAO().insertar(oradorNuevo);

        System.out.println("Registros agregados: " + registrosMod);

        accionDefault(req, res);

    }
       
       private void editarOrador(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int idOrador = Integer.parseInt(req.getParameter("idOrador"));

        Orador orador = new OradoresDAO().seleccionarPorId(idOrador);

        req.setAttribute("orador",orador);

        req.getRequestDispatcher("/WEB-INF/paginas/operaciones/editarOrador.jsp").forward(req, res);
        
    }
         private void eliminar(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
        int idOrador = Integer.parseInt(req.getParameter("idOrador"));
        
        int regBorrados = new OradoresDAO().eliminar(idOrador);
        
        System.out.println("Registros eliminados: "+ regBorrados);
        
        accionDefault(req, res);
    }
         private void modificarOrador(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
        int idOrador = Integer.parseInt(req.getParameter("idOrador"));
       String nombre = req.getParameter("nombre");
           
        String apellido = req.getParameter("apellido");
        String tecnologia = req.getParameter("tecnologia");
        String descripcion = req.getParameter("descripcion");
        
        Orador oradorMod = new Orador(idOrador,nombre,apellido, tecnologia, descripcion);
        
        int registrosMod = new OradoresDAO().actualizar(oradorMod);
        
        System.out.println("Registros modificados: "+ registrosMod );
        
        accionDefault(req, res);
    }
     
    
}
