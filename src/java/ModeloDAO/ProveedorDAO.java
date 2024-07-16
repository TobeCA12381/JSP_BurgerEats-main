package ModeloDAO;

import Config.Conexion;
import Interfaces.ProveedorCRUD;
import Modelo.Proveedor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO implements ProveedorCRUD {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Proveedor> listar() {
        List<Proveedor> lista = new ArrayList<>();
        String sql = "SELECT * FROM proveedor";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor proveedor = new Proveedor();
                proveedor.setIdProveedor(rs.getInt("IdProveedor"));
                proveedor.setNombre(rs.getString("Nombre"));
                proveedor.setRazonSocial(rs.getString("RazonSocial"));
                proveedor.setRUC(rs.getString("RUC"));
                proveedor.setTelefono(rs.getString("Telefono"));
                proveedor.setDireccion(rs.getString("Direccion"));
                lista.add(proveedor);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarConexiones();
        }
        return lista;
    }

    @Override
    public Proveedor list(int id) {
        Proveedor proveedor = new Proveedor();
        String sql = "SELECT * FROM proveedor WHERE IdProveedor=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                proveedor.setIdProveedor(rs.getInt("IdProveedor"));
                proveedor.setNombre(rs.getString("Nombre"));
                proveedor.setRazonSocial(rs.getString("RazonSocial"));
                proveedor.setRUC(rs.getString("RUC"));
                proveedor.setTelefono(rs.getString("Telefono"));
                proveedor.setDireccion(rs.getString("Direccion"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarConexiones();
        }
        return proveedor;
    }

    @Override
    public boolean add(Proveedor proveedor) {
        String sql = "INSERT INTO proveedor (Nombre, RazonSocial, RUC, Telefono, Direccion) VALUES (?, ?, ?, ?, ?)";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, proveedor.getNombre());
            ps.setString(2, proveedor.getRazonSocial());
            ps.setString(3, proveedor.getRUC());
            ps.setString(4, proveedor.getTelefono());
            ps.setString(5, proveedor.getDireccion());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            cerrarConexiones();
        }
    }

    @Override
    public boolean edit(Proveedor proveedor) {
        String sql = "UPDATE proveedor SET Nombre=?, RazonSocial=?, RUC=?, Telefono=?, Direccion=? WHERE IdProveedor=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, proveedor.getNombre());
            ps.setString(2, proveedor.getRazonSocial());
            ps.setString(3, proveedor.getRUC());
            ps.setString(4, proveedor.getTelefono());
            ps.setString(5, proveedor.getDireccion());
            ps.setInt(6, proveedor.getIdProveedor());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            cerrarConexiones();
        }
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM proveedor WHERE IdProveedor=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            cerrarConexiones();
        }
    }

    private void cerrarConexiones() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
