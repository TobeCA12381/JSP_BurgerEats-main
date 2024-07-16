<%-- 
    Document   : autentica
    Created on : 14 oct. 2023, 09:59:46
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticacion</title>
    </head>
    <body>
        <h1>Autenticando ... </h1>
        <jsp:useBean id="login" class="Modelo.Autentica" scope="session" />
        <jsp:declaration>
    String correo;
    String password;
    String tipoUsuario;
    String mensaje = null;
        </jsp:declaration>
        <jsp:scriptlet>
    correo = request.getParameter("Correo");
    password = request.getParameter("Password");
    tipoUsuario = login.getTipoUsuario(correo, password);

    if (tipoUsuario != null) {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("logueado", "OK");

        // Redirige según el tipo de usuario
        if ("trabajador".equals(tipoUsuario)) {
            response.sendRedirect("Dashboard.jsp");
        } else if ("administrador".equals(tipoUsuario)) {
            response.sendRedirect("reporte.jsp");
        } else if ("cliente".equals(tipoUsuario)) {
            response.sendRedirect("Menu.jsp");
        }
    } else {
        // Manejar el caso en el que la autenticación falla
        RequestDispatcher fwd = request.getRequestDispatcher("Inicio.jsp");
        fwd.forward(request, response);
    }
        </jsp:scriptlet>    
    </body>
</html>
