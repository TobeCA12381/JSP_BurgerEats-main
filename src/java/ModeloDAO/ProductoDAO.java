package ModeloDAO;

import Config.Conexion;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.ProductoCRUD;

public class ProductoDAO implements ProductoCRUD {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Producto> listar() {
        List<Producto>lista = new ArrayList<>();
        String sql = "SELECT * FROM producto";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Producto prod = new Producto();
                prod.setIdProducto(rs.getInt("idProducto"));
                prod.setNombre(rs.getString("Nombre"));
                prod.setImagen(rs.getString("Imagen"));
                prod.setStock(rs.getInt("Stock"));
                prod.setCategoria(rs.getString("Categoria"));
                prod.setPrecio(rs.getDouble("Precio"));
                prod.setDescripcion(rs.getString("Descripcion"));
                lista.add(prod);
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            cerrarConexiones();
        }
        return lista;
    }

    @Override
    public Producto list(int id) {
        Producto prod = new Producto();
        String sql = "SELECT * FROM producto WHERE idProducto=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if(rs.next()) {
                prod.setIdProducto(rs.getInt("idProducto"));
                prod.setNombre(rs.getString("Nombre"));
                prod.setImagen(rs.getString("Imagen"));
                prod.setStock(rs.getInt("Stock"));
                prod.setCategoria(rs.getString("Categoria"));
                prod.setPrecio(rs.getDouble("Precio"));
                prod.setDescripcion(rs.getString("Descripcion"));
                // Continuar estableciendo el resto de propiedades
            }
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            cerrarConexiones();
        }
        return prod;
    }

    @Override
    public boolean add(Producto prod) {
        String sql = "INSERT INTO producto (Nombre, Imagen, Stock, Categoria, Precio, Descripcion) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, prod.getNombre());
            ps.setString(2, prod.getImagen());
            ps.setInt(3, prod.getStock());
            ps.setString(4, prod.getCategoria());
            ps.setDouble(5, prod.getPrecio());
            ps.setString(6, prod.getDescripcion());
            ps.executeUpdate();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            cerrarConexiones();
        }
    }

    @Override
    public boolean edit(Producto prod) {
        String sql = "UPDATE producto SET Nombre=?, Imagen=?, Stock=?, Categoria=?, Precio=?, Descripcion=? WHERE idProducto=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, prod.getNombre());
            ps.setString(2, prod.getImagen());
            ps.setInt(3, prod.getStock());
            ps.setString(4, prod.getCategoria());
            ps.setDouble(5, prod.getPrecio());
            ps.setString(6, prod.getDescripcion());
            ps.setInt(7, prod.getIdProducto());
            ps.executeUpdate();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            cerrarConexiones();
        }
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM producto WHERE idProducto=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            cerrarConexiones();
        }
    }

    private void cerrarConexiones() {
        try {
            if(rs != null) rs.close();
            if(ps != null) ps.close();
            if(con != null) con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
