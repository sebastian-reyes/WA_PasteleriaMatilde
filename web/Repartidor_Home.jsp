<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
        <link href="Styles/Bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
        <link rel="stylesheet" href="Styles/css/admin_styles.css" />
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/ico" href="img/icono/logo-matilde.ico">       
        <script src="Scripts/JQuery/JQuery.js" type="text/javascript"></script>
        <title>Pastelería Doña Matilde</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body id="body">
        <div class="container-admin">
            <%@include file="Repartidor_Sidebar.jsp" %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <div class="main__greeting">
                            <h1>Bienvenido Repartidor</h1>
                            <p>Recuerde enviar los pedidos según su orden por favor</p>
                        </div>
                    </div>
                </div>
               
            </main>
        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="Scripts/js/EliminarEmpleado.js" type="text/javascript"></script> 
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
