<!-- Encabezado y enlaces a CSS y JavaScript -->
<%@page import="Modelo.Proveedor"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Enlaces a hojas de estilo y scripts aquí -->
    <title>Eliminar Proveedor</title>
</head>
<body>
    <div class="container">
        <div class="col-lg-6">
            <%
                ProveedorDAO dao = new ProveedorDAO();
                int id = Integer.parseInt((String) request.getAttribute("idprov"));
                Proveedor proveedor = (Proveedor) dao.list(id);
            %>
            <h1>Eliminar Proveedor</h1>
            <p>¿Estás seguro de que deseas eliminar el proveedor con ID <%= proveedor.getIdProveedor() %> y nombre <%= proveedor.getNombre() %>?</p>
            <form action="ProveedorControlador">
                <!-- Campo oculto para enviar el ID -->
                <input type="hidden" name="idProveedor" value="<%= proveedor.getIdProveedor() %>">
                <!-- Botones para confirmar o cancelar la eliminación -->
                <input class="btn btn-danger" type="submit" name="accion" value="Eliminar">
                <a href="ProveedorControlador?accion=listar">Cancelar</a>
            </form>
        </div>
    </div>
</body>
</html>
