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
    <style>
      body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}

.historial-compras {
    max-width: 800px;
    margin: 20px auto;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

thead {
    background-color: #333;
    color: #fff;
}

th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tbody tr:hover {
    background-color: #f5f5f5;
}

/* Estilo específico para la primera columna (Cantidad) */
td:first-child {
    font-weight: bold;
}

/* Estilo para el footer */


    </style>

    <body>
        <%@include file="header.jsp" %>



        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


        <div class="historial-compras">
            <table>
                <thead>
                    <tr>
                        <th>Cantidad</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                  <tbody>
                <tr>
                    <td>2</td>
                    <td>Trio Los Clasicos</td>
                    <td>S/20.00</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Trio Patriotico</td>
                    <td>S/15.00</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>La Inclinada</td>
                    <td>S/30.00</td>
                </tr>
                
                  <tr>
                    <td>4</td>
                    <td>Coca Cola 500ML</td>
                    <td>S/30.00</td>
                </tr>
                
                  <tr>
                    <td>3</td>
                    <td>The King Black</td>
                    <td>S/30.00</td>
                </tr>
                <!-- Agrega más filas según sea necesario -->
            </tbody>
            </table>
        </div>


        <br><br><br><br><br><br><br><br><br><br>

        <%@include file="footer.jsp" %>

    </body>
    <script src="js/loginz.js"></script>
    <script src="js/carrito.js"></script>
</html>
