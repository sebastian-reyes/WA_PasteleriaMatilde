<%@page import="matilde.model.Detalle_Pedido_Venta"%>
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
        <div class="container-admin">
            <%@include file="Admin_SidebarNavbar.jsp" %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <div class="main__greeting">
                            <h1>Pedido</h1>
                            <p>Se puede actualizar crear, actualizar y eliminar clientes</p>
                        </div>
                    </div>
                    <a class="btn btn-dark">Regresar</a>
                    <div class="container">
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
                                <%                                    List<Detalle_Pedido_Venta> lstdetalle = (List<Detalle_Pedido_Venta>) request.getAttribute("lstdetalle");
                                %>
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
                    </div>
                </div>
            </main>
        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="Scripts/js/EliminarCliente.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
