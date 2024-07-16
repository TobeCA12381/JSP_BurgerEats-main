<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/Foro.css">
    <title>Foro de Contacto</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<%@include file="layout/ReporteLayout.jsp" %>

<section class="section-1">
    <div id="topic-container">
        <h2>Comentarios de clientes en Contactanos</h2>
        <div class="table-responsive">
            <table class="table table-bordered" id="tabla-comentarios">
                <thead class="thead-light">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Correo Electrónico</th>
                        <th>Dirección</th>
                        <th>Teléfono</th>
                        <th>Asunto</th>
                        <th>Mensaje</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody>
   
                </tbody>
            </table>
        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    cargarComentarios();
});

function cargarComentarios() {
    fetch('http://localhost:8080/BurgetEatJSP/FormularioContactoControlador?accion=listar')
        .then(response => response.json())
        .then(comentarios => {
            const tablaBody = document.querySelector('#tabla-comentarios tbody');
            tablaBody.innerHTML = ''; 
            comentarios.forEach(comentario => {
                const fila = tablaBody.insertRow();
                fila.insertCell().textContent = comentario.nombre;
                fila.insertCell().textContent = comentario.apellido;
                fila.insertCell().textContent = comentario.correoElectronico;
                fila.insertCell().textContent = comentario.direccion;
                fila.insertCell().textContent = comentario.telefono;
                fila.insertCell().textContent = comentario.asunto;
                fila.insertCell().textContent = comentario.mensaje;
                const celdaEliminar = fila.insertCell();
                const botonEliminar = document.createElement('button');
                botonEliminar.textContent = 'Eliminar';
                botonEliminar.className = 'btn btn-danger';
                botonEliminar.onclick = function() { eliminarComentario(comentario.id); };
                celdaEliminar.appendChild(botonEliminar);
            });
        })
        .catch(error => console.error('Error al cargar los comentarios:', error));
}

function eliminarComentario(idComentario) {
    fetch('http://localhost:8080/BurgetEatJSP/FormularioContactoControlador?accion=eliminar&id=' + idComentario, {
        method: 'DELETE'
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Error al eliminar el comentario');
        }
        cargarComentarios();
    })
    .catch(error => console.error('Error al eliminar el comentario:', error));
    alert('eliminado correctamente')
}
</script>

</body>
</html>
