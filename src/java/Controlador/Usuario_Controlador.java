/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Usuario;
import ModeloDAO.UsuarioDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author BETO
 */
public class Usuario_Controlador extends HttpServlet {

  
    Usuario user = new Usuario();
    UsuarioDAO dao = new UsuarioDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Usuario_Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Usuario_Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("add")) {
           

        }

        if (action.equalsIgnoreCase("listar")) {
        

        }

        if (action.equalsIgnoreCase("Agregar")) {
            String correo = request.getParameter("email");
            String contraseña = request.getParameter("pass");
            String nombre = request.getParameter("nom");
            String apellido = request.getParameter("ape");
            String dni = request.getParameter("dni");
            String tipo = request.getParameter("tipo");
            String telefono = request.getParameter("cel");
            String direccion = request.getParameter("dir");
            
            user.setCorreo(correo);
            user.setContraseña(contraseña);
            user.setNombre(nombre);
            user.setApellido(apellido);
            user.setDni(dni);
            user.setTipo(tipo);
            user.setTelefono(telefono);
            user.setDireccion(direccion);

            dao.add(user);
            
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
