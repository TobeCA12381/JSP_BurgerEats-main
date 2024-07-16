<!DOCTYPE html>
<html>
    <head>
        <title>Interfaz de Pago</title>
        <link rel="stylesheet" href="css/styles.css" />
        <link rel="stylesheet" href="css/carrito.css" />
        <link rel="stylesheet" href="css/Pago.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <link rel="stylesheet" href="https://use.fontawesome.com/f046241f13.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://store.ifurniture.pe/bower_components/wait-me/dist/waitMe.min.css" />
    <link rel="stylesheet" type="text/css" href="https://store.ifurniture.pe/bower_components/lobibox/dist/css/lobibox.min.css" />
    <link rel="stylesheet" href="https://store.ifurniture.pe/_/stylesheets/mitienda-web.css" />
    <!--  Oxygen, sans-serif -->
    <link href="https://fonts.googleapis.com/css?family=Oxygen" rel='stylesheet' type='text/css'>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <style type="text/css">
.main-content { position: relative; }
.main-content .basic-info { position: absolute; padding-left: 20px; margin-left: 15px; margin-right: 15px; width: 35%; top: 30px; left: 0; right: 0; }
.main-content .basic-info > h3 { font-size: 35px; text-align: center; }

.main-content .customization-box { position: absolute; top: 20px; right: 20px; width: 306px;}
.main-content .customization-box .dimension-box { padding: 20px;}
.main-content .customization-box .material-box { padding: 20px; }
.main-content .customization-box .material-box .material-list{ display: flex; flex-wrap: wrap;}

.main-content .customization-box .order-box input { width: 50px;}


@media (min-width: 576px) {  }

@media (min-width: 768px) {  }

@media (min-width: 992px) {  }

@media (min-width: 1200px) {  }

@media screen and (max-width: 575px) { 
	.main-content .basic-info { width: 100%; padding-left: 0px; margin: 0; text-align: center; }
	.main-content .basic-info > p { display: none; }
	.main-content .basic-info > h3 { font-size: 25px; text-align: center; }
	.main-content .customization-box { position: relative; top: 0px; right: 0px; width: 100%;}
	.main-content .customization-box .price-box { background-color: #9e9e9e; border-radius: 0px 0px 10px 10px;}
	.main-content .customization-box .dim-mat-box .medium-view { display: none;}
}

@media screen and (min-width: 576px) and (max-width: 1023px) {
	.main-content .customization-box { position: relative; top: 0px; right: 0px; width: 100%; }
	.main-content .customization-box .price-box { background-color: #9e9e9e; border-radius: 0px 0px 10px 10px;}

	.main-content .customization-box .dim-mat-box .arrow-box { display: none;}
	.main-content .customization-box .dim-mat-box .carousel { display: none;}
	
	.main-content .customization-box .dim-mat-box .medium-view { display: flex; flex-direction: row;}
	.main-content .customization-box .dim-mat-box .medium-view .dimension-box { width: 100%; }
	.main-content .customization-box .dim-mat-box .medium-view .material-box { width: 100%; }
}

@media screen and (min-width: 1024px) { 
	.main-content .customization-box .dim-mat-box .medium-view { display: none;}
}

/*@media screen and (max-width: 1024px) { 
	.main-content .basic-info { width: 100%; margin: 0; text-align: center; }
	.main-content .customization-box { position: relative; top: 0px; right: 0px; width: 100%;}
	.main-content .customization-box .dimension-box { width: 100%; }
	.main-content .customization-box .material-box { width: 100%; }
	.main-content .customization-box .price-box { background-color: #9e9e9e; border-radius: 0px 0px 10px 10px;}
}*/

input[type=range] .thumb .value { font-size: 15px; }

.left-option { cursor: pointer; }
.right-option { cursor: pointer; }

/* VIEW: layout.template */

/* Icono del carrito */
.cart-icon {
	position: relative;
}

.badge-cart-items {
	position: absolute;
	top: -5px;
	right: -15px;
}
 /* Icono de usuario y opciones */
/* .user-options {
	position: relative;
}

.user-options > a > svg {
	cursor: pointer;
}

.user-options > svg {
	color: white;
	display: none;
	position: absolute;
	right:0.5rem;
}

.user-options > svg > path {
	stroke: black;
	stroke-width: 1rem;
}

.user-options > ul {
	background-color: white;
	border: 1px solid grey;
	border-radius: 0.2rem;
	display: none;
	list-style: none;
	margin: 0;
	padding: 0;
	position: absolute;
	right: -1rem;
	top: 3.1rem;
	width: 9rem;
	z-index: 1;
}

.user-options > ul > li > a {
	color: gray;
	display: block;
	padding: 1rem;
	text-decoration: none;
}

.user-options > ul > li:hover a {
	background-color: beige;
}

.user-profile-icon {
	cursor: pointer;
} */


/* VIEW: user.product-3d */
#price-group {
	font-size: 1.5rem;
}

#quantity-group input {
	width: 4rem;
}

