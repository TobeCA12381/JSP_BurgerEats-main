/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.FormularioContactoCRUD;
import Modelo.FormularioContacto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Henry
 */
public class FormularioContactoDAO implements FormularioContactoCRUD {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    FormularioContacto fc = new FormularioContacto();

    @Override
    public List listar() {
        ArrayList<FormularioContacto>list = new ArrayList<>();
        String sql = "SELECT * FROM formularios_contacto";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                FormularioContacto fc = new FormularioContacto();
                fc.setId(rs.getInt("id"));
                fc.setNombre(rs.getString("nombre"));
                fc.setApellido(rs.getString("apellido"));
                fc.setCorreoElectronico(rs.getString("correo_electronico"));
                fc.setDireccion(rs.getString("direccion"));
                fc.setTelefono(rs.getString("telefono"));
                fc.setAsunto(rs.getString("asunto"));
                fc.setMensaje(rs.getString("mensaje"));
                list.add(fc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public FormularioContacto list(int id) {
        String sql = "SELECT * FROM formularios_contacto WHERE id=" + id;
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                fc.setId(rs.getInt("id"));
                fc.setNombre(rs.getString("nombre"));
                fc.setApellido(rs.getString("apellido"));
                fc.setCorreoElectronico(rs.getString("correo_electronico"));
                fc.setDireccion(rs.getString("direccion"));
                fc.setTelefono(rs.getString("telefono"));
                fc.setAsunto(rs.getString("asunto"));
                fc.setMensaje(rs.getString("mensaje"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return fc;
    }

    @Override
    public boolean add(FormularioContacto fc) {
        String sql = "INSERT INTO formularios_contacto (nombre, apellido, correo_electronico, direccion, telefono, asunto, mensaje) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, fc.getNombre());
            ps.setString(2, fc.getApellido());
            ps.setString(3, fc.getCorreoElectronico());
            ps.setString(4, fc.getDireccion());
            ps.setString(5, fc.getTelefono());
            ps.setString(6, fc.getAsunto());
            ps.setString(7, fc.getMensaje());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean edit(FormularioContacto fc) {
        String sql = "UPDATE formularios_contacto SET nombre=?, apellido=?, correo_electronico=?, direccion=?, telefono=?, asunto=?, mensaje=? WHERE id=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setString(1, fc.getNombre());
            ps.setString(2, fc.getApellido());
            ps.setString(3, fc.getCorreoElectronico());
            ps.setString(4, fc.getDireccion());
            ps.setString(5, fc.getTelefono());
            ps.setString(6, fc.getAsunto());
            ps.setString(7, fc.getMensaje());
            ps.setInt(8, fc.getId());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM formularios_contacto WHERE id=?";
        try {
            con = cn.conecta();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}