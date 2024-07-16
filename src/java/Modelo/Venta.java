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
 * @author Estudiante
 */
public class Venta {

    private String cliente;
    private String producto;
    private int cantidad;
    private double monto;

    public Venta() {
    }

    public Venta(String cliente, String producto, int cantidad, double monto) {
        this.cliente = cliente;
        this.producto = producto;
        this.cantidad = cantidad;
        this.monto = monto;
    }

    public List<Venta> listaVentas() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from venta;";
            List<Venta> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Venta v = new Venta();
                v.cliente = resultado.getString("cliente");
                v.producto = resultado.getString("producto");
                v.cantidad = resultado.getInt("cantidad");
                v.monto = resultado.getDouble("monto");
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

    public void datosVenta(String cliente) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from venta where cliente = '" + cliente + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            resultado.next();
            this.cliente = resultado.getString("cliente");
            this.producto = resultado.getString("producto");
            this.cantidad = resultado.getInt("cantidad");
            this.monto = resultado.getDouble("monto");
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void insertaVenta(String cliente, String producto, String cantidad, String monto) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int cnt = Integer.parseInt(cantidad);
            double mnt = Double.parseDouble(monto);
            String query = "insert into venta values(?,?,?,?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, cliente);
            sentencia.setString(2, producto);
            sentencia.setInt(3, cnt);
            sentencia.setDouble(4, mnt);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void editaVenta(String cliente, String producto, String cantidad, String monto) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int cnt = Integer.parseInt(cantidad);
            double mnt = Double.parseDouble(monto);            
            String query = "update venta set producto=?, cantidad=?,monto=? where cliente=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);            
            sentencia.setString(1, producto);
            sentencia.setInt(2, cnt);
            sentencia.setDouble(3, mnt);
            sentencia.setString(4, cliente);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void eliminaVenta(String cliente) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "delete from venta where cliente=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, cliente);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

}
