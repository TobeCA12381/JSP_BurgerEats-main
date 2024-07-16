<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Burger Eats</title>
        <link rel="stylesheet" href="css/stylepedido.css">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
<body>

    <%@include file="layout/ReporteLayout.jsp" %>

<section class="section-1">
    <!-- for header part -->
    <header>
        <div class="report-container">
            <div class="report-header">
                <h1 class="recent-Articles">Gestión de Pedidos</h1>
                <button class="view">Descargar</button>
                <button class="view">Excel</button>
                <button class="view">Eliminar</button>

            </div>

            <div class="report-body">
                <div class="report-topic-heading">
                    <h3 class="t-op">Codigo de Pedido</h3>
                    <h3 class="t-op">Cliente</h3>
                    <h3 class="t-op">Monto</h3>
                    <h3 class="t-op">Estado</h3>
                </div>

                <div class="items">
                    <div class="item1">
                        <h3 class="t-op-nextlvl">1</h3>
                        <h3 class="t-op-nextlvl">Carlos</h3>
                        <h3 class="t-op-nextlvl">s/210</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">2</h3>
                        <h3 class="t-op-nextlvl">Juan</h3>
                        <h3 class="t-op-nextlvl">s/360</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">3</h3>
                        <h3 class="t-op-nextlvl">Diego</h3>
                        <h3 class="t-op-nextlvl">s/150</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">4</h3>
                        <h3 class="t-op-nextlvl">Luis</h3>
                        <h3 class="t-op-nextlvl">s/420</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">5</h3>
                        <h3 class="t-op-nextlvl">Ivan</h3>
                        <h3 class="t-op-nextlvl">s/190</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">6</h3>
                        <h3 class="t-op-nextlvl">Angel</h3>
                        <h3 class="t-op-nextlvl">s/390</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">7</h3>
                        <h3 class="t-op-nextlvl">Gabriel</h3>
                        <h3 class="t-op-nextlvl">s/580</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">8</h3>
                        <h3 class="t-op-nextlvl">Jaramillo</h3>
                        <h3 class="t-op-nextlvl">s/160</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">9</h3>
                        <h3 class="t-op-nextlvl">Max</h3>
                        <h3 class="t-op-nextlvl">s/220</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>


                    <div class="item1">
                        <h3 class="t-op-nextlvl">10</h3>
                        <h3 class="t-op-nextlvl">Carlos</h3>
                        <h3 class="t-op-nextlvl">s/210</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">11</h3>
                        <h3 class="t-op-nextlvl">Juan</h3>
                        <h3 class="t-op-nextlvl">s/360</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">12</h3>
                        <h3 class="t-op-nextlvl">Diego</h3>
                        <h3 class="t-op-nextlvl">s/150</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">13</h3>
                        <h3 class="t-op-nextlvl">Luis</h3>
                        <h3 class="t-op-nextlvl">s/420</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">14</h3>
                        <h3 class="t-op-nextlvl">Ivan</h3>
                        <h3 class="t-op-nextlvl">s/190</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">15</h3>
                        <h3 class="t-op-nextlvl">Angel</h3>
                        <h3 class="t-op-nextlvl">s/390</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">16</h3>
                        <h3 class="t-op-nextlvl">Gabriel</h3>
                        <h3 class="t-op-nextlvl">s/580</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">17</h3>
                        <h3 class="t-op-nextlvl">Jaramillo</h3>
                        <h3 class="t-op-nextlvl">s/160</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                    <div class="item1">
                        <h3 class="t-op-nextlvl">18</h3>
                        <h3 class="t-op-nextlvl">Max</h3>
                        <h3 class="t-op-nextlvl">s/220</h3>
                        <h3 class="t-op-nextlvl label-tag">Published</h3>
                    </div>

                </div>
            </div>
        </div>
</section>	

</div>
</body>
</html>

