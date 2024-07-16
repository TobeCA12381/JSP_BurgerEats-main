<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tienda</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/styles.css" />
        <link rel="stylesheet" href="css/carrito.css" />

   </head>

<body>
    <%@include file="header.jsp" %>
           
        <br><br><br><br><br><br><br><br><br>

        <div class="container-form">
            <div class="info-form">
                <h2>Contáctanos</h2>
                <p>Como empresa buscamos darte la mejor experiencia, por eso si tienes opniones en las que nos ayuden a mejorar, te invitamos a comentarlas.</p>
                <b>¡En BurgerEats nos importas!</b>
                <br>
                <br>
                <a href="#"><i class="fa fa-phone"></i> 994-708-291</a>
                <a href="#"><i class="fa fa-envelope"></i> burgereats@hotmail.com</a>

            </div>
            <form action="#" autocomplete="off">
                <input type="text" name="nombre" placeholder="Nombre" class="campo">
                <input type="text" name="apellido" placeholder="Apellido" class="campo">
                <input type="text" name="Correo" placeholder="Correo Electronico" class="campo">
                <input type="text" name="direccion" placeholder="Direccion" class="campo">
                <input type="text" name="telefono" placeholder="Telefono" class="campo">
                <input type="text" name="asunto" placeholder="Asunto" class="campo">
                <textarea name="mensaje" placeholder="Tu Mensaje..."></textarea>
                <br>
                <br>
                Requerido
                <br>
                <br>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        Acepto haber leido los terminos y condiciones de BurgerEats.
                    </label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        Autorizo recibir promociones, ofertas y encuestas de BurgerEats a mi correo.
                    </label>
                </div>

                <br>    
                <input type="submit" name="enviar" value="Enviar Mensaje" class="btn-enviar">

            </form>
        </div>

        <br><br><br><br><br><br><br><br><br><br>
    
    <%@include file="footer.jsp" %>
    
</body>
<script src="js/loginz.js"></script>
<script src="js/carrito.js"></script>
</html>
