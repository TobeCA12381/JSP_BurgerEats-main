<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="Modelo.Usuario" %>
<%@ page import="ModeloDAO.UsuarioDAO" %>


<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Gestión de Usuarios</title>
        <link rel="stylesheet" href="css/AddUser.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>

        <%@include file="layout/ReporteLayout.jsp" %>

        <section class="section-1">


            <div class="user-form">
                <h2>Agregar Usuario</h2>

                <form action="/BurgetEatJSP/Usuario_Controlador" method="post" class="row g-3">
                    <section>
                        <h5><label>Nombre</label><br></h5>
                        <input class="controls" type="text" name="nom" id="imputnom">
                        <h5><label>Apellido</label><br></h5>
                        <input class="controls" type="text" name="ape" id="imputape">
                        <h5><label>DNI</label><br></h5>
                        <input class="controls" type="text" name="dni" id="imputdni">
                        <h5><label>Dirección</label><br></h5>
                        <input class="controls" type="text" name="dir" id="imputdir">
                        <h5><label>Telefono</label><br></h5>
                        <input class="controls" type="text" name="cel" id="imputtel">
                        <h5><label>Correo Electrónico</label><br></h5>
                        <input class="controls" type="email" name="email" id="imputnomemail">
                        <h5><label>Contraseña</label><br></h5>
                        <input class="controls" type="password" name="pass" id="imputpass">
                        <input type="hidden" name="tipo" value="trabajador">
                        <div class="buttons">
                            <br>
                            <button type="submit" name="accion"  value="Agregar" class="btn btn-primary">Agregar</button>

                        </div>
                    </section>
                </form>
            </div>

            <div class="user-list">
   <h2>Lista de Usuarios</h2>
   <% UsuarioDAO dao = new UsuarioDAO();
      List<Usuario> list = dao.listar();
      Iterator<Usuario> iter = list.iterator();
      Usuario user = null;
      while (iter.hasNext()) {
         user = iter.next();
   %>
   <% if ("trabajador".equals(user.getTipo())) { %>
   <table id="users">
      <thead>
         <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>DNI</th>
            <th>Direccion</th>
            <th>Telefono</th>
            <th>Correo electrónico</th>
            <th>Contraseña</th>            
            <th>Opciones</th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td><%= user.getNombre() %></td>
            <td><%= user.getApellido() %></td>
            <td><%= user.getDni() %></td>
            <td><%= user.getDireccion() %></td>
            <td><%= user.getTelefono() %></td>
            <td><%= user.getCorreo() %></td>
            <td><%= user.getContraseña() %></td>
            <td><a>Editar</a> <a>Eliminar</a></td>
         </tr>
      </tbody>
   </table>
   <% } %>
   <% } %>
</div>
        </section>

    </div>
</body>
</html>

