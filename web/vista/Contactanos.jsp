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
            <p>Como empresa buscamos darte la mejor experiencia, por eso si tienes opiniones en las que nos ayuden a mejorar, te invitamos a comentarlas.</p>
            <b>¡En BurgerEats nos importas!</b>
            <br>
            <br>
            <a href="#"><i class="fa fa-phone"></i> 994-708-291</a>
            <a href="#"><i class="fa fa-envelope"></i> burgereats@hotmail.com</a>
        </div>
        <div class="container-form">
        <form id="contactForm" autocomplete="off">
            <input type="text" name="nombre" placeholder="Nombre" class="campo" required>
            <input type="text" name="apellido" placeholder="Apellido" class="campo" required>
            <input type="email" name="correoElectronico" placeholder="Correo Electronico" class="campo" required>
            <input type="text" name="direccion" placeholder="Direccion" class="campo" required>
            <input type="text" name="telefono" placeholder="Telefono" class="campo" required>
            <input type="text" name="asunto" placeholder="Asunto" class="campo" required>
            <textarea name="mensaje" placeholder="Tu Mensaje..." required></textarea>
            <br><br>
            <br>
            <button type="button" onclick="submitForm()" class="btn-enviar">Enviar Mensaje</button>
        </form>
    </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="autorizaPromociones" id="flexCheckPromociones">
                <label class="form-check-label" for="flexCheckPromociones">
                    Autorizo recibir promociones, ofertas y encuestas de BurgerEats a mi correo.
                </label>
            </div>

            <br>
            <button type="button" onclick="submitForm()" class="btn-enviar">Enviar Mensaje</button>
        </form>
    </div>

    <br><br><br><br><br><br><br><br><br><br>

    <%@include file="footer.jsp" %>
</body>
<script>
function submitForm() {
    var form = document.getElementById('contactForm');
    var formData = new FormData(form);
    var jsonData = {};
    formData.forEach(function(value, key){
        jsonData[key] = value;
    });

    fetch('http://localhost:8080/BurgetEatJSP/FormularioContactoControlador', { // URL actualizada
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(jsonData)
    })
    .then(response => {
        if (!response.ok) {
            alert('Error');
            throw new Error(`HTTP error! status: ${response.status}`);
        } else {
        alert('Mensaje Enviado Correctamente');
        return response.json();
            
        }
    })
    .then(data => {
        console.log('Success:', data);
    })
    .catch(e => {
        console.log('Error: ' + e);
    });
}

</script>

<script src="js/loginz.js"></script>
<script src="js/carrito.js"></script>

</html>
