package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
/**
 *
 * @author Estudiante
 */
public class Autentica {

    private String usuario;
    private String password;
    private String tipoUsuario;

    public Autentica() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   public String getTipoUsuario(String email, String psw) throws ClassNotFoundException {
    try {            
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        
        String query = "SELECT tipo FROM usuario ";
        query += "WHERE Correo='" + email + "' AND ";
        query += "Contraseña='" + psw + "'";
        
        Statement sentencia = cnx.createStatement();
        ResultSet resultado = sentencia.executeQuery(query);

        if (resultado.next()) {
            // Si hay un resultado, obtenemos el tipo de usuario
             tipoUsuario = resultado.getString("tipo");
            return tipoUsuario;
        } else {
            // Si no hay resultados, el usuario no existe o la contraseña es incorrecta
            return null;  // Puedes elegir un valor que indique que no se encontró el usuario
        }            
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    return null;
}

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

   
    
    
}
