
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
        <link rel="stylesheet" href="Styles/css/admin_styles.css" />
        <link rel="icon" type="image/ico" href="img/icono/logo-matilde.ico">
        <title>Pastelería Doña Matilde</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            int nuser = (Integer)request.getAttribute("nuser");
        %>
    </head>
    <body id="body">
        <div class="container-admin">
            <%@include file="Admin_SidebarNavbar.jsp" %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <img src="img/admin/hello.svg" alt="" />
                        <div class="main__greeting">
                            <h1>Bienvenido Administrador</h1>
                            <p>Puedes ver las secciones necesarias de este día</p>
                        </div>
                    </div>
                    <div class="main__cards">
                        <div class="card-admin">
                            <i class="fa fa-user-o fa-2x text-lightblue" aria-hidden="true"></i>
                            <div class="card_inner">
                                <p class="text-primary-p">Número de Usuarios</p>
                                <span class="font-bold text-title"><%=nuser%></span>
                            </div>
                        </div>

                        <div class="card-admin">
                            <i class="fa fa-calendar fa-2x text-red" aria-hidden="true"></i>
                            <div class="card_inner">
                                <p class="text-primary-p">Número de Pedidos</p>
                                <span class="font-bold text-title">25</span>
                            </div>
                        </div>

                        <div class="card-admin">
                            <i class="fa fa-eye fa-2x text-green" aria-hidden="true"></i>
                            <div class="card_inner">
                                <p class="text-primary-p">Productos Activos</p>
                                <span class="font-bold text-title">60</span>
                            </div>
                        </div>

                        <div class="card-admin">
                            <i class="fa fa-eye-slash fa-2x text-muted" aria-hidden="true"></i>
                            <div class="card_inner">
                                <p class="text-primary-p">Productos inactivos</p>
                                <span class="font-bold text-title">12</span>
                            </div>
                        </div>
                    </div>
                    <div class="charts">
                        <div class="charts__left">
                            <div class="charts__left__title">
                                <div>
                                    <h1>Productos más vendidos</h1>
                                    <p>Cercado de Lima, Lima, Perú</p>
                                </div>
                                <i class="fa fa-level-up" aria-hidden="true"></i>
                            </div>
                            <div id="apex1"></div>
                        </div>

                        <div class="charts__right">
                            <div class="charts__right__title">
                                <div>
                                    <h1>Stats Reports</h1>
                                    <p>Cercado de Lima, Lima, Perú</p>
                                </div>
                                <i class="fa fa-usd" aria-hidden="true"></i>
                            </div>

                            <div class="charts__right__cards">
                                <div class="card1">
                                    <h1>Income</h1>
                                    <p>$75,300</p>
                                </div>

                                <div class="card2">
                                    <h1>Sales</h1>
                                    <p>$124,200</p>
                                </div>

                                <div class="card3">
                                    <h1>Usuarios</h1>
                                    <p><%=nuser%></p>
                                </div>

                                <div class="card4">
                                    <h1>Orders</h1>
                                    <p>1881</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
    </body>
</html>
