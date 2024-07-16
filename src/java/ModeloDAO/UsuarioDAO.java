/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.UsuarioCRUD;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BETO
 */
public class UsuarioDAO implements UsuarioCRUD {

   
    Conexion cn = new Conexion();
    Usuario user = new Usuario();

    @Override
    public List listar() {
        
        List<Usuario> usuarios = new ArrayList<>();
        
        try {
            Connection cnx = cn.conecta();
            String query = "SELECT * FROM usuario";
            PreparedStatement statement = cnx.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setCorreo(rs.getString("Correo"));
                usuario.setContraseña(rs.getString("Contraseña"));
                usuario.setNombre(rs.getString("Nombre"));
                usuario.setApellido(rs.getString("Apellido"));
                usuario.setDni(rs.getString("Dni"));
                usuario.setTipo(rs.getString("tipo"));
                usuario.setTelefono(rs.getString("Telefono"));
                usuario.setDireccion(rs.getString("Direccion"));

                usuarios.add(usuario);
            }
        } catch (Exception e) {
        }
        return usuarios;
    }

    @Override
    public Usuario list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Usuario user) {
        String sql = "INSERT INTO usuario (Correo, Contraseña, Nombre, Apellido, Dni, tipo, Telefono, Direccion) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (
                Connection connection = cn.conecta(); 
                PreparedStatement statement = connection.prepareStatement(sql)) {

            // Configurar los parámetros
            statement.setString(1, user.getCorreo());
            statement.setString(2, user.getContraseña());
            statement.setString(3, user.getNombre());
            statement.setString(4, user.getApellido());
            statement.setString(5, user.getDni());
            statement.setString(6, user.getTipo());
            statement.setString(7, user.getTelefono());
            statement.setString(8, user.getDireccion());

            // Ejecutar la actualización
            int filasAfectadas = statement.executeUpdate();

            if (filasAfectadas > 0) {
                System.out.println("Usuario insertado exitosamente.");
            } else {
                System.out.println("No se pudo insertar el usuario.");
            }

        } catch (Exception  e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean edit(Usuario user) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
