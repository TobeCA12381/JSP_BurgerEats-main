<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="UTF-8">
    <title>Reporte </title>
     

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/boostrap/4.4.1/css./bootstrap.min.css"
integritys=" sha384-Vko08x4CGs03+Hhxv8T/QSPaXtkKtu6ug5TOeNV6gBiFeWPGFNOMuhOf23091fjh" crossorigin="anonymous"
link href="https://unpkg.com/ionicons@s.5.10-@/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="css/DiseñoEmpleado.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"/>
    <link rel="stylesheet" href="css/dataTables.bootstrap5.min.css" />
    <link rel="stylesheet" href="css/argon.css" />
        <!-- Custom styles for this template-->
    
</head>

<body>
    <input type="checkbox" id="checkbox" />
    <header class="header">
      <h2 class="u-name">
        Burger <b>Eats</b>
    
      </h2>
      <i class="fa fa-user" aria-hidden="true"></i>
    </header>
    <div class="body">
        
      <%@include file="layout/TrabajadorLayout.jsp" %>
      
      <main class="mt-5 pt-3">
        <div class="rowwwww">
          <div class="row">
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Traffic</h5>
                      <span class="h2 font-weight-bold mb-0">350,897</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                        <i class="fas fa-chart-bar"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">New users</h5>
                      <span class="h2 font-weight-bold mb-0">2,356</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fas fa-chart-pie"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
                    <span class="text-nowrap">Since last week</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
                      <span class="h2 font-weight-bold mb-0">924</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                        <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                    <span class="text-nowrap">Since yesterday</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Performance</h5>
                      <span class="h2 font-weight-bold mb-0">49,65%</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                        <i class="fas fa-percent"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>

<br>
          <div class="row">
            <div class="col-md-6 mb-3">
              <div class="card h-100">
                <div class="card-header">
                  <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                  Area Chart Example
                </div>
                <div class="card-body">
                  <canvas class="chart" width="400" height="200"></canvas>
                </div>
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <div class="card h-100">
                <div class="card-header">
                  <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                  Area Chart Example
                </div>
                <div class="card-body">
                  <canvas class="chart" width="400" height="200"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="row mt-5">
            <div class="col-xl-8 mb-5 mb-xl-0">
              <div class="card shadow">
                <div class="card-header border-0">
                  <div class="row align-items-center">
                    <div class="col">
                      <h3 class="mb-0">Page visits</h3>
                    </div>
                    <div class="col text-right">
                      <a href="#!" class="btn btn-sm btn-primary">See all</a>
                    </div>
                  </div>
                </div>
                <div class="table-responsive">
                  <!-- Projects table -->
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th scope="col">Page name</th>
                        <th scope="col">Visitors</th>
                        <th scope="col">Unique users</th>
                        <th scope="col">Bounce rate</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">
                          /argon/
                        </th>
                        <td>
                          4,569
                        </td>
                        <td>
                          340
                        </td>
                        <td>
                          <i class="fas fa-arrow-up text-success mr-3"></i> 46,53%
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                          /argon/index.html
                        </th>
                        <td>
                          3,985
                        </td>
                        <td>
                          319
                        </td>
                        <td>
                          <i class="fas fa-arrow-down text-warning mr-3"></i> 46,53%
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                          /argon/charts.html
                        </th>
                        <td>
                          3,513
                        </td>
                        <td>
                          294
                        </td>
                        <td>
                          <i class="fas fa-arrow-down text-warning mr-3"></i> 36,49%
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                          /argon/tables.html
                        </th>
                        <td>
                          2,050
                        </td>
                        <td>
                          147
                        </td>
                        <td>
                          <i class="fas fa-arrow-up text-success mr-3"></i> 50,87%
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                          /argon/profile.html
                        </th>
                        <td>
                          1,795
                        </td>
                        <td>
                          190
                        </td>
                        <td>
                          <i class="fas fa-arrow-down text-danger mr-3"></i> 46,53%
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-xl-4">
              <div class="card shadow">
                <div class="card-header border-0">
                  <div class="row align-items-center">
                    <div class="col">
                      <h3 class="mb-0">Social traffic</h3>
                    </div>
                    <div class="col text-right">
                      <a href="#!" class="btn btn-sm btn-primary">See all</a>
                    </div>
                  </div>
                </div>
                <div class="table-responsive">
                  <!-- Projects table -->
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th scope="col">Referral</th>
                        <th scope="col">Visitors</th>
                        <th scope="col"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">
                          Facebook
                        </th>
                        <td>
                          1,480
                        </td>
                        <td>
                          <div class="d-flex align-items-center">
                            <span class="mr-2">60%</span>
                            <div>
                              <div class="progress">
                                <div class="progress-bar bg-gradient-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
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
                          5,480
                        </td>
                        <td>
                          <div class="d-flex align-items-center">
                            <span class="mr-2">70%</span>
                            <div>
                              <div class="progress">
                                <div class="progress-bar bg-gradient-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;"></div>
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
                          4,807
                        </td>
                        <td>
                          <div class="d-flex align-items-center">
                            <span class="mr-2">80%</span>
                            <div>
                              <div class="progress">
                                <div class="progress-bar bg-gradient-primary" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
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
                          3,678
                        </td>
                        <td>
                          <div class="d-flex align-items-center">
                            <span class="mr-2">75%</span>
                            <div>
                              <div class="progress">
                                <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;"></div>
                              </div>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                          twitter
                        </th>
                        <td>
                          2,645
                        </td>
                        <td>
                          <div class="d-flex align-items-center">
                            <span class="mr-2">30%</span>
                            <div>
                              <div class="progress">
                                <div class="progress-bar bg-gradient-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
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
          </div>
          <br>
          <br>

      </main>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.2/dist/chart.min.js"></script>
      <script src="js/jquery-3.5.1.js"></script>
      <script src="js/jquery.dataTables.min.js"></script>
      <script src="js/dataTables.bootstrap5.min.js"></script>
      <script src="js/scriptx.js"></script>



    </body>