.materials-list {
	display: flex;
	justify-content: space-between;
	list-style-type: none;
	padding: 0;
}

.material-item img{
	width: 4rem;
}

div.tab-content div:last-child select {
	width: 5.5rem;
	text-align: center;
}


/* VIEW: user.cart */
.cart-img {
	border-radius: 0.3rem;
	width: 9rem;
}

/* VIEW: user.checkout */
.checkout-info-contact, .checkout-delivery-address,
.checkout-billing, .checkout-payment-method, .purchase-summary {
	padding: 1.5rem;
	border-radius: 0.3rem;
	box-shadow: 0.1rem 0.1rem 0.5rem 0.1rem rgba(158, 158, 158, 0.4);
}

.checkout-img-td {
	position: relative;
}

.checkout-img-td > span {
	left: 5rem;
	position: absolute;
	top: 0.5rem;
}

.checkout-img {
	border-radius: 0.3rem;
	width: 4.5rem;
}

/*  */

.checkout-delivery-address > :nth-child(4) { /* Selecciona el 2Â° div.address-tab */
	display: none;
}

.address-buttons {
	display: flex;
	justify-content: space-around;
}

.address-buttons > button {
	flex-grow: 1;
	margin: 1rem;
}

.store-item {
	border-radius: 0.3rem;
	cursor: pointer;
	padding: 0.5rem;
}

.store-item:hover {
	background-color: rgba(75, 75, 77, 0.1);
	/* background-color: rgba(236, 247, 252, 0.952); */
	transition: all .3s;
}

.store-item > div {
	cursor: pointer;
}

.store-item > div > label {
	cursor: pointer;
	width: 100%;
}

.store-item > a {
	text-align: center;
	align-self: center;
}

.store-item > a:hover {
	color: #FF6800 !important;
	transition: all .2s;
}

.google-maps {
	display: none;
}

.google-maps iframe{
	max-width: 100%;
	overflow: hidden;
	width: 100%;
	height: 55vh;
}

/*  */
.checkout-billing .billing-form, 
.billing-address-form, .card-form {
	display: none;
}

 /* Redes Sociales del Footer */
.redes{
	display: flex;
	flex-flow: row wrap;
	justify-content: space-evenly;
	padding-left: 15%;
	padding-right: 15%;
}

/*  */
.payment-method-radio, 
.terms-and-conditions {
	border-radius: 0.3rem;
	padding: 0.5rem;
}

.payment-method-radio label, 
.terms-and-conditions label {
	width: 100%;
	cursor: pointer;
}

.payment-method-radio .custom-radio img {
	width: 100%;
	margin-bottom: .5rem;
}

.payment-method-radio:hover, 
.terms-and-conditions:hover {
	background-color: rgba(75, 75, 77, 0.1);
	transition: all .3s;
}

.terms-and-conditions > a {
	cursor: pointer;
}

.terms-and-conditions > a:hover {
	color: #FF6800 !important;
	transition: all .2s;
}

/* .store-item > div {
	display: inline-block;
	width: 60%;
}

.store-item > a {
	display: inline-block;
	text-align: right;
	width: 39%;
} */

