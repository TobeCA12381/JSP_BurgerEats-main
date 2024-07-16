<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="css/Foro.css">
        <title>Foro Animalista</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
<body>

    <%@include file="layout/ReporteLayout.jsp" %>

<section class="section-1">
    <div id="topic-container">
        <h2>Comentarios de clientes en Contactanos</h2>

        <div class="comment">
            <div class="comment-header">
                <img class="avatar" src="images/gabriel.jpeg" alt="Avatar">
                <div class="comment-info">
                    <h4 class="comment-author">Gabriel Enrique Lozano Rosales</h4>
                    <span class="comment-date">Junio 22, 2023</span>
                </div>
            </div>
            <p class="comment-text">¡Me encantan el mecanismo que tienen como empresa!, ¡El delivery excelente ya que su
                sistema para colocar mi ubiacion funciona perfectamente!</p>
            <div class="comment-reply">
                <div class="comment-header">
                    <img class="avatar" src="images/burgereats.png" alt="Avatar">
                    <div class="comment-info">
                        <h4 class="comment-author">BurgerEats</h4>
                        <span class="comment-date">Junio 23, 2023</span>
                    </div>
                </div>
                <p class="comment-text">¡Muchas gracias por tus buenos comentarios sobrin@!, Seguiremos mejorando para darte
                    el mejor servicio.</p>
            </div>
        </div>
        <div class="comment">
            <div class="comment-header">
                <img class="avatar" src="images/jara.jpeg" alt="Avatar">
                <div class="comment-info">
                    <h4 class="comment-author">Roger Jaramillo Rivas</h4>
                    <span class="comment-date">Junio 15, 2023</span>
                </div>
            </div>
            <p class="comment-text">Tuve unos problemas al momento de realizar mi compra con visa, por ello me contacto
                con ustedes, espero resuelvan ese error.</p>
            <div class="comment-reply">
                <div class="comment-header">
                    <img class="avatar" src="images/burgereats.png" alt="Avatar">
                    <div class="comment-info">
                        <h4 class="comment-author">BurgerEats</h4>
                        <span class="comment-date">Junio 16, 2023</span>
                    </div>
                </div>
                <p class="comment-text">Gracias por contactarte con nosotros, se contacto con Niubiz y el error se corrigio,
                    perdón por el incoveniente.</p>
            </div>
        </div>
        <div class="comment">
            <div class="comment-header">
                <img class="avatar" src="images/angelo.jpeg" alt="Avatar">
                <div class="comment-info">
                    <h4 class="comment-author">Angelo Oro Anticona</h4>
                    <span class="comment-date">Junio 10, 2023</span>
                </div>
            </div>
            <p class="comment-text">Hola, encontre un problemas mientras colocaba la ubiacion de mi domicilio no se podia
                guardar, pero intente varias veces y al final se pudo, espero puedan solucinar ese pequeño defecto, en
                cuanto al resto todo ok, muy rica la comida :)</p>
            <div class="comment-reply">
                <div class="comment-header">
                    <img class="avatar" src="images/burgereats.png" alt="Avatar">
                    <div class="comment-info">
                        <h4 class="comment-author">BurgerEats</h4>
                        <span class="comment-date">Junio 11, 2023</span>
                    </div>
                </div>
                <p class="comment-text">Gracias por contactarte con nosotros, pudimos resolver el error que nos indicastes,
                    de igual manera muchas gracias por seguir confiando en nosotros :D</p>
            </div>
        </div>



    </div>

    <footer>
        &copy; 2023 Foro BurgerEats. Todos los derechos reservados.
    </footer>
</section>
</div>
</body>
</html>

