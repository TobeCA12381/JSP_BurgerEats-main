<%-- 
    Document   : valideishon
    Created on : 5 oct. 2023, 00:03:21
    Author     : Nameless
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#000000;" >
        <%
            String usuario = request.getParameter("Usuario");
            String password = request.getParameter("Password");
            String mensaje = null;
            
            HttpSession sesion = request.getSession();
            
            if (usuario.equals("admin@a") && password.equals("123456")) {
                Integer contadorVisitas = (Integer) sesion.getAttribute("contadorVisitas");
                if (contadorVisitas == null) {
                    contadorVisitas = 1;
                    mensaje = "Bienvenido por primera vez";
                } else {
                    mensaje = "Bienvenido nuevamente, usted nos ha visitado " + contadorVisitas + " veces";
                    contadorVisitas++;
                }
                sesion.setAttribute("logueado", "OK");
                sesion.setAttribute("contadorVisitas", contadorVisitas);
                sesion.setMaxInactiveInterval(3600);
        %>
    <center>
        <div style="margin-top: 300px; color:white; font-size: 30px;">
       <img src="images/Logeado.gif" alt="" width="20%">
        <h1>Administrador Validado</h1>
        <p><%= mensaje %></p>
        <a style="text-decoration: none; color: white;" type="submit" href="reporte.jsp" class="btn btn-small btn-primary mt-3">Bienvenido Administrador</a>
        </div>
    </center>
        <%
            } else if (usuario.equals("Trabajador") && password.equals("123456")) {
                Integer contadorVisitas3 = (Integer) sesion.getAttribute("contadorVisitas3");
                if (contadorVisitas3 == null) {
                    contadorVisitas3 = 1;
                    mensaje = "Bienvenido, disfrute de nuestro servicio";
                } else {
                    mensaje = "Bienvenido nuevamente, usted nos ha visitado " + contadorVisitas3 + " veces";
                    contadorVisitas3++;
                }
                sesion.setAttribute("logueado", "OK");
                sesion.setAttribute("contadorVisitas3", contadorVisitas3);
                sesion.setMaxInactiveInterval(3600);
        %>
        <center>
        <div style="margin-top: 300px; color:white; font-size: 30px;">
        <img src="images/Trabajador.gif" alt="" width="20%">
        
        <h1>Trabajador Validado</h1>
        <p><%= mensaje %></p>
        <a style="text-decoration: none; color: white;" type="submit" href="Dashboard.jsp" class="btn btn-small btn-primary mt-3">Bienvenido Trabajador</a>
      
        </div>
        </center>
        <%
            } else if (usuario.equals("Pepe") && password.equals("123456")) {
                Integer contadorVisitas3 = (Integer) sesion.getAttribute("contadorVisitas3");
                if (contadorVisitas3 == null) {
                    contadorVisitas3 = 1;
                    mensaje = "Bienvenido, disfrute de nuestro servicio";
                } else {
                    mensaje = "Bienvenido nuevamente, usted nos ha visitado " + contadorVisitas3 + " veces";
                    contadorVisitas3++;
                }
                sesion.setAttribute("logueado", "OK");
                sesion.setAttribute("contadorVisitas3", contadorVisitas3);
                sesion.setMaxInactiveInterval(3600);
        %>
        <center>
        <div style="margin-top: 300px; color:white; font-size: 30px;">
        <img src="images/Usuario.gif" alt="" width="20%">
        <h1>Usuario Validado</h1>
        <p><%= mensaje %></p>
        <a style="text-decoration: none; color: white;" type="submit" href="Menu.jsp" class="btn btn-small btn-primary mt-3">Bienvenido Usuario</a>

        <%
            } else {
                Integer contadorVisitas2 = (Integer) sesion.getAttribute("contadorVisitas2");
                if (contadorVisitas2 == null) {
                    contadorVisitas2 = 1;
                    mensaje = "Error, por favor ingrese correctamente sus credenciales de acceso";
                } else {
                    contadorVisitas2++;
                    mensaje = "Error, por favor vuelva a ingresar correctamente sus credenciales de acceso. Usted ha ingresado los datos incorrectos " + contadorVisitas2 + " veces";
                }
                sesion.setAttribute("logueado", "OK");
                sesion.setAttribute("contadorVisitas2", contadorVisitas2);
                sesion.setMaxInactiveInterval(3600);

                if (contadorVisitas2 > 3) {
                    response.sendRedirect("Inicio.jsp");
                }
        %>


        <center>
        <div style="margin-top: 300px; color:red; font-size: 30px;">
        <img src="img/pika4.gif" alt="" width="20%">
        <h1 style="color:red;">Usuario No Validado</h1>
        <p><%= mensaje %></p>

        </div>
        </center>
        <%
            }
        %>
    </body>
</html>
