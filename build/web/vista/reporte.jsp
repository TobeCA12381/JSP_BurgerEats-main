<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reporte Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
<body>

<%@include file="layout/ReporteLayout.jsp" %>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <section class="section-1">
                <div class="cuadros">
                    <h3 class="Titulo">Dashboard</h3>
                    <ul class="cuadros-menu">
                        <li>
                            <div class="texto">
                                <span class="text-spam">
                                    <h4>35</h4>
                                    <small>Administrador</small>
                                </span>
                                <img src="images/admin.png" class="icono-administrador">
                            </div>
                        </li>

                        <li>
                            <div class="texto">
                                <span class="text-spam">
                                    <h4>705</h4>
                                    <small class="cliente">Clientes</small>
                                </span>
                                <img src="images/cliente.png" class="icono-cliente">
                            </div>
                        </li>

                        <li>
                            <div class="texto">
                                <span class="text-spam">
                                    <h4>8</h4>
                                    <small>Proovedores</small>
                                </span>
                                <img src="images/camion.png" class="icono-proveedor">
                            </div>
                        </li>

                        <li>
                            <div class="texto">
                                <span class="text-spam">
                                    <h4>6</h4>
                                    <small>Categoria</small>
                                </span>
                                <img src="images/cafe.png" class="icono-categoria">
                            </div>

                        </li>

                        <li>
                            <div class="texto">
                                <span class="text-spam">
                                    <h4>15</h4>
                                    <small>Productos</small>
                                </span>
                                <img src="images/hamburguesa.png" class="icono-producto">
                            </div>
                        </li>

                        <li>
                            <div class="texto">
                                <span class="text-spam">
                                    <h4>18</h4>
                                    <small class="carrito">Carrito</small>
                                </span>
                                <img src="images/carrito1.png" class="icono-carrito">
                            </div>

                        </li>
                    </ul>
                </div>
                <title>Gráfico de estadísticas</title>
                <div class="ojito">
                    <div class="pedo">
                        <div class="tableta">
                            <table class="pedito">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">Redes Sociales</th>
                                        <th scope="col">Visitantes</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                            Tiktok
                                        </th>
                                        <td>
                                            903
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="mr-2">40%</span>
                                                <div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-danger" role="progressbar"
                                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: 60%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            Facebook
                                        </th>
                                        <td>
                                            2,304
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="mr-2">85%</span>
                                                <div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-success" role="progressbar"
                                                             aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: 70%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            Google
                                        </th>
                                        <td>
                                            1,503
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="mr-2">70%</span>
                                                <div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-primary" role="progressbar"
                                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: 80%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            Instagram
                                        </th>
                                        <td>
                                            1,920
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="mr-2">75%</span>
                                                <div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-info" role="progressbar"
                                                             aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: 75%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            Twitter
                                        </th>
                                        <td>
                                            654
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="mr-2">30%</span>
                                                <div>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-gradient-warning" role="progressbar"
                                                             aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: 30%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
</div>
</div>
</body>
</html>
