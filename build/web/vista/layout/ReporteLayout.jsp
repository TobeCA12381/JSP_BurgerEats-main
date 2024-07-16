<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
    <link rel="stylesheet" href="css/ReporteLayout.css" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


  </head>
  <body>
    <input type="checkbox" id="checkbox" />
    <header class="header">
      <h2 class="u-name">
        Burger <b>Eats</b>
        <label for="checkbox"><i id="navbtn" class="fa fa-bars" aria-hidden="true"></i></label>
      </h2>
      <i class="fa fa-user" aria-hidden="true"></i>
    </header>
    <div class="body">
      <nav class="side-bar">
        <div class="user-p">
          <img src="images/ola.jpg" />
          <h4>Admin</h4>
        </div>
        <ul>
          <li>
            <a href="reporte.jsp">
              <i class="fa fa-desktop" aria-hidden="true"></i>
              <span>Dashboard</span>
            </a>
          </li>
          <li>
            <a href="Plato.jsp">
              <i class="fa fa-cutlery" aria-hidden="true"></i>
              <span>Agregar Platos</span>
            </a>
          </li>

          <li>
            <a href="AddUser.jsp">
              <i class="fa-solid fa-user"></i>
              <span>Gestion de usuarios</span>
            </a>
          </li>

          <li>
            <a href="Gestion-productos.jsp">
              <i class="fa-solid fa-user"></i>
              <span>Gestion productos</span>
            </a>
          </li>

          <li>
            <a href="Gestion-proveedores.jsp">
              <i class="fa-solid fa-user"></i>
              <span>Gestion Proveedores</span>
            </a>
          </li>

          <li>
            <a href="pedidos.jsp">
              <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
              <span>Pedidos</span>
            </a>
          </li>

          <li>
            <a href="calendario.jsp">
              <i class="fa fa-calendar" aria-hidden="true"></i>
              <span>Calendario</span>
            </a>
          </li>

          <li>
            <a href="Foro.jsp">
              <i class="fa fa-coffee" aria-hidden="true"></i>
              <span>Foro</span>
            </a>
          </li>

          <li>
            <a href="config.jsp">
              <i class="fa fa-cog" aria-hidden="true"></i>
              <span>Setting</span>
            </a>
          </li>

          <li>
            <a href="index.jsp">
              <i class="fa fa-power-off" aria-hidden="true"></i>
              <span>Logout</span>
            </a>
          </li>
        </ul>
      </nav>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>
</body>
</html>
