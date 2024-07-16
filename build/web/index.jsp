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

        <link rel="stylesheet" href="vista/css/style.css" />
        <link rel="stylesheet" href="vista/css/styles.css" />
        <link rel="stylesheet" href="vista/css/carrito.css" />

    </head>

    <body>

      
          <section id="home" class="home">

            <div class="image myimage">
                <img src="vista/images/Logo.png" alt="">
            </div>

            <div class="content">
                <h3>¿Todavía no adquieres una cuenta?</h3>
                <br><br><br>
            
                <a href="vista/Inicio.jsp" id="signUp"  class="btn">Inicia Sesion</a>
                <a href="vista/Registro.jsp" id="register" class="btn">Registrate</a>
            </div>



        </section>

        <%@include file="vista/footer.jsp" %>

    </body>

    <script src="vista/js/carrito.js"></script>
    <script src="vista/js/hamburguesa.js"></script>
</html>
