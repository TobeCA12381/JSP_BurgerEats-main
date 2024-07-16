document.addEventListener("DOMContentLoaded", function() {
    cargarProductos();
});

function cargarProductos() {
    fetch('http://localhost:8080/BurgetEatJSP/Producto_Controlador?accion=listar')
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            } else {
                return response.json();
            }
        })
        .then(data => mostrarProductos(data))
        .catch(e => console.log('Error: ' + e));
}

function mostrarProductos(productos) {
    const tabla = document.getElementById('tablaProductos');
    tabla.innerHTML = ''; 
    productos.forEach(producto => {
        const fila = `<tr>
            <td>${producto.idProducto}</td>
            <td>${producto.nombre}</td>
            <td>${producto.stock}</td>
            <td>${producto.categoria}</td>
            <td>${producto.precio}</td>
            <td>${producto.descripcion}</td>
            <td><img src="${producto.imagen}" alt="Imagen del producto" width="50"></td>
            <td>
                <button class="btn btn-primary btn-sm" onclick="abrirModalEdicion(${producto.idProducto})">Editar</button>
                <button class="btn btn-danger btn-sm" onclick="eliminarProducto(${producto.idProducto})">Eliminar</button>
            </td>
        </tr>`;
        tabla.innerHTML += fila;
    });
}

function agregarProducto() {
    const nombre = document.getElementById('nombre').value;
    const imagen = document.getElementById('imagen').value;
    const stock = document.getElementById('stock').value;
    const precio = document.getElementById('precio').value;
    const descripcion = document.getElementById('descripcion').value;
    const categoria = document.getElementById('categoria').value;

    const producto = {
        nombre,
        imagen, 
        stock,
        precio,
        descripcion,
        categoria
    };

    fetch('http://localhost:8080/BurgetEatJSP/Producto_Controlador', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(producto)
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

function abrirModalEdicion(idProducto) {
    obtenerProductoPorID(idProducto).then(producto => {
        document.getElementById('idProductoEditar').value = producto.idProducto;
        document.getElementById('nombreEditar').value = producto.nombre;
        document.getElementById('descripcionEditar').value = producto.descripcion;
        document.getElementById('imagenEditar').value = producto.imagen;
        document.getElementById('precioEditar').value = producto.precio;
        document.getElementById('stockEditar').value = producto.stock;
        document.getElementById('categoriaEditar').value = producto.categoria;

        $('#modalEditarProducto').modal('show');
    }).catch(error => {
        console.error('Error al obtener el producto:', error);
    });
}

function obtenerProductoPorID(idProducto) {
    return fetch(`http://localhost:8080/BurgetEatJSP/Producto_Controlador?accion=list&id=${idProducto}`)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Error al obtener el producto: ${response.statusText}`);
            }
            return response.json();
        });
}

function editarProducto() {
    const idProducto = document.getElementById('idProductoEditar').value;
    const nombre = document.getElementById('nombreEditar').value;
    const descripcion = document.getElementById('descripcionEditar').value;
    const imagen = document.getElementById('imagenEditar').value;
    const precio = document.getElementById('precioEditar').value;
    const stock = document.getElementById('stockEditar').value;
    const categoria = document.getElementById('categoriaEditar').value;

    const producto = {
        idProducto, 
        nombre,
        descripcion,
        imagen,
        precio, 
        stock, 
        categoria
    };

    fetch(`http://localhost:8080/BurgetEatJSP/Producto_Controlador?id=${idProducto}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(producto)
    })
    .then(response => {
        if (response.ok) {
            alert('Producto actualizado exitosamente');
            $('#modalEditarProducto').modal('hide');
            cargarProductos();
        } else {
            alert('Error al guardar los cambios del producto');
        }
    })
    .catch(error => console.error('Error:', error));
}

function eliminarProducto(id) {
    fetch(`http://localhost:8080/BurgetEatJSP/Producto_Controlador?id=${id}`, {
        method: 'DELETE'
    })
    .then(response => {
        if (response.ok) {
            alert('Producto eliminado exitosamente'); 
            cargarProductos(); 
        } else {
            alert('Error al eliminar el producto');
        }
    })
    .catch(error => console.error('Error:', error));
}
