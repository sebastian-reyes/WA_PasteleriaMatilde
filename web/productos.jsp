<%@page import="java.text.DecimalFormat"%>
<%@page import="matilde.model.Producto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/sections.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
        <title>Productos</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <%            List<Producto> lstprod = (List<Producto>) request.getAttribute("lstprod");
            String nombre = (String) request.getAttribute("nomcat");
        %>
        <section>
            <div class="container mt-3 mb-4">
                <h1 class="text-center"><%=nombre.toString()%></h1>
                <h5 class="text-muted">Lo mejor sobre <%=nombre.toString()%> lo tienes aquí, en la pastelería Doña Matilde!</h5>
                <div class="row">
                    <%
                        DecimalFormat df = new DecimalFormat("0.00");
                        for (Producto objprod : lstprod) {
                    %>
                    <div class="col-lg-4" >
                        <div class="card mt-3 shadow bg-white">
                            <h5 class="card-header text-center" style="background: #000000; color: #ffffff"><%=objprod.getNombre()%></h5>
                            <img src="<%=objprod.getRuta_img()%>" class="card-img-top" alt="image_<%=objprod.getNombre()%>">
                            <div class="card-body">
                                <center>
                                    <h3>S/. <%=df.format(objprod.getPrecio())%></h3>
                                    <a href="#" class="btn btn-info mt-3 "><ion-icon name="information-circle-outline" ></ion-icon> Información</a>
                                    <a href="#" class="btn btn-success mt-3"><ion-icon name="cart-outline"></ion-icon> Agregar Carrito</a>
                                </center>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </section>
        <%@include file="btn-carrito.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
