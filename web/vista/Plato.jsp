<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="css/estilos.css">
        <title>Preview de Imagen</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
<body>

    <%@include file="layout/ReporteLayout.jsp" %>

<section class="section-1">
    <header class="Titu">Registrar Plato</header>
    <form action="#" class="form">
        <div>
            <img src="https://stonegatesl.com/wp-content/uploads/2021/01/avatar-300x300.jpg" alt="avatar"
                 id="img" />

            <label for="foto">Subir<input type="file" name="foto" id="foto" accept="image/*" /></label>
        </div>
        <div class="input-box">
            <label>Producto</label>
            <input type="text" placeholder="Producto" required />
        </div>

        <div class="input-box">
            <label>Codigo</label>
            <input type="text" placeholder="Codigo" required />
        </div>
        <div class="input-box">
            <label>Precio</label>
            <input type="text" placeholder="Precio" required />
        </div>
        <div class="Categoria-box">
            <h3>Categoria</h3>
            <div class="Categoria-option">
                <div class="Categoria">
                    <input type="radio" id="check-Hamburgesa" name="Categoria" checked />
                    <label for="check-Hamburgesa">Hamburgesa</label>
                </div>
                <div class="Categoria">
                    <input type="radio" id="check-Refresco" name="Categoria" />
                    <label for="check-Refresco">Refresco</label>
                </div>
                <div class="Categoria">
                    <input type="radio" id="check-other" name="Categoria" />
                    <label for="check-ofertas">addicionales</label>
                </div>
            </div>
        </div>
        <button>Submit</button>
    </form>
    <br>
    <table class="content-table">
        <thead>
            <tr>
                <th>Producto</th>
                <th>Codigo</th>
                <th>Precio</th>
                <th>Categoria</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Hamburgesa americana</td>
                <td>#123</td>
                <td>S/10</td>
                <td>Hamburgesa</td>
            </tr>
        <td>Alita</td>
        <td>#1154</td>
        <td>S/15</td>
        <td>addicionales</td>
        </tr>
        <tr>
            <td>Coca Cola</td>
            <td>#1</td>
            <td>S/12</td>
            <td>Refresco</td>
        </tr>
        </tbody>
    </table>
    <script src="js/script1.js"></script>
</section>

</div>
</body>
</html>

