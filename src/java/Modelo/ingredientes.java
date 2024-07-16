/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.List;
import java.util.LinkedList;

/**
 *
 * @author BETO
 */
public class ingredientes {

    public ingredientes(String nombre, int stock, int precio, String descripcion, String categoria) {
        this.nombre = nombre;
        this.stock = stock;
        this.precio = precio;
        this.descripcion = descripcion;
        this.categoria = categoria;
    }

    public List<ingredientes> listaingredientes() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from ;";
            List<ingredientes> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                ingredientes v = new ingredientes();
                v.nombre = resultado.getString("nombre");
                v.stock = resultado.getInt("stock");
                v.precio = resultado.getInt("precio");
                v.descripcion = resultado.getString("descripcion");
                v.categoria = resultado.getString("categoria");
                lista.add(v);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public void datosingredientes(String cliente) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from ingredientes where nombre = '" + nombre + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            resultado.next();
            this.nombre = resultado.getString("nombre");
            this.stock = resultado.getInt("stock");
            this.precio = resultado.getInt("precio");
            this.descripcion = resultado.getString("descripcion");
            this.categoria = resultado.getString("categoria");
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void insertaingredientes(String nombre, String stock, String precio, String descripcion, String categoria) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int pr = Integer.parseInt(precio);
            int st = Integer.parseInt(stock);
            String query = "insert into ingredientes values(?,?,?,?,?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.setInt(2, st);
            sentencia.setInt(3, pr);
            sentencia.setString(4, descripcion);
            sentencia.setString(5, categoria);

            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void editaVenta(String nombre, String stock, String precio, String descripcion, String categoria) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int pr = Integer.parseInt(precio);
            int st = Integer.parseInt(stock);
            String query = "update ingredientes set nombre=?, stock=?,precio=?, descripcion=?,categoria=? where cliente=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.setInt(2, st);
            sentencia.setInt(3, pr);
            sentencia.setString(4, descripcion);
            sentencia.setString(5, categoria);

            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void eliminaVenta(String nombre) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "delete from ingredientes where nombre=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public String getNombre() {
        return nombre;
    }

    public int getPrecio() {
        return precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    private String nombre;
    private int stock;
    private int precio;
    private String descripcion;
    private String categoria;

    public ingredientes() {
    }

}
