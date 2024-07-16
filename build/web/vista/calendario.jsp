<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="css/calendario.css">
        <title>Preview de Imagen</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
<body>
    
<%@include file="layout/ReporteLayout.jsp" %>

<section class="section-1">
    <div class="container">
        <h1>CalenBurgerEats</h1>

        <div class="calendar">
            <div class="event-list">
                <h3>Actividades o Pedidos</h3>
                <ul id="event-list"></ul>
            </div>

            <div class="date-picker">
                <h4>Calendario</h4>
                <input type="date" id="event-date">
                <input type="text" id="event-name" placeholder="Nombre del Evento">
                <button id="add-event">Agregar</button>
            </div>
        </div>
    </div>

    <script src="js/calendario.js"></script>

</section>

</div>
</body>
</html>




