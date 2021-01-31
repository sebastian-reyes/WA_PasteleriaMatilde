<%@page import="matilde.model.Categoria"%>
<%@page import="java.util.List"%>
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
    <body>
        <div class="container-admin">
            <%@include file="Admin_SidebarNavbar.jsp" %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <div class="main__greeting">
                            <h1>Categorías de productos</h1>
                            <p>Seleccione la categoría que necesite para hacer su mantenimiento.</p>
                        </div>
                    </div>
                    <div class="mt-3">
                        <%
                            List<Categoria> lstcat = (List<Categoria>) request.getAttribute("lstcat");
                        %>
                        <div class="row">
                            <%
                                for (Categoria objcat : lstcat) {
                            %>
                            <div class="col-lg-4">
                                <div class="card mt-3 shadow bg-white rounded" style="width: 18rem;">
                                    <img src="<%=objcat.getRuta_img()%>" class="card-img-top" alt="image_<%=objcat.getNom_cat()%>">
                                    <div class="card-body">
                                        <center>
                                            <h5 class="card-title"><b><%=objcat.getNom_cat()%></b></h5>
                                            <a href="AdmProductos?id=<%=objcat.getId_cat()%>" class="btn btn-info">Mantenimiento</a>
                                            <a href="#" class="btn btn-danger">Eliminar</a>
                                        </center>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>     
                    </div>
                </div>
            </main>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
