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

        

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



        <div id="map">

            <iframe
                src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d88291.10753821665!2d-76.99850823245689!3d-12.046785566877537!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sBembos!5e0!3m2!1ses-419!2spe!4v1685124840789!5m2!1ses-419!2spe"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>

        <br><br><br><br><br><br><br><br><br><br>

        <%@include file="footer.jsp" %>

    </body>
    <script src="js/loginz.js"></script>
    <script src="js/carrito.js"></script>
</html>
