<%-- 
    Document   : Categorias
    Created on : 26-ene-2021, 14:51:59
    Author     : Sebastián
--%>

<%@page import="matilde.model.Categoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/sections.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
        <title>Compras</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <%            
            List<Categoria> lstcat = (List<Categoria>) request.getAttribute("lstcat");
        %>
        <section>
            <div class="container mt-4 mb-4">
                <h1 class="text-center">Categorías de la pastelería 'Doña Matilde'</h1>
                <p class="text-muted">Puede seleccionar la categoría que desee, tenemos productos de muy buena calidad.</p>
                <div class="row">
                    <%
                        for (Categoria objcat : lstcat) {
                    %>
                    <div class="col-lg-3">
                        <div class="card mt-3 shadow bg-white rounded">
                            <img src="<%=objcat.getRuta_img()%>" class="card-img-top" alt="image_<%=objcat.getNom_cat()%>">
                            <div class="card-body">
                                <h5 class="card-title"><%=objcat.getNom_cat()%></h5>
                                <p class="card-text"><%=objcat.getDescripcion()%></p>
                                <a href="Productos" class="btn btn-primary">Muestrame más</a>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </section>
        <section id="footer" class="bg-negro">
            <div class="container">
                <img class="ft-logo" src="img\index\logo-matilde.png" alt="logo">
                <ul class="list-inline">
                    <li class="list-inline-item footer-menu"><a href="#">Home</a></li>
                    <li class="list-inline-item footer-menu"><a href="#sobre-nosotros">Sobre Nosotros</a></li>
                    <li class="list-inline-item footer-menu"><a href="#">Compras</a></li>
                    <li class="list-inline-item footer-menu"><a href="#contacto">Contacto</a></li>
                </ul>
                <ul class="list-inline redes">
                    <li class="list-inline-item footer-menu"><a
                            href="https://www.facebook.com/Pasteleria-DOÑA-Matilde-364489010801732" target="_blank"><i
                                class="icon ion-logo-facebook"></i></a></li>
                    <li class="list-inline-item footer-menu"><a href="https://www.instagram.com/matild.e12"
                                                                target="_blank"><i class="icon ion-logo-instagram"></i></a></li>
                    <li class="list-inline-item footer-menu"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                    <li class="list-inline-item footer-menu"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                </ul>
                <small>©Pastelería Doña Matilde - 2020 Todos los derechos reservados. </small>
            </div>
        </section>
    </body>
</html>
