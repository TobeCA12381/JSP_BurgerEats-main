package ModeloDAO;

import Config.Conexion;
import Interfaces.ReporteCRUD;
import Modelo.Reporte;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.ProductoCRUD;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ReporteDAO implements ReporteCRUD {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Reporte> listar() {
        List<Reporte> lista = new ArrayList<>();
        String sql = "SELECT * FROM reporte";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reporte rep = new Reporte();
                rep.setIdReporte(rs.getInt("idReporte"));
                rep.setNombre(rs.getString("Nombre"));
                rep.setPedido(rs.getString("Pedido"));
                rep.setOrdenTomadaPor(rs.getString("OrdenTomadaPor"));
                rep.setCantidad(rs.getInt("Cantidad"));
                rep.setFechaRegistro(rs.getTimestamp("FechaRegistro"));
                rep.setTotalPagar(rs.getDouble("TotalPagar"));
                lista.add(rep);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReporteDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cerrarConexiones();
        }
        return lista;
    }

    @Override
    public boolean add(Reporte rep) {
        String sql = "INSERT INTO reporte (Nombre, Pedido, OrdenTomadaPor, Cantidad, FechaRegistro, TotalPagar) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, rep.getNombre());
            ps.setString(2, rep.getPedido());
            ps.setString(3, rep.getOrdenTomadaPor());
            ps.setInt(4, rep.getCantidad());
            ps.setTimestamp(5, new Timestamp(rep.getFechaRegistro().getTime()));
            ps.setDouble(6, rep.getTotalPagar());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReporteDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cerrarConexiones();
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM reporte WHERE idReporte=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReporteDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cerrarConexiones();
        }
        return false;
    }

    private void cerrarConexiones() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