.btn-ifu { /* UNIR TODOS LOS BOTONES IFURNITURE */
    background-color: white;
    border: 1px dotted #FF6800;
    border-radius: 0.2rem;
    color: #FF6800;
    cursor: pointer;
    font-family: inherit;
}

.btn-ifu:hover { /* UNIR TODOS LOS BOTONES IFURNITURE */
    background-color: #FF6800;
    color: white;
    transition: all .3s ease-in-out;
}

.btn-active {
    background-color: #FF6800;
    color: white;
}

.descripcion-taller {
	display: flex;
	justify-content: space-between;
}

.margenes-taller{
	flex-basis: 40%;
}

.imagen-description {
	height: 50px;
	width: 50px;
}

.iconos-caracteristicas{
	list-style: none;
	display: flex;
	padding: 0;
}

.iconos-caracteristicas li{
	flex: 1;
	display: flex;
}

*{
	font-family: 'Raleway', sans-serif;
}
.btn-detalle{
	background-color: #ff6e0d;
	color: white;
	border: none; /* Eliminar el borde */
	border-radius: 8px; /* Agregar bordes redondeados */
	padding: 10px 20px; /* Ajustar el espaciado interno (padding) segÃºn sea necesario */
    font-size: 16px;
}
.raleway-fino {
	font-family: 'Raleway', sans-serif;
	font-weight: 300; 
}

