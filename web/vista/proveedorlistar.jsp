<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.Proveedor" %>
<%@ page import="ModeloDAO.ProveedorDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Proveedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    
    <%@include file="layout/ReporteLayout.jsp" %>
    
    <div class="container">
        <h1>Lista de Proveedores</h1>
        <a class="btn btn-success" href="proveedoradd.jsp">Agregar Nuevo Proveedor</a>
        <br>
        <br>
        <table class="table table-bordered">
            <!-- Encabezados de la tabla -->
            <thead>
                <tr>
                    <th class="text-center">ID</th>
                    <th class="text-center">Nombre</th>
                    <th class="text-center">Razón Social</th>
                    <th class="text-center">RUC</th>
                    <th class="text-center">Teléfono</th>
                    <th class="text-center">Dirección</th>
                    <th class="text-center">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterar y mostrar los proveedores -->
                <%
                    ProveedorDAO dao = new ProveedorDAO();
                    List<Proveedor> listaProveedores = dao.listar();
                    for (Proveedor proveedor : listaProveedores) {
                %>
                <tr>
                    <td class="text-center"><%= proveedor.getIdProveedor() %></td>
                    <td><%= proveedor.getNombre() %></td>
                    <td><%= proveedor.getRazonSocial() %></td>
                    <td><%= proveedor.getRUC() %></td>
                    <td><%= proveedor.getTelefono() %></td>
                    <td><%= proveedor.getDireccion() %></td>
                    <td class="text-center">
                        <a class="btn btn-warning" href="ProveedorControlador?accion=editar&id=<%= proveedor.getIdProveedor() %>">Editar</a>
                        <a class="btn btn-danger" href="ProveedorControlador?accion=eliminar&id=<%= proveedor.getIdProveedor() %>">Eliminar</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>