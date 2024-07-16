<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pedido</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="UTF-8">
    <title>Reporte </title>
     
   
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/DiseñoEmpleado.css">
    <link rel="stylesheet" href="css/estiloPedido.css">
    <script src="js/app.js" async></script>
</head>
<body>
    <input type="checkbox" id="checkbox" />
    <header class="header">
      <h2 class="u-name">
        Burger <b>Eats</b>Empleado
      </h2>
      <i class="fa fa-user" aria-hidden="true"></i>
    </header>
    <div class="body">
        
      <%@include file="layout/TrabajadorLayout.jsp" %>
      
  <section class="contenedor">
        <!-- Contenedor de elementos -->
        <div class="contenedor-items">
            
            <div class="item">
                <span class="titulo-item">La Doble Tocino</span>
                <img src="images/La Doblex Tocino - Precio 12.30.png" alt="" class="img-item">
                <span class="precio-item">S/12.30</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">La Inclinada</span>
                <img src="images/La Inclinxda - Precio 16.99.png" alt="" class="img-item">
                <span class="precio-item">S/16.99</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">La Krixpi</span>
                <img src="images/La Krixpi - Precio 10.00.png" alt="" class="img-item">
                <span class="precio-item">S/10.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">La Patriota</span>
                <img src="images/La Patriota - Precio 14.63.png" alt="" class="img-item">
                <span class="precio-item">S/14.63</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">La Poderoza</span>
                <img src="images/La Poderoza - Precio 11.89.png" alt="" class="img-item">
                <span class="precio-item">S/11.89</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">La Quebradora</span>
                <img src="images/Le Clasique - Precio 13.85.png" alt="" class="img-item">
                <span class="precio-item">S/12.69</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Le Clasique</span>
                <img src="images/Le Clasique - Precio 13.85.png" alt="" class="img-item">
                <span class="precio-item">S/13.85</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">The Gourtmen</span>
                <img src="images/The Gourtmen - Precio 12.99.png" alt="" class="img-item">
                <span class="precio-item">S/12.99</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">The King Black</span>
                <img src="images/The king Black - Precio 22.90.png" alt="" class="img-item">
                <span class="precio-item">S/22.90</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>
            <div class="item">
                <span class="titulo-item">Papas Fritas Gigantes</span>
                <img src="images/Papas Fritas Grandes - Precio 6.00.png" alt="" class="img-item">
                <span class="precio-item">S/6.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Barquillonas</span>
                <img src="images/Barquillonas - Precio 9.00.png" alt="" class="img-item">
                <span class="precio-item">S/9.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Copas Gelocream</span>
                <img src="images/Copas GeloCr3am - Precio 15.00.png" alt="" class="img-item">
                <span class="precio-item">S/6.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Copix Crem</span>
                <img src="images/Copix Crem - Precio 5.00.png" alt="" class="img-item">
                <span class="precio-item">S/5.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Empanadas de Jamón y Queso</span>
                <img src="images/Empanadas de Jamon y Queso - Precio 4.00.png" alt="" class="img-item">
                <span class="precio-item">S/4.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Fresua</span>
                <img src="images/Fresua - Precio 6.00.png" alt="" class="img-item">
                <span class="precio-item">S/6.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">NGK Papas Chicas</span>
                <img src="images/NGK Papas Chicas - Precio 3.00.png" alt="" class="img-item">
                <span class="precio-item">S/3.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Nuggets 10 Unidades</span>
                <img src="images/Nuggets 10 Unidades - Precio 9.00.png" alt="" class="img-item">
                <span class="precio-item">S/9.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

            <div class="item">
                <span class="titulo-item">Nuggets Porción Grande</span>
                <img src="images/Nuggets Porcion Grande - Precio 18.00.png" alt="" class="img-item">
                <span class="precio-item">S/18.00</span>
                <button class="boton-item">Agregar al Carrito</button>
            </div>

        </div>
        <!-- Carrito de Compras -->
        <div class="carrito" id="carrito">
            <div class="header-carrito">
                <h2>Tu Carrito</h2>
            </div>

            <div class="carrito-items">
                <!-- 
                <div class="carrito-item">
                    <img src="img/boxengasse.png" width="80px" alt="">
                    <div class="carrito-item-detalles">
                        <span class="carrito-item-titulo">Box Engasse</span>
                        <div class="selector-cantidad">
                            <i class="fa-solid fa-minus restar-cantidad"></i>
                            <input type="text" value="1" class="carrito-item-cantidad" disabled>
                            <i class="fa-solid fa-plus sumar-cantidad"></i>
                        </div>
                        <span class="carrito-item-precio">$15.000,00</span>
                    </div>
                   <span class="btn-eliminar">
                        <i class="fa-solid fa-trash"></i>
                   </span>
                </div>
                <div class="carrito-item">
                    <img src="img/skinglam.png" width="80px" alt="">
                    <div class="carrito-item-detalles">
                        <span class="carrito-item-titulo">Skin Glam</span>
                        <div class="selector-cantidad">
                            <i class="fa-solid fa-minus restar-cantidad"></i>
                            <input type="text" value="3" class="carrito-item-cantidad" disabled>
                            <i class="fa-solid fa-plus sumar-cantidad"></i>
                        </div>
                        <span class="carrito-item-precio">$18.000,00</span>
                    </div>
                   <button class="btn-eliminar">
                        <i class="fa-solid fa-trash"></i>
                   </button>
                </div>
                 -->
            </div>
            <div class="carrito-total">
                <div class="fila">
                    <strong>Tu Total</strong>
                    <span class="carrito-precio-total">
                        S/1
                    </span>
                </div>
                <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i> </button>
            </div>
        </div>
    </section>
    
</body>
</html>