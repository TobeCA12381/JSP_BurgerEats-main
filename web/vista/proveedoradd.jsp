<%-- 
    Document   : proveedoradd
    Created on : 30-ago-2018, 19:58:16
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Agregar Proveedor</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Proveedor</h1>
                <form action="ProveedorControlador">
                    <input class="form-control" type="text" name="nombre"><br>
                    <input class="form-control" type="text" name="razonSocial"><br>
                    <input class="form-control" type="text" name="ruc"><br>
                    <input class="form-control" type="text" name="telefono"><br>
                    <input class="form-control" type="text" name="direccion"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">

                </form>
            </div>
        </div>
    </body>
</html>
