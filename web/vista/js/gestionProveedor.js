document.addEventListener("DOMContentLoaded", function() {
    cargarProveedores();
});

function cargarProveedores() {
    fetch('http://localhost:8080/BurgetEatJSP/ProveedorControlador?accion=listar')
        .then(response => response.json())
        .then(data => mostrarProveedores(data))
        .catch(error => console.error('Error:', error));
}

function mostrarProveedores(proveedores) {
    const tabla = document.getElementById('tablaProveedores');
    tabla.innerHTML = '';
    proveedores.forEach(proveedor => {
        const fila = `<tr>
            <td>${proveedor.idProveedor}</td>
            <td>${proveedor.nombre}</td>
            <td>${proveedor.razonSocial}</td>
            <td>${proveedor.RUC}</td>
            <td>${proveedor.telefono}</td>
            <td>${proveedor.direccion}</td>
            <td>
                <button class="btn btn-primary btn-sm" onclick="abrirModalEdicion(${proveedor.idProveedor})">Editar</button>
                <button class="btn btn-danger btn-sm" onclick="eliminarProveedor(${proveedor.idProveedor})">Eliminar</button>
            </td>
        </tr>`;
        tabla.innerHTML += fila;
    });
}

function agregarProveedor() {
    const proveedor = {
        nombre: document.getElementById('nombreProveedor').value,
        razonSocial: document.getElementById('razonSocialProveedor').value,
        RUC: document.getElementById('rucProveedor').value,
        telefono: document.getElementById('telefonoProveedor').value,
        direccion: document.getElementById('direccionProveedor').value,
    };

    fetch('http://localhost:8080/BurgetEatJSP/ProveedorControlador', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(proveedor)
    })
    .then(response => {
        if (response.ok) {
            alert('Producto agregado exitosamente');
            location.reload();
        } else {
            alert('Error al agregar el producto');
        }
    })
    .catch(error => console.error('Error:', error));
}

function abrirModalEdicion(idProveedor) {
    fetch(`http://localhost:8080/BurgetEatJSP/ProveedorControlador?accion=list&id=${idProveedor}`)
        .then(response => response.json())
        .then(proveedor => {
            document.getElementById('idProveedorEditar').value = proveedor.idProveedor;
            document.getElementById('nombreProveedorEditar').value = proveedor.nombre;
            document.getElementById('razonSocialProveedorEditar').value = proveedor.razonSocial;
            document.getElementById('rucProveedorEditar').value = proveedor.RUC;
            document.getElementById('telefonoProveedorEditar').value = proveedor.telefono;
            document.getElementById('direccionProveedorEditar').value = proveedor.direccion;
            $('#modalEditarProveedor').modal('show');
        })
        .catch(error => console.error('Error:', error));
}

function editarProveedor() {
    const proveedor = {
        idProveedor: document.getElementById('idProveedorEditar').value,
        nombre: document.getElementById('nombreProveedorEditar').value,
        razonSocial: document.getElementById('razonSocialProveedorEditar').value,
        RUC: document.getElementById('rucProveedorEditar').value,
        telefono: document.getElementById('telefonoProveedorEditar').value,
        direccion: document.getElementById('direccionProveedorEditar').value,
    };

    fetch(`http://localhost:8080/BurgetEatJSP/ProveedorControlador`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(proveedor)
    })
    .then(response => response.json())
    .then(data => {
        alert('Proveedor actualizado exitosamente');
        $('#modalEditarProveedor').modal('hide');
        cargarProveedores();
    })
    .catch(error => console.error('Error:', error));
}

function eliminarProveedor(id) {
    if (confirm('¿Estás seguro de que quieres eliminar este proveedor?')) {
        fetch(`http://localhost:8080/BurgetEatJSP/ProveedorControlador?id=${id}`, {
            method: 'DELETE'
        })
        .then(response => response.json())
        .then(data => {
            alert('Proveedor eliminado exitosamente');
            cargarProveedores();
        })
        .catch(error => console.error('Error:', error));
    }
}
