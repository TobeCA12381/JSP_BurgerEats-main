<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="js/reporte/Gestion-proveedores.js"></script>
</head>
<body>

<%@include file="layout/ReporteLayout.jsp" %>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="container mt-5 border rounded p-4">
                <div id="fechaHora"></div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <h2>Registrar Proveedor</h2>
                        <form id="proveedor">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre">
                            </div>
                            <div class="mb-3">
                                <label for="razonSocial" class="form-label">Razón Social</label>
                                <input type="text" class="form-control" id="razonSocial" name="razonSocial">
                            </div>
                            <div class="mb-3">
                                <label for="ruc" class="form-label">RUC</label>
                                <input type="text" class="form-control" id="ruc" name="ruc">
                            </div>
                            <div class="mb-3">
                                <label for="telefono" class="form-label">Teléfono</label>
                                <input type="text" class="form-control" id="telefono" name="telefono">
                            </div>
                            <div class="mb-3">
                                <label for="direccion" class="form-label">Dirección</label>
                                <input type="text" class="form-control" id="direccion" name="direccion">
                            </div>
                            <div class="mb-3">
                                <label for="sitioWeb" class="form-label">Sitio Web</label>
                                <input type="text" class="form-control" id="sitioWeb" name="sitioWeb">
                            </div>
                            <button type="button" class="btn btn-primary" id="agregarProveedor">Agregar Proveedor</button>
                        </form>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-6">
                        <h2>Proveedores Registrados</h2>
                        <ul class="list-group" id="proveedoresRegistrados">
                            <!-- Los proveedores registrados se mostrarán aquí -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
