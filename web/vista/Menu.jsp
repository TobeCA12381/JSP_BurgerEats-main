<!DOCTYPE html>
<html lang="e">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/carrito.css" />
</head>

<body>
    <%@include file="header.jsp" %>

    <br><br><br><br><br><br><br><br><br><br><br><br>

    <section class="Bloque" id="aea">

        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/carrusel1.png" class="d-block w-100 img-fluid" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/carrusel2.png" class="d-block w-100 img-fluid" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/carrusel3.png" class="d-block w-100 img-fluid" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/carrusel4.png" class="d-block w-100 img-fluid" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

    </section>


    <br><br><br><br><br><br><br>
    <div class="container-items">
        <section class="Bloque" id="aea">

            <h1 class="heading"> PROMOCIONES </h1><br><br>

            <div class="box-container">

                <div class="box">
                    <span class="price"> s/24.30 </span>
                    <img src="images/PROMOCION 1.png" class="img-fluid" alt="">
                    <h3>Trio Patriotico</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/21.99 </span>
                    <img src="images/PROMOCION 2.png" class="img-fluid" alt="">
                    <h3>Trio Los Clasicos</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/23.50</span>
                    <img src="images/PROMOCION 3.png" class="img-fluid" alt="">
                    <h3>Trio Inclinacion</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>
            </div>

        </section>

        <br><br><br><br><br><br><br>

        <section class="Bloque" id="aea">

            <h1 class="heading"> HAMBURGUESAS </h1><br><br>

            <div class="box-container">

                <div class="box">
                    <span class="price"> s/12.30 </span>
                    <img src="images/La Doblex Tocino - Precio 12.30.png" class="img-fluid" alt="">
                    <h3>La Doble Tocino</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/16.99 </span>
                    <img src="images/La Inclinxda - Precio 16.99.png" class="img-fluid" alt="">
                    <h3>La Inclinada</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/10.00</span>
                    <img src="images/La Krixpi - Precio 10.00.png" class="img-fluid" alt="">
                    <h3>La Krixpi</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/14.63 </span>
                    <img src="images/La Patriota - Precio 14.63.png" class="img-fluid" alt="">
                    <h3>La Patriota</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/11.89 </span>
                    <img src="images/La Poderoza - Precio 11.89.png" class="img-fluid" alt="">
                    <h3>La Poderoza</h3>
                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/12.69</span>
                    <img src="images/La Quebradora - Precio 12.69.png" class="img-fluid" alt="">
                    <h3>La Quebradora</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/13.85</span>
                    <img src="images/Le Clasique - Precio 13.85.png" class="img-fluid" alt="">
                    <h3>Le Clasique</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/12.99</span>
                    <img src="images/The Gourtmen - Precio 12.99.png" class="img-fluid" alt="">
                    <h3>The Gourtmen</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/22.90</span>
                    <img src="images/The king Black - Precio 22.90.png" class="img-fluid" alt="">
                    <h3>The King Black</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>
            </div>

        </section>

        <br><br><br><br><br><br><br>

        <section class="Bloque" id="aea">

            <h1 class="heading"> REFRESCOS </h1><br><br>

            <div class="box-container">

                <div class="box">
                    <span class="price"> s/2.50 </span>
                    <img src="images/CIELO SIN GAS 520 ML - Precio 2.50.png" class="img-fluid" alt="">
                    <h3> Cielo Sin Gas 520ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.20</span>
                    <img src="images/COCA COLA 500 ML - Precio 3.20.png" class="img-fluid" alt="">
                    <h3>Coca Cola 500ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.50</span>
                    <img src="images/COCA COLA SIN AZUCAR 500 ML - Precio 3.50.png" class="img-fluid" alt="">
                    <h3>Coca Cola Sin Azucar 500ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.20 </span>
                    <img src="images/FANTA 500 ML - Precio 3.20.png"class="img-fluid" alt="">
                    <h3>Fanta Naranja 500ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.50 </span>
                    <img src="images/FANTA PIÑA 500 ML - Precio 3.50.png" class="img-fluid" alt="">
                    <h3>Fanta Piña 500ML</h3>
                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.20</span>
                    <img src="images/INKA KOLA 500 ML - Precio 3.20.png" class="img-fluid" alt="">
                    <h3>Inka Kola 500ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.50</span>
                    <img src="images/INKA KOLA SIN AZUCAR 500 ML - Precio 3.50.png" class="img-fluid" alt="">
                    <h3>Inka Kola Sin Azucar 500ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/2.00</span>
                    <img src="images/LOA AGUA DE MEZA 540 ML - Precio 2.00.png" class="img-fluid" alt="">
                    <h3>LOA Agua de Mesa 540ML </h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/2.40</span>
                    <img src="images/SAN LUIS SIN GAS 625 ML - PRECIO 2.40.png" class="img-fluid" alt="">
                    <h3>San Luis Sin Gas 625ML</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>
            </div>

        </section>

        <br><br><br><br><br><br><br>

        <section class="Bloque" id="aea">

            <h1 class="heading"> ADICIONALES </h1><br><br>

            <div class="box-container">

                <div class="box">
                    <span class="price"> s/9.00 </span>
                    <img src="images/Barquillonas - Precio 9.00.png" class="img-fluid" alt="">
                    <h3>Barquillonas </h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/15.00 </span>
                    <img src="images/Copas GeloCr3am - Precio 15.00.png" class="img-fluid" alt="">
                    <h3>Copas Gelocream</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/5.00</span>
                    <img src="images/Copix Crem - Precio 5.00.png"  class="img-fluid" alt="">
                    <h3>Copix Crem</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/4.00 </span>
                    <img src="images/Empanadas de Jamon y Queso - Precio 4.00.png" class="img-fluid" alt="">
                    <h3>Empanadas de Jamon y Queso</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/6.00 </span>
                    <img src="images/Fresua - Precio 6.00.png" class="img-fluid" alt="">
                    <h3>Fresua</h3>
                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/3.00</span>
                    <img src="images/NGK Papas Chicas - Precio 3.00.png" class="img-fluid" alt="">
                    <h3>NGK Papas Chicas</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/9.00</span>
                    <img src="images/Nuggets 10 Unidades - Precio 9.00.png" class="img-fluid" alt="">
                    <h3>Nuggets 10 Unidades</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/18.00</span>
                    <img src="images/Nuggets Porcion Grande - Precio 18.00.png" class="img-fluid" alt="">
                    <h3>Nuggets Porcion Grande</h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>

                <div class="box">
                    <span class="price"> s/6.00</span>
                    <img src="images/Papas Fritas Grandes - Precio 6.00.png" class="img-fluid" alt="">
                    <h3>Papas Fritas Grandes </h3>

                    <a class="btnAñadirCarrito">Añadir al carrito</a>
                </div>
            </div>

        </section>
    </div>
    <br><br><br><br><br><br><br><br><br><br>

    <footer class="footer">

        <div class="share">
            <a class="btnAñadirCarrito">Facebook</a>
            <a class="btnAñadirCarrito">Twitter</a>
            <a class="btnAñadirCarrito">Instagram</a>
        </div>
    </footer>
    <script src="js/carrito.js"></script>
</body>

</html>