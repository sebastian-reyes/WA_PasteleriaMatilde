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
                                    <form method="POST" action="AgregarCarrito">
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#<%=objprod.getId_producto()%>">
                                            <i class="fa fa-info" aria-hidden="true"></i> Información
                                        </button>
                                        <!-- Modal -->
                                        <div class="modal fade " id="<%=objprod.getId_producto()%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel"><%=objprod.getNombre()%></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row p-3">
                                                            <div class="col-lg-6">
                                                                <img src="<%=objprod.getRuta_img()%>" class="img-fluid shadow-lg bg-white rounded">
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <h5 class="modal-title" id="exampleModalLabel">Código: <%=objprod.getId_producto()%></h5>
                                                                <p class="text-muted mt-2"><%=objprod.getDescripcion()%></p>
                                                                <p>Stock: <%=objprod.getStock_actual()%></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" name="user" id="user" value="<%=request.getAttribute("user")%>">
                                        <input type="hidden" name="idcat" id="idcat" value="<%=objprod.getId_cat()%>">
                                        <input type="hidden" name="nomcat" id="nomcat" value="<%=request.getAttribute("nomcat")%>">
                                        <button type="submit" class="btn btn-success"><i class="fa fa-shopping-cart"></i> Agregar al carrito</button>
                                    </form>  
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
