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


        <section id="home" class="home">
            <div class="image myimage">
                <img src="images/Logo.png" alt="">
            </div>
            <div class="content">
                <h3>Inicia Sesion</h3>

                <div class="col-auto">
                    <form action="autentica.jsp" method="post">
                        <h4><label> Correo electronico</label><br></h4>
                        <input type="text" id="inputCorreo" class="box" name="Correo">
                        <br>
                        <div class="col-auto">
                            <h4> <label>Contraseña</label></h5>
                        </div>
                        <div class="col-auto">
                            <input type="password" id="inputPassword" class="box" name="Password"
                                   aria-labelledby="passwordHelpInline">
                        </div>

                        <div class="col-auto">
                            <span id="passwordHelpInline" class="form-text">
                                Debes tener al menos 8-20 caracteres.
                            </span>
                        </div>
                </div>
                <a href="/BurgetEatJSP/" id="signUp"  class="btn2">Regresar</a>
                <input type="submit" value="enviar" class="btn2">
               
                </form>   
                <br><br>
                <a href="#">¿Olvidaste tu contraseña?</a>
            </div>
        </section>

        <%@include file="footer.jsp" %>

    </body>

    <script src="js/carrito.js"></script>
</html>
