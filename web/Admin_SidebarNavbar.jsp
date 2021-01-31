


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
            <!-- <i class="fa fa-user-circle-o" aria-hidden="true"></i> -->
        </a>
    </div>
</nav>
<div id="sidebar">
    <div class="sidebar__title">
        <div class="sidebar__img">
            <img src="img/index/logo-matilde.png" alt="logo_dm" />
            <h1>Pasteler�a Do�a Matilde</h1>
        </div>
        <i onclick="closeSidebar()" class="fa fa-times" id="sidebarIcon" aria-hidden="true"></i>
    </div>

    <div class="sidebar__menu">
        <div class="sidebar__link active_menu_link">
            <i class="fa fa-home"></i>
            <a href="#">Inicio</a>
        </div>
        <h2>MANTENIMIENTO</h2>
        <div class="sidebar__link ">
            <i class="fa fa-users" aria-hidden="true"></i>
            <a href="Clientes">Mant. Clientes</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-address-card-o"></i>
            <a href="#">Mant. Empleados</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-shopping-cart"></i>
            <a href="#">Mant. Productos</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-truck"></i>
            <a href="#">Mant. Proveedores</a>
        </div>
        <h2>ALMAC�N</h2>
        <div class="sidebar__link">
            <i class="fa fa-sign-in"></i>
            <a href="#">Gu�as Entrada</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="#">Gu�as Salida</a>
        </div>
        <div class="sidebar__link">
            <i class="fa fa-calendar-check-o"></i>
            <a href="#">Inventario</a>
        </div>
        <h2>ESTAD�STICAS</h2>
        <div class="sidebar__link">
            <i class="fa fa-line-chart"></i>
            <a href="#">Estad�sticas</a>
        </div>
        <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="#">Cerrar Sesi�n</a>
        </div>
    </div>
</div>

