<%@page import="matilde.model.Usuario"%>
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
    <%
        Usuario objuser = (Usuario) request.getAttribute("user");
    %>
    <body id="body">
        <div class="container-admin">
            <%@include file="Admin_SidebarNavbar.jsp" %>
            <%                List<Pedido_Venta> lstpedidos = (List<Pedido_Venta>) request.getAttribute("lstpedidos");
                if (lstpedidos.size() > 0) {
            %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <div class="main__greeting">
                            <h1>Pedidos del cliente <%=objuser.getNombres()%> <%=objuser.getApellido_paterno()%> <%=objuser.getApellido_materno()%></h1>
                            <p>Se puede actualizar crear, actualizar y eliminar clientes</p>
                        </div>
                        <div class="main__greeting ms-auto">
                            <a href="#" class="btn btn-primary">Ver reporte de pedidos</a><br>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-hover shadow-lg p-3 mb-5 mt-4 bg-white rounded">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">ID Pedido</th>
                                    <th scope="col">Cliente</th>
                                    <th scope="col">ID Empleado</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Dirección</th>
                                    <th scope="col">Tipo de pago</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Cancelado</th>
                                    <th scope="col">Detalle</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (Pedido_Venta objpedido : lstpedidos) {
                                %>
                                <tr>
                                    <th><%=objpedido.getId()%></th>
                                    <td><%=objpedido.getCliente()%></td>
                                    <td><%=objpedido.getEmpleado()%></td>
                                    <td><%=objpedido.getFecha()%></td>
                                    <td><%=objpedido.getDirección()%></td>
                                    <td><%=objpedido.getTipo_pago()%></td>
                                    <td><%=objpedido.getEstado()%></td>
                                    <td><%=objpedido.getCancelado()%></td>
                                    <td>
                                        <a class="btn btn-outline-success" href="DetallePedido?idpedido=<%=objpedido.getId()%>">Ver detalle</a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table> 
                    </div>
                </div>
            </main>
            <%
            } else {
            %>
            <main>
                <div class="main__container">
                    <div class="main__title">
                        <div class="main__greeting">
                            <h1>Pedidos del cliente <%=objuser.getNombres()%> <%=objuser.getApellido_paterno()%> <%=objuser.getApellido_materno()%></h1>
                            <p>Se podrá visualizar los pedidos realizador por el cliente</p>
                        </div>
                    </div>
                    <div>
                        <h1>Este cliente aún no cuenta con pedidos ):</h1>
                    </div>
                </div>
            </main>
            <%
                }
            %>
        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="Scripts/js/EliminarCliente.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
