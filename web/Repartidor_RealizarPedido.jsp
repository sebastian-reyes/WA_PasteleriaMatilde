<%@page import="matilde.model.Detalle_Pedido_Venta"%>
<%@page import="matilde.model.Pedido_Venta"%>
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
    <body id="body">
        <%
            List<Detalle_Pedido_Venta> lstdetalle = (List<Detalle_Pedido_Venta>) request.getAttribute("lstdetalle");
        %>
        <div class="container-admin">
            <%@include file="Repartidor_Sidebar.jsp" %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <div class="main__greeting">
                            <h1>Pedido <%=request.getAttribute("id")%></h1>

                            <h1>Cliente: <%=request.getAttribute("cliente")%></h1>
                            <h1>Dirección: <%=request.getAttribute("direccion")%></h1>

                        </div>
                    </div>
                    <div class="container mt-2">
                        <h2>Detalle del pedido</h2>
                        <div class="table-responsive">
                            <table class="table table-hover shadow-lg p-3 mb-5 mt-4 bg-white rounded">
                                <thead class="table-dark">
                                    <tr class="text-center">
                                        <th scope="col">Producto</th>
                                        <th scope="col">Imágen</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col">Monto</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        double total = 0.0;
                                        for (Detalle_Pedido_Venta objdetalle : lstdetalle) {
                                    %>
                                    <tr class="text-center">
                                        <th><%=objdetalle.getNombre()%></th>
                                        <td><img src="<%=objdetalle.getRuta_img()%>" style="width: 115px" alt="img_producto"/></td>
                                        <td><%=objdetalle.getCantidad()%></td>
                                        <td>S/.<%=objdetalle.getMonto()%></td>
                                    </tr>
                                    <%
                                            total = total + objdetalle.getMonto();
                                        }
                                    %>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="3"></td>
                                        <td><b>Total a pagar: </b>S/.<%=total%></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <form method="POST" action="Entregado">
                            <<input type="hidden" id="ped" name="ped" value="<%=request.getAttribute("id")%>">
                            <button class="btn btn-success w-100">Entregado <i class="fa fa-check-square" aria-hidden="true"></i></button>
                        </form>
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
