/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MAURICIO
 */
public class Orador {
    private int idorador;
    private String nombre;
    private String apellido;
    private String tecnologia;
    private String descripcion;

      public Orador(String nombre, String apellido, String tecnologia, String descripcion) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.tecnologia = tecnologia;
        this.descripcion = descripcion;
    }

    public Orador(int idorador, String nombre, String apellido, String tecnologia, String descripcion) {
        this.idorador = idorador;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tecnologia = tecnologia;
        this.descripcion = descripcion;
    }

    public Orador() {
    }
    

    
      @Override
    public String toString() {
        return "Orador{" + "idorador=" + idorador + ", nombre=" + nombre + ", apellido=" + apellido + ", tecnologia=" + tecnologia + ", descripcion=" + descripcion + '}';
    }
    
    public int getIdorador() {
        return idorador;
    }

    public String getNombre() {
        return nombre;
    }

  

    public void setIdorador(int idorador) {
        this.idorador = idorador;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setTecnologia(String tecnologia) {
        this.tecnologia = tecnologia;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getApellido() {
        return apellido;
    }

    public String getTecnologia() {
        return tecnologia;
    }

    public String getDescripcion() {
        return descripcion;
    }


    
    
    
}
