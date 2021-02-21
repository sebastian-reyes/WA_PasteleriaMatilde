<%@page import="matilde.model.Usuario"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="matilde.model.Carrito"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/sections.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/JQuery/JQuery.js" type="text/javascript"></script>
        <title>Carrito</title>
    </head>
    <body>
        <div class="container">
            <section class="mt-2 mb-5">
                <%@include file="navbar.jsp" %>
                <h1>Carrito de compras <i class="fa fa-shopping-cart" aria-hidden="true"></i></h1>
                <div class="row mt-3 mb-5">
                    <div class="col-lg-8">
                        <div class="table-responsive shadow-lg p-3 mb-5 bg-white rounded">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Producto</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col">Subtotal</th>
                                        <th scope="col">Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%                                        Usuario objusuario = (Usuario) request.getAttribute("objusuario");
                                        List<Carrito> lstcarrito = (List<Carrito>) request.getAttribute("lstcarrito");
                                        DecimalFormat df = new DecimalFormat("0.00");
                                        for (Carrito objcar : lstcarrito) {
                                    %>
                                    <tr>
                                        <th scope="row"><%=objcar.getItem()%></th>
                                        <td><%=objcar.getNombre()%></td>
                                        <td>S/.<%=df.format(objcar.getPrecioCompra())%></td>
                                        <td>
                                            <input type="hidden" id="us" value="<%=request.getAttribute("user")%>">
                                            <input type="hidden" id="idpro" name="idpro" value="<%=objcar.getItem()%>">
                                            <input class="form-control" id="cantidad" name="cantidad" type="number" value="<%=objcar.getCantidad()%>">
                                        </td>
                                        <td>S/.<%=df.format(objcar.getSubTotal())%></td>
                                        <td>
                                            <input type="hidden" id="us" value="<%=request.getAttribute("user")%>">
                                            <input type="hidden" id="idp" value="<%=objcar.getIdprod()%>">
                                            <a class="btn btn-danger" id="btnEliminar"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card ">
                            <div class="card-header bg-negro">
                                <h5 class="card-title text-white text-center">Generar Compra</h5>
                            </div>
                            <div class="card-body">
                                <label>Subtotal:</label>
                                <input class="form-control" readonly="" type="text" value="S/.<%=df.format(request.getAttribute("totalpagar"))%>">
                                <label>Descuento:</label>
                                <input class="form-control" readonly="" type="text" value="">
                                <label>Total:</label>
                                <input class="form-control" readonly="" type="text" value="S/.<%=df.format(request.getAttribute("totalpagar"))%>">
                            </div>
                            <div class="card-footer">
                                <button type="button" class="btn btn-success w-100" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    Realizar Compra <i class="fa fa-money" aria-hidden="true"></i>
                                </button>
                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Formulario de compra</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form method="POST" action="RealizarCompra">
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <h2 class="text-center">Productos</h2>
                                                            <div class="table-responsive shadow-lg p-3 mb-5 bg-white rounded">
                                                                <table class="table ">
                                                                    <thead>
                                                                        <tr>
                                                                            <th scope="col">#</th>
                                                                            <th scope="col">Producto</th>
                                                                            <th scope="col">Precio</th>
                                                                            <th scope="col">Cantidad</th>
                                                                            <th scope="col">Subtotal</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <%
                                                                            for (Carrito objcar : lstcarrito) {
                                                                        %>
                                                                        <tr>
                                                                            <th scope="row"><%=objcar.getItem()%></th>
                                                                            <td><%=objcar.getNombre()%></td>
                                                                            <td>S/.<%=df.format(objcar.getPrecioCompra())%></td>
                                                                            <td>
                                                                                
                                                                                <input class="form-control" type="number" value="<%=objcar.getCantidad()%>">
                                                                            </td>
                                                                            <td>S/.<%=df.format(objcar.getSubTotal())%></td>
                                                                        </tr>
                                                                        <%
                                                                            }
                                                                        %>
                                                                    </tbody>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <td colspan="4"></td>
                                                                            <td><b>Total a pagar: </b>S/.<%=df.format(request.getAttribute("totalpagar"))%></td>
                                                                        </tr>
                                                                    </tfoot>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <h2 class="text-center">Pago</h2>
                                                            <div class="container">
                                                                <div class="row">
                                                                    <div class="col-md-12 mb-3">
                                                                        <label for="cliente">Cliente</label>
                                                                        <input type="text" class="form-control" id="cliente" name="cliente" value="<%=objusuario.getNombres()%> <%=objusuario.getApellido_paterno()%> <%=objusuario.getApellido_materno()%>" readonly="">
                                                                    </div>
                                                                    <div class="col-md-7 mb-3">
                                                                        <label for="direccion">Dirección</label>
                                                                        <input type="text" class="form-control" id="direccion" name="direccion">
                                                                        <input type="hidden" class="form-control" id="coduser" name="coduser" value="<%=objusuario.getId_usuario()%>">
                                                                    </div>
                                                                    <div class="col-md-5 mb-3">
                                                                        <label for="txtdocumento">Distrito</label>
                                                                        <select id="inputState" class="form-select">
                                                                            <option>Breña</option>
                                                                            <option>La Victoria</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-12 mb-3">
                                                                        <label for="txtdocumento">Tipo Documento</label>
                                                                        <select id="inputState" class="form-select">
                                                                            <option>Tarjeta</option>
                                                                            <option selected="">Efectivo</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                                                    <input type="hidden" class="form-control" id="user" name="user" value="<%=objusuario.getUsername()%>">
                                                    <button type="submit" class="btn btn-primary">Realizar compra</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%@include file="footer.jsp"%>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="Scripts/js/aumentar-disminuir.js" type="text/javascript"></script>
        <script src="Scripts/js/EliminarProductoCarrito.js" type="text/javascript"></script>
    </body>
</html>
