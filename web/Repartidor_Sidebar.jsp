<%@page import="matilde.model.Usuario"%>
<nav class="navbar">
    <div class="nav_icon" onclick="toggleSidebar()">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
    <div class="navbar__left">
        <a class="active_link" href="#">Repartidor</a>
    </div>
    <div class="navbar__right">
        <a href="#">
            <i class="fa fa-search" aria-hidden="true"></i>
        </a>
        <a href="#">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
        </a>
        <a href="#">
            <img width="30" src="img/admin/avatar.svg" alt="" />
        </a>
    </div>
</nav>
<div id="sidebar">
    <div class="sidebar__title">
        <div class="sidebar__img">
            <img src="img/index/logo-matilde.png" alt="logo_dm" />
            <h1>Pastelería Doña Matilde</h1>
        </div>
        <i onclick="closeSidebar()" class="fa fa-times" id="sidebarIcon" aria-hidden="true"></i>
    </div>

    <div class="sidebar__menu">
        <%
            if (request.getAttribute("nuser") != null) {
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-home"></i>
            <a href="RepartidorHome">Inicio</a>
        </div>
        <%
        } else {
        %>
        <div class="sidebar__link">
            <i class="fa fa-home"></i>
            <a href="RepartidorHome">Inicio</a>
        </div>
        <%
            }
        %>
        <h2>PEDIDOS</h2>
        <%
            if (request.getAttribute("lstcliente") != null || request.getAttribute("lstpedidos") != null
                    || request.getAttribute("lstpedidos") != null) {
                
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-users" aria-hidden="true"></i>
            <a href="RepartidorPedidos">Pedidos</a>
        </div>
        <%
        } else {
        %>
        <div class="sidebar__link">
            <i class="fa fa-users" aria-hidden="true"></i>
            <a href="RepartidorPedidos">Pedidos</a>
        </div>
        <%
            }
        %>
        <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="CerrarSesion">Cerrar Sesión</a>
        </div>
    </div>
</div>
