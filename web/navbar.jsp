<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="Styles/css/navbar.css" rel="stylesheet" type="text/css"/>
    <%@include file="ScriptStyle.jsp" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Pastelería Doña Matilde</a>  
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <%
                    if (request.getAttribute("user") != null) {
                        String user = request.getAttribute("user").toString();
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#sobre-nosotros"><ion-icon name="help-circle-outline"></ion-icon> Sobre Nosotros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#contacto"><ion-icon name="call-outline"></ion-icon> Contacto</a>
                </li>
                <li class="nav-item">
                    <form action="Categorias" method="POST">
                        <input type="hidden" value="<%=user%>" name="user" id="user">
                        <button type="submit" class="btn btn-link text-dark"><ion-icon name="pricetags-outline"></ion-icon> Compras</button>
                    </form>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <ion-icon name="person-outline"></ion-icon><%=user%>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Mi Perfil</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="CerrarSesion">Cerrar Sesión</a></li>
                    </ul>
                </li>
                <%
                } else {
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#sobre-nosotros"><ion-icon name="help-circle-outline"></ion-icon> Sobre Nosotros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#contacto"><ion-icon name="call-outline"></ion-icon> Contacto</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-dark" aria-current="page" href="Login"><ion-icon name="person-circle-outline"></ion-icon> Iniciar Sesión</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>