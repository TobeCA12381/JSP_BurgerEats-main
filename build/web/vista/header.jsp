<style>
    .btnPerfil {
        display: grid;
        place-items: center;
        background: #f3a833;
        padding: 1.4em;
        border-radius: 10px;
        box-shadow: 6px 6px 10px -1px rgba(0,0,0,0.15),
            -6px -6px 10px -1px rgba(255,255,255,0.7);
        border: 1px solid rgba(0,0,0,0);
        cursor: pointer;
        transition: transform 0.5s;
    }

    .btnPerfil:hover {
        box-shadow: inset 4px 4px 6px -1px rgba(0,0,0,0.2),
            inset -4px -4px 6px -1px rgba(255,255,255,0.7),
            -0.5px -0.5px 0px rgba(255,255,255,1),
            0.5px 0.5px 0px rgba(0,0,0,0.15),
            0px 12px 10px -10px rgba(0,0,0,0.05);
        border: 1px solid rgba(0,0,0,0.1);
        transform: translateY(0.5em);
    }

    .btnPerfil svg {
        transition: transform 0.5s;
    }

    .btnPerfil:hover svg {
        transform: scale(0.9);
        fill: #333333;
    }
    
       #opcionesContainer {
    display: none;
    position: absolute;
    background-color: #f3a833;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 10px;
    right: 10px; /* Alinea el contenedor a 10px del borde derecho */
    top: 69%; /* Ajusta la separación vertical al 150% del botón de perfil */
    transform: translateX(-100%); /* Ajusta para centrar verticalmente */
}


        /* Estilo para dar apariencia de botones a las opciones */
        .opcionBoton {
            display: block;
            margin: 5px 0;
            padding: 10px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

</style>

<header class="header">
    <a href="Menu" id="logoHamburguesa" class="ml-auto" > <img src="images/Logo.png" style="max-width: 200px;" ></a>
    <nav class="navbar navbar-expand-lg navbar-orange bg-orange" id="btnavbar">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-left hamburger" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                    aria-label="Toggle navigation">
                <label>
                    <input type="checkbox">
                        <svg viewBox="0 0 32 32">
                            <path class="line line-top-bottom"
                                  d="M27 10 13 10C10.8 10 9 8.2 9 6 9 3.5 10.8 2 13 2 15.2 2 17 3.8 17 6L17 26C17 28.2 18.8 30 21 30 23.2 30 25 28.2 25 26 25 23.8 23.2 22 21 22L7 22">
                            </path>
                            <path class="line" d="M7 16 27 16"></path>
                        </svg>
                </label>
            </button>


            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="Menu.jsp">Menu</a>
                    </li>
                    <li class="nav-item">
                        <a href="Nosotros.jsp">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a href="Contactanos.jsp">Contactanos</a>
                    </li>
                    <li class="nav-item">
                        <a href="ZonasDeReparto.jsp">Zonas de Reparto</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="container-icon">

        <div class="container-cart-icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-cart4"
                 viewBox="0 0 16 16">
                <path
                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
            </svg>
            <div class="count-products">
                <span id="contador-productos">0</span>
            </div>
        </div>

        <div class="container-cart-products hidden-cart">
            <div class="row-product hidden">
                <div class="cart-product" >
                    <div class="info-cart-product">
                    </div>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                         stroke="currentColor" class="icon-close">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </div>
            </div>

            <div class="cart-total hidden">
                <h3>Total:</h3>
                <span class="total-pagar"></span>
            </div>
            <p class="cart-empty">El carrito está vacío</p>

            <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i> </button>
        </div>
    </div>
    
  <button class="btnPerfil" onmouseover="mostrarOpciones()" onmouseout="ocultarOpciones()">
        <svg fill="#000000" width="30px" height="30px" viewBox="0 0 32 32" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <path d="M15.992 2c3.396 0 6.998 2.86 6.998 4.995v4.997c0 1.924-0.8 5.604-2.945 7.293-0.547 0.43-0.831 1.115-0.749 1.807 0.082 0.692 0.518 1.291 1.151 1.582l8.703 4.127c0.068 0.031 0.834 0.16 0.834 1.23l0.001 1.952-27.984 0.002v-2.029c0-0.795 0.596-1.045 0.835-1.154l8.782-4.145c0.63-0.289 1.065-0.885 1.149-1.573s-0.193-1.37-0.733-1.803c-2.078-1.668-3.046-5.335-3.046-7.287v-4.997c0.001-2.089 3.638-4.995 7.004-4.995zM15.992-0c-4.416 0-9.004 3.686-9.004 6.996v4.997c0 2.184 0.997 6.601 3.793 8.847l-8.783 4.145s-1.998 0.89-1.998 1.999v3.001c0 1.105 0.895 1.999 1.998 1.999h27.986c1.105 0 1.999-0.895 1.999-1.999v-3.001c0-1.175-1.999-1.999-1.999-1.999l-8.703-4.127c2.77-2.18 3.708-6.464 3.708-8.865v-4.997c0-3.31-4.582-6.995-8.998-6.995v0z"></path>
        </svg>
    </button>
    
    <!-- Contenedor de opciones -->
<div id="opcionesContainer" onmouseover="mostrarOpciones()" onmouseout="ocultarOpciones()">
    <!-- Opciones como botones -->
    <button  class="opcionBoton" onclick="accionOpcion1()">Historial</button>
    <button class="opcionBoton" onclick="accionOpcion2()">Cerrar Sesion</button>
 
</div>
    
</header>


<!-- Botón para mostrar opciones al desplazar el ratón -->
<button id="cerrarSesionBtn" onmouseover="mostrarOpciones()" onmouseout="ocultarOpciones()">Desplazar el Ratón para Seleccionar Opciones</button>



<script>
// Función para mostrar el contenedor de opciones
function mostrarOpciones() {
    // Obtener el contenedor de opciones por su ID
    var opcionesContainer = document.getElementById('opcionesContainer');

    // Cambiar el estilo para mostrar el contenedor
    opcionesContainer.style.display = 'block';
}

// Función para ocultar el contenedor de opciones
function ocultarOpciones() {
    // Obtener el contenedor de opciones por su ID
    var opcionesContainer = document.getElementById('opcionesContainer');

    // Cambiar el estilo para ocultar el contenedor
    opcionesContainer.style.display = 'none';
}

// Acciones para cada opción (sustituye estas funciones con tu lógica real)
function accionOpcion1() {
    
    window.location.href = "historial.jsp";
}

function accionOpcion2() {
    alert("Cerrando sesion");
    window.location.href = "/BurgetEatJSP/";
}

function accionOpcion3() {
    alert("Realizar acción para Opción 3");
}
</script>
