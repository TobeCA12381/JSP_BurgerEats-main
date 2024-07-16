<!-- Encabezado y enlaces a CSS y JavaScript -->
<%@ page import="Modelo.Proveedor"%>
<%@ page import="ModeloDAO.ProveedorDAO"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Enlaces a hojas de estilo y scripts aquí -->
    <title>Editar Proveedor</title>
</head>
<body>
    <div class="container">
        <div class="col-lg-6">
            <%
                ProveedorDAO dao = new ProveedorDAO();
                int id = Integer.parseInt((String) request.getAttribute("idprov"));
                Proveedor proveedor = (Proveedor) dao.list(id);
            %>
            <h1>Modificar Proveedor</h1>
            <form action="ProveedorControlador">
                <!-- Campos de edición -->
                Nombre:<br>
                <input class="form-control" type="text" name="txtNombre" value="<%= proveedor.getNombre() %>"><br>
                Razon Social:<br>
                <input class="form-control" type="text" name="txtRazonSocial" value="<%= proveedor.getRazonSocial() %>"><br>
                RUC:<br>
                <input class="form-control" type="text" name="txtRUC" value="<%= proveedor.getRUC() %>"><br>
                Teléfono:<br>
                <input class="form-control" type="text" name="txtTelefono" value="<%= proveedor.getTelefono() %>"><br>
                Dirección:<br>
                <input class="form-control" type="text" name="txtDireccion" value="<%= proveedor.getDireccion() %>"><br>
                <!-- Campo oculto para enviar el ID -->
                <input type="hidden" name="idProveedor" value="<%= proveedor.getIdProveedor() %>">
                <!-- Botones para guardar y regresar -->
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a href="ProveedorControlador?accion=listar">Regresar</a>
            </form>
        </div>
    </div>
</body>
</html>
