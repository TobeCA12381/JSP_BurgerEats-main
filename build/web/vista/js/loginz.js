function ingresar() {
    var usuario, password

    usuario = document.getElementById("inputUsuario").value;
    password = document.getElementById("inputPassword").value;
    //alert(usuario);
    if (usuario == "admin" && password == 123) {
        console.log(usuario);
        //location.href = 'Dashboard/html/reporte.html';
        //window.location.href('Dashboard/html/reporte.html');
        window.location.href = "reporte.jsp";
    } else {
        window.location.href = "Menu.jsp";
    }
    
    if (usuario == "trabajador" && password == 123) {
        console.log(usuario);
        //location.href = 'Dashboard/html/reporte.html';
        //window.location.href('Dashboard/html/reporte.html');
        window.location.href = "Dashboard.jsp";
    } else {
        window.location.href = "Menu.jsp";
    }
}


