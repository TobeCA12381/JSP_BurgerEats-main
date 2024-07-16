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

    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/carrito.css" />
</head>

<body>
    <section id="home" class="home">
        <div class="image myimage">
            <img src="images/Logo.png" alt="">
        </div>

        <div class="content">
            <h3>Registrarse</h3>
            
            <form action="/BurgetEatJSP/Usuario_Controlador" method="post" class="row g-3">
                <section>
                    <h5><label>Nombre</label><br></h5>
                    <input class="controls" type="text" name="nom" id="imputnom">
                    <h5><label>Apellido</label><br></h5>
                    <input class="controls" type="text" name="ape" id="imputape">
                    <h5><label>DNI</label><br></h5>
                    <input class="controls" type="text" name="dni" id="imputdni">
                    <h5><label>Dirección</label><br></h5>
                    <input class="controls" type="text" name="dir" id="imputdir">
                    <h5><label>Correo Electrónico</label><br></h5>
                    <input class="controls" type="email" name="email" id="imputnomemail">
                    <h5><label>Número Telefónico</label><br></h5>
                    <input class="controls" type="tel" name="cel" id="imputtel">
                    <h5><label>Contraseña</label><br></h5>
                    <input class="controls" type="password" name="pass" id="imputpass">
                    <input type="hidden" name="tipo" value="cliente">
                    <span id="content" class="form-text"><br>
                        Debes tener al menos 8-20 caracteres.
                    </span>
                    <div class="buttons">
                        <a href="/BurgetEatJSP" class="btn">Cancelar</a>
                        <button type="submit" name="accion"  value="Agregar" class="btn btn-primary">Registrar</button>
                    </div>
                </section>
            </form>
        </div>
    </section>
        
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