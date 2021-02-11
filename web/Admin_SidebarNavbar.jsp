<nav class="navbar">
    <div class="nav_icon" onclick="toggleSidebar()">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
    <div class="navbar__left">
        <a class="active_link" href="#">Administrador</a>
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
            if(request.getAttribute("nuser")!=null){
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-home"></i>
            <a href="Home">Inicio</a>
        </div>
        <%
            }else{
        %>
        <div class="sidebar__link">
            <i class="fa fa-home"></i>
            <a href="Home">Inicio</a>
        </div>
        <%
            }
        %>
        <h2>MANTENIMIENTO</h2>
        <%
            if(request.getAttribute("lstcliente")!=null){
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-users" aria-hidden="true"></i>
            <a href="Clientes">Mant. Clientes</a>
        </div>
        <%
            }else{
        %>
        <div class="sidebar__link">
            <i class="fa fa-users" aria-hidden="true"></i>
            <a href="Clientes">Mant. Clientes</a>
        </div>
        <%
            }
            if(request.getAttribute("lstemp")!=null){
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-address-card-o"></i>
            <a href="Empleados">Mant. Empleados</a>
        </div>
        <%
            }else{
        %>
        <div class="sidebar__link">
            <i class="fa fa-address-card-o"></i>
            <a href="Empleados">Mant. Empleados</a>
        </div>
        <%
            }
            if(request.getAttribute("lstcat")!=null || request.getAttribute("lstprod")!=null){
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-shopping-cart"></i>
            <a href="AdmCategorias">Mant. Productos</a>
        </div>
        <%
            }else{
        %>
        <div class="sidebar__link">
            <i class="fa fa-shopping-cart"></i>
            <a href="AdmCategorias">Mant. Productos</a>
        </div>
        <%
            }
            if(request.getAttribute("lsroveedor")!= null){
        %>
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-truck"></i>
            <a href="Proveedores">Mant. Proveedores</a>
        </div>
        <%
            }else{
        %>
        <div class="sidebar__link">
            <i class="fa fa-truck"></i>
            <a href="Proveedores">Mant. Proveedores</a>
        </div>
        <%
            }
        %>
        <h2>ALMACÉN</h2>
        <div class="sidebar__link">
            <i class="fa fa-sign-in"></i>
            <a href="#">Guías Entrada</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="#">Guías Salida</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-calendar-check-o"></i>
            <a href="#">Inventario</a>
        </div>
        <h2>ESTADÍSTICAS</h2>
        <div class="sidebar__link">
            <i class="fa fa-line-chart"></i>
            <a href="#">Estadísticas</a>
        </div>
        <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="CerrarSesion">Cerrar Sesión</a>
        </div>
    </div>
</div>

