<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="ScriptStyle.jsp" %>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&family=Poppins:wght@300&display=swap"
              rel="stylesheet">
        <title>Pastelería Doña Matilde</title>
        <link href="Styles/css/index.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <section id="fondo-home" style="background-image: url('img/index/fondo-home.jpg');">
            <div class="container">
                <div class="content-center">
                    <h1>Pastelería Doña Matilde</h1>
                    <p>
                        <b>
                            Preparando tortas, bocaditos, helados y panes desde 1985. Somos la mejor opción para tu paladar.
                        </b>
                    </p>
                    <p>
                        <b>
                            Tenemos nuestra opción de 'Delivery' con el que nosotros te enviaremos tu pedido hasta la puerta
                            de tu casa. ¿Qué esperas para comprar la torta de tus sueños?
                        </b>
                    </p>

                    <%                            if (request.getAttribute("user") != null) {
                            String user = (String) request.getAttribute("user");
                    %>
                    <%@include file="btn-carrito.jsp" %>
                    <form action="Categorias" method="POST">
                        <input type="hidden" value="<%=user%>" name="user" id="user">
                        <button class="btm btm-ligth mt-3 text-dark" style=" text-decoration: none;box-shadow: 12px 12px 22px #000000;"><b>Empieza a comprar <ion-icon name="pricetag-outline"></ion-icon></b></button>
                    </form>
                    <%
                    } else {
                    %>
                    <a href="Registro" class="btm btm-ligth mt-3 text-dark" style=" text-decoration: none;box-shadow: 12px 12px 22px #000000;"><b>Registrate para poder comprar <ion-icon name="person-outline"></ion-icon></b></a>
                    <%
                        }
                    %> 
                </div>
            </div>
        </section>
        <section id="sobre-nosotros" class="bg-ligth-gray">
            <div class="container">
                <div class="content-center">
                    <h2>Tranquilo, estás frente a la mejor panadería <b>en todo Lima</b></h2>
                    <p class="text-bold">Contamos con la mayor experiencia en la preparación de pasteles y postres.</p>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <img src="img\index\sobre-nosotros.jpeg" class="img-fluid img-sn" alt="matilde">
                        <h3 class="mt-5">Local Central - Jr Ica 386. Cercado de Lima</h3>
                    </div>
                    <div class="col-md-4">
                        <h3 class="mt-3 text-center"><b>Nuestra Historia</b></h3>
                        <p class="text-center">
                            La pastelería Doña Matilde nace en el año 1985 como panadería, teniendo como dueña a la señora
                            Matilde Melendéz en el cercado de Lima. Cumpliendo los 15 años de panadería la fundadora
                            falleció debido a su edad pero sus hijos fueron los encargados de que su negocio siga en pie.
                        </p>
                        <p class="text-center">
                            A partir del año 2000 en adelante la panadería fue aumentando su catálogo de ventas, ahora puede
                            vender desde panes, tortas, helados, refrescos, etc.
                        </p>
                        <p class="text-center">
                            Nuestra pastelería siempre tiene la frase de la señora Matilde, que siempre decía <b>'No
                                practiques
                                hasta que te salga bien, practica hasta que nunca te salga mal'</b> haciendo que cada vez
                            entreguen
                            más productos de calidad a sus clientes.
                        </p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-7">
                        <h3 class="mt-4"><b>Misión</b></h3>
                        <p>Somos una empresa cuya misión es ofrecer productos de panadería, repostería, cafetería y
                            refrigerios en general de la más alta calidad con un excelente sabor y aun precio accesible.
                        </p>
                        <p>Establecer un liderazgo con la colaboración y creatividad de nuestro talento humano, utilizando
                            las mejores materias primas del mercado para satisfacer a nuestros clientes.
                        </p>
                    </div>
                    <div class="col-md-5 mt-3">
                        <img src="img/index/mision.svg" class="img-fluid" alt="mision">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-5 mt-3">
                        <img src="img/index/vision.svg" class="img-fluid" alt="vision">
                    </div>
                    <div class="col-md-7">
                        <h3 class="mt-4"><b>Visión</b></h3>
                        <p>
                            Ser una empresa líder en el negocio de panadería y repostería reconocida en la zona norte del
                            país. Destacarnos por la calidad y sabor de nuestros productos, atención y servicio al cliente.
                        </p>
                        <p>
                            Utilizando los más altos estándares de calidad y tecnología de vanguardia en nuestros procesos
                            productivos.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section id="contacto">
            <div class="container">
                <div class="content-center">
                    <h2><b>Contacta con nosotros directamente</b></h2>
                    <p class="text-bold">Puede contactarnos visitando nuestro local o mediante número de teléfono, redes
                        sociales, etc.</p>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="contacto-container">
                            <div class="contacto contacto-light">
                                <h3 class="text-center"><b>Visita nuestro local</b></h3>
                                <img src="img/index/contacto-local.jpg" class="img-fluid img-sn mt-3" alt="">
                                <h5 class="mt-4"><b>Ubicación:</b> Jirón Ica 386, Cercado de Lima 15001. </h5>
                                <h5><b>Horario de atención:</b></h5>
                                <h5>Lunes a Viernes: 8am - 8pm.</h5>
                                <h5>Sábados: 8am - 4pm.</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="contacto-container">
                            <div class="contacto contacto-dark">
                                <h3 class="text-center"><b>Contacto virtual</b></h3>
                                <img src="img/index/logo-matilde.png" class="img-fluid img-sn mt-3" alt="">
                                <h5 class="mt-4"><i class="icon ion-logo-facebook"></i><b> Facebook: </b>Pasteleria DOÑA
                                    Matilde</h5>
                                <h5 class=""><i class="icon ion-logo-instagram"></i><b> Instagram: </b>matild.e12</h5>
                                <h5 class=""><i class="icon ion-md-call"></i><b> Número de teléfono: </b>981 532 863</h5>
                                <h5 class="text-center"><b>'Agilicemos los medios virtuales por la pandemia'</b></h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-center mt-4">
                    <h2><b>Nuestra ubicación</b></h2>
                    <br>
                    <div class="ratio ratio-16x9 shadow-lg p-3 mb-5 bg-white rounded">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.9741365879163!2d-77.03686053958525!3d-12.045300445151748!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8ca15ba2aaf%3A0x9c3df02379d2fd42!2sDo%C3%B1a%20Matilde%2C%20Pasteler%C3%ADa%20Fina!5e0!3m2!1ses!2spe!4v1608512106983!5m2!1ses!2spe" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