#Reducir {
	margin-bottom: -20px;
}
.footer {
    background: #000;
    padding: 0em 0;
    text-align: center;
    margin-top: auto;
}
.frmLinkPagos{
padding: 1.5rem;
    border-radius: 0.3rem;
    box-shadow: 0.1rem 0.1rem 0.5rem 0.1rem rgba(158, 158, 158, 0.4);
}
    </style>
    
    </head>
    <body>
        <h1>Interfaz de Pago</h1>

    
        <header class="header">
            <a href="Menu" id="logoHamburguesa"> <img src="images/Logo.png" alt=""></a>
            <nav class="navbar">
                <a href="Menu.jsp">Menu</a>
                <a href="Nosotros.jsp">Nosotros</a>
                <a href="Contactanos.jsp">Contactanos</a>
                <a href="ZonasDeReparto.jsp">Zonas de Reparto</a>
                <a href="index.jsp">Login</a>
            </nav>
            <div class="container-icon">
                <div class="container-cart-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                    <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                    </svg>
                    <div class="count-products">
                        <span id="contador-productos">0</span>
                    </div>
                </div>

                <div class="container-cart-products hidden-cart">
                    <div class="row-product hidden">
                        <div class="cart-product">
                            <div class="info-cart-product">
                                <span class="cantidad-producto-carrito">1</span>
                                <p class="titulo-producto-carrito">Zapatos Nike</p>
                                <span class="precio-producto-carrito">s/80</span>
                            </div>
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke-width="1.5"
                                stroke="currentColor"
                                class="icon-close"
                                >
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M6 18L18 6M6 6l12 12"
                                />
                            </svg>
                        </div>
                    </div>

                    <div class="cart-total hidden">
                        <h3>Total:</h3>
                        <span class="total-pagar">s/200</span>
                    </div>
                    <p class="cart-empty"></p>

                    <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i> </button>
                </div>
            </div>
        </header>

    <br><br><br><br><br><br><br><br><br>
        
          
         <div class="col-md-12 col-lg-8 pb-5">
                    <input type="hidden" id="category" name="category" value="Diploma">
                    <div>
                        <div>
                            <form id="frmLinkPago" novalidate="novalidate" style="height:500px; width: 950px; padding-left: 200px;">
                                <div class="checkout-billing mt-5">
                                    <h4 class="mb-3"><strong>Datos de facturación</strong></h4>

                                    
                                        <div class="form-group col-md-6">
                                <label for="firstname">Nombres</label>
                                <input type="text" class="form-control" id="firstname" name="firstname" required="" data-parsley-error-message="Ingrese su Nombre">
                                <small id="firstnameHelp" class="form-text text-danger help-message"></small>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="lastname">Apellidos</label>
                                <input type="text" class="form-control" id="lastname" name="lastname" required="" data-parsley-error-message="Ingrese su Apellido">
                                <small id="lastnameHelp" class="form-text text-danger help-message"></small>
                            </div>
                                    
                      
                            <div class="form-group col-md-6">
                                <label for="phone">Teléfono</label>
                                <input type="tel" class="form-control" id="phone" name="phone" required="" data-parsley-error-message="Ingrese su Teléfono" maxlength="15" onkeypress="return SoloNumeros(event)">
                                <small id="phoneHelp" class="form-text text-danger help-message"></small>
                            </div>
                             
                           <label for="country">   Dirección</label>

                        <small id="countryHelp" class="form-text text-danger help-message"></small>
                        <select id="country" name="country" class="form-group custom-select" required="" data-parsley-error-message="Seleccione un País">
                             <option value="" selected>Seleccionar país</option>
                              <option value="PE">Peru</option>
                        </select>

                        <small id="departmentHelp" class="form-text text-danger help-message"></small>
                        <select id="department" name="department" class="form-group custom-select" required="" data-parsley-error-message="Seleccione un Departamento">
                            <option value="" selected>Seleccionar departamento</option>
                               <option value="" selected>Seleccionar provincia</option>
                            <option value="Am">Amazonas</option>
                            <option value="AM">Áncash</option>
                            <option value="APU">Apurímac</option>
                            <option value="ARE">Arequipa</option>
                            <option value="AY">Ayacucho</option>
                            <option value="CA">Cajamarca</option>
                            <option value="CU">Cuzco</option>
                            <option value="HU">Huancavelica</option>
                            <option value="HUA">Huánuco</option>
                            <option value="ICA">Ica</option>
                            <option value="JU">Junín</option>
                            <option value="LAM">Lambayeque</option>
                            <option value="LIM">Lima</option>
                            <option value="LORE">Loreto</option>
                            <option value="MAD">Madre de Dios</option>
                            <option value="MOQ">Moquegua</option>
                            <option value="PASCO">Pasco</option>
                            <option value="PIU">Piura</option>
                            <option value="PU">Puno</option>
                            <option value="SA">San Martín</option>
                            <option value="TA">Tacna</option>
                            <option value="TU">Tumbes</option>
                            <option value="UCA">Ucayali</option>
                        </select>

                     

                        <small id="districtHelp" class="form-text text-danger help-message"></small>
                        <select id="district" name="district" class="form-group custom-select" required="" data-parsley-error-message="Seleccione un Distrito">
                            <option value="" selected>Seleccionar distrito</option>
                            <option value="" >Ancón</option>
 <option value="" >Ate</option>
 <option value="" >Barranco</option>
 <option value="" >Breña</option>
 <option value="" >Carabayllo</option>
 <option value="" >Cercado de Lima</option>
 <option value="" >Chaclacayo</option>
 <option value="" >Chorrillos</option>
 <option value="" >Cieneguilla</option>
 <option value="" >Comas</option>
 <option value="" >El agustino</option>
 <option value="" >Independencia</option>
 <option value="" >Jesús maría</option>
 <option value="" >La molina</option>
 <option value="" >La victoria</option>
 <option value="" >Lince</option>
 <option value="" >Los olivos</option>
 <option value="" >Lurigancho</option>
 <option value="" >Lurín</option>
 <option value="" >Magdalena del mar</option>
 <option value="" >Miraflores</option>
 <option value="" >Pachacámac</option>
 <option value="" >Pucusana</option>
 <option value="" >Pueblo libre</option>
 <option value="" >Puente piedra</option>
 <option value="" >Punta hermosa</option>
 <option value="" >Rímac</option>
 <option value="" >San bartolo</option>
 <option value="" >San borja</option>
 <option value="" >San isidro</option>
 <option value="" >San Juan de Lurigancho</option>
 <option value="" >San Juan de Miraflores</option>
 <option value="" >San Luis</option>
 <option value="" >San Martin de Porres</option>
 <option value="" >San Miguel</option>
 <option value="" >Santa Anita</option>
 <option value="" >Santa María del Mar</option>
 <option value="" >Santa Rosa</option>
 <option value="" >Santiago de Surco</option>
 <option value="" >Surquillo</option>
 <option value="" >Villa el Salvador</option>
 <option value="" >Villa Maria del Triunfo</option>
                        </select>

                        <div class="form-group col-md-6">
                            <small id="addressHelp" class="form-text text-danger help-message"></small>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Ingrese la dirección del distrito" >
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="sameBillingAddressCheck" name="same_address_check" value="yes" checked>
                            <label class="custom-control-label" for="sameBillingAddressCheck" style="margin-top: 2px">
                                <strong>Utilizar esta dirección para el comprobante de pago</strong>
                            </label>
                        </div>
                    </fieldset>
                                    <div class="form-group col-md-6">
                                        <label>E-mail*</label>
                                        <input type="email" class="form-control" id="lp_email" name="lp_email" required="" data-parsley-required-message="Ingrese su Email" maxlength="80">
                                    </div>

                                    <fieldset id="ticket-form" class="ticket-form">
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <div class="form-group">
                                                    <label>Tipo Documento*</label>
                                                    <select id="lp_documento" name="lp_documento" class="form-group custom-select" data-parsley-min="1" data-parsley-error-message="Seleccione un documento">
                                                        <option value="0">Seleccione</option>
                                                        <option value="1" data-digitmax="8">DNI</option>
                                                        <option value="2" data-digitmax="15">Otro</option>
                                                    </select>
                                                </div>
                                                <div id="divOtro" class="form-group d-none">
                                                    <label>Tipo de documento<br> </label>
                                                    <br>
                                                    <input type="text" class="form-control" id="lp_otro" name="lp_otro" required="" data-parsley-error-message="Ingrese el tipo de documento" maxlength="250">
                                                </div>
                                                <div class="form-group  col-md-6">
                                                    <label>Número de Documento*</label>
                                                    <input type="text" class="form-control positive-integer" id="lp_numdocumento" name="lp_numdocumento" required="" data-parsley-required-message="Ingrese su Número de documento">
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                    <div class="form-group">
                                        <label class="form-check-label" for="chkTC">
                                            <input type="checkbox" class="form-check-input" id="chkTC" required="" data-parsley-error-message="Debe aceptar los términos y condiciones para continuar">
                                             - Estoy de acuerdo con los <a href="#">Términos y Condiciones</a>
                                        </label>
                                    </div>         
                              <div class="card-footer text-muted text-center">
                                        <small id="completeHelp" class="form-text text-danger help-message"></small>

                                        <button class="btn btn-lg btn-primary text-white border border-primary" type="button" style="background-color: #fd7e14;"   onclick="accionOpcion3()" id="btnPagarLink"><i class="fa fa-credit-card"></i> Siguiente</button>
                                        <br>     
                              </div>      
                        </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>
    
    
    <form id="frmLinkPagos" novalidate="novalidate" style="height:300px; width: 450px; margin-left: 1060px; margin-bottom: 0px; margin-top: -560px;" > 
                                <div class="checkout-billing mt-5">
                                     <div class="container-cart-products hidden-cart">
            <div class="row-product hidden">
                <div class="cart-product" >
                    <div class="info-cart-product">
                    </div>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                         stroke="currentColor" class="icon-close">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </div>
            </div>

            <div class="cart-total hidden">
                <h3>Total:</h3>
                <span class="total-pagar"></span>
            </div>
            <p class="cart-empty">El carrito está vacío</p>

            <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i> </button>
        </div>
                                </div>
        <br>
 </form>
  

        
        <%@include file="footer.jsp" %>

        <script src="js/carrito.js"></script>
        <script src="js/Pago.js"></script>
        <script>
            function accionOpcion3() {
    
        window.location.href = "checkout.jsp";
}
            
            
        </script>
        
    </body>
</html>
