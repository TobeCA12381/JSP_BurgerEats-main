<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Gestión de Proveedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
</head>
<body>

<%@include file="layout/ReporteLayout.jsp" %>

<div class="container mt-5">
    <h2>Gestión de Proveedores</h2>
    <button class="btn btn-primary my-3" data-bs-toggle="modal" data-bs-target="#modalAgregarProveedor">Agregar Proveedor</button>

    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Razón Social</th>
                <th>RUC</th>
                <th>Teléfono</th>
                <th>Dirección</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody id="tablaProveedores">
        </tbody>
    </table>

    <!-- Modal para agregar proveedor -->
    <div class="modal fade" id="modalAgregarProveedor" tabindex="-1" aria-labelledby="modalAgregarProveedorLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalAgregarProveedorLabel">Agregar Proveedor</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="formularioAgregarProveedor">
                        <div class="mb-3">
                            <label for="nombreProveedor" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombreProveedor" name="nombre">
                        </div>
                        <div class="mb-3">
                            <label for="razonSocialProveedor" class="form-label">Razón Social</label>
                            <input type="text" class="form-control" id="razonSocialProveedor" name="razonSocial">
                        </div>
                        <div class="mb-3">
                            <label for="rucProveedor" class="form-label">RUC</label>
                            <input type="text" class="form-control" id="rucProveedor" name="RUC">
                        </div>
                        <div class="mb-3">
                            <label for="telefonoProveedor" class="form-label">Teléfono</label>
                            <input type="text" class="form-control" id="telefonoProveedor" name="telefono">
                        </div>
                        <div class="mb-3">
                            <label for="direccionProveedor" class="form-label">Dirección</label>
                            <input type="text" class="form-control" id="direccionProveedor" name="direccion">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="agregarProveedor()">Agregar Proveedor</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para editar proveedor -->
    <div class="modal fade" id="modalEditarProveedor" tabindex="-1" aria-labelledby="modalEditarProveedorLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalEditarProveedorLabel">Editar Proveedor</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="formularioEditarProveedor">
                        <input type="hidden" id="idProveedorEditar" name="idProveedorEditar">
                        <div class="mb-3">
                            <label for="nombreProveedorEditar" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombreProveedorEditar" name="nombreProveedorEditar">
                        </div>
                        <div class="mb-3">
                            <label for="razonSocialProveedorEditar" class="form-label">Razón Social</label>
                            <input type="text" class="form-control" id="razonSocialProveedorEditar" name="razonSocialProveedorEditar">
                        </div>
                        <div class="mb-3">
                            <label for="rucProveedorEditar" class="form-label">RUC</label>
                            <input type="text" class="form-control" id="rucProveedorEditar" name="rucProveedorEditar">
                        </div>
                        <div class="mb-3">
                            <label for="telefonoProveedorEditar" class="form-label">Teléfono</label>
                            <input type="text" class="form-control" id="telefonoProveedorEditar" name="telefonoProveedorEditar">
                        </div>
                        <div class="mb-3">
                            <label for="direccionProveedorEditar" class="form-label">Dirección</label>
                            <input type="text" class="form-control" id="direccionProveedorEditar" name="direccionProveedorEditar">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="editarProveedor()">Guardar Cambios</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/gestionProveedor.js"></script>
</body>
</html>
