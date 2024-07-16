<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Gestión de Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
</head>
<body>

<%@include file="layout/ReporteLayout.jsp" %>

<div class="container mt-5">
    <h2>Gestión de Productos</h2>
    <button class="btn btn-primary my-3" data-bs-toggle="modal" data-bs-target="#modalProducto">Agregar Producto</button>

    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Stock</th>
                <th>Categoría</th>
                <th>Precio</th>
                <th>Descripción</th>
                <th>Imagen</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody id="tablaProductos">
        </tbody>
    </table>

    <div class="modal fade" id="modalProducto" tabindex="-1" aria-labelledby="modalProductoLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalProductoLabel">Producto</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="formularioProducto">
                        <input type="hidden" id="idProducto" name="idProducto">
                        
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre">
                        </div>
                        <div class="mb-3">
                            <label for="imagen" class="form-label">Imagen URL</label>
                            <input type="text" class="form-control" id="imagen" name="imagen">
                        </div>
                        <div class="mb-3">
                            <label for="stock" class="form-label">Stock</label>
                            <input type="text" class="form-control" id="stock" name="stock">
                        </div>
                        <div class="mb-3">
                            <label for="precio" class="form-label">Precio</label>
                            <input type="text" class="form-control" id="precio" name="precio">
                        </div>
                        <div class="mb-3">
                            <label for="descripcion" class="form-label">Descripción</label>
                            <textarea class="form-control" id="descripcion" name="descripcion"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="categoria" class="form-label">Categoría</label>
                            <select class="form-select" id="categoria" name="categoria">
                                <option value="Bebidas">Bebidas</option>
                                <option value="Hamburguesas">Hamburguesas</option>
                                <option value="Extras">Extras</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="agregarProducto()">Agregar Producto</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalEditarProducto" tabindex="-1" aria-labelledby="modalEditarProductoLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalEditarProductoLabel">Editar Producto</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="formularioEditarProducto">
                    <input type="hidden" id="idProductoEditar" name="idProductoEditar">
                    
                    <div class="mb-3">
                        <label for="nombreEditar" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombreEditar" name="nombreEditar">
                    </div>
                    <div class="mb-3">
                        <label for="descripcionEditar" class="form-label">Descripción</label>
                        <textarea class="form-control" id="descripcionEditar" name="descripcionEditar"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="imagenEditar" class="form-label">Imagen URL</label>
                        <input type="text" class="form-control" id="imagenEditar" name="imagenEditar">
                    </div>
                    <div class="mb-3">
                        <label for="precioEditar" class="form-label">Precio</label>
                        <input type="text" class="form-control" id="precioEditar" name="precioEditar">
                    </div>
                    <div class="mb-3">
                        <label for="stockEditar" class="form-label">Stock</label>
                        <input type="text" class="form-control" id="stockEditar" name="stockEditar">
                    </div>
                    <div class="mb-3">
                        <label for="categoriaEditar" class="form-label">Categoría</label>
                        <select class="form-select" id="categoriaEditar" name="categoriaEditar">
                            <option value="Bebidas">Bebidas</option>
                            <option value="Hamburguesas">Hamburguesas</option>
                            <option value="Extras">Extras</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="editarProducto()">Guardar Cambios</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/gestionProductos.js"></script>
</body>
</html>
