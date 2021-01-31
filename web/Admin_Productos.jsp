<%@page import="java.text.DecimalFormat"%>
<%@page import="matilde.model.Producto"%>
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
        <link href="Styles/css/sin-flechas-number.css" rel="stylesheet" type="text/css"/>
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
                            <h1>Productos</h1>
                            <p>Se puede actualizar crear, actualizar y eliminar productos de la categoría</p>
                        </div>
                        <div class="main__greeting ms-auto">
                            <a href="#" class="btn btn-primary">Reporte de productos</a><br>
                            <button type="button" id="btnNuevo" class="btn btn-success mt-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                Nuevo Producto
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header bg-negro">
                                            <h5 class="modal-title text-white" id="staticBackdropLabel">Nuevo Producto</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"><i class="fa fa-times text-white" aria-hidden="true"></i></button>
                                        </div>
                                        <form action="AdmRegistrar" method="POST">
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <label for="txtidcat">ID Categoría</label>
                                                        <input type="text" class="form-control" id="txtidcat" name="txtidcat" readonly="" value="<%=request.getAttribute("id")%>">
                                                    </div>
                                                    <div class="col-md-9">
                                                        <label for="txtname">Nombre</label>
                                                        <input type="text" class="form-control" id="txtname" name="txtname">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 mt-3">
                                                        <div class="form-floating">
                                                            <textarea class="form-control" id="txtdescripcion" style="height: 100px"></textarea>
                                                            <label for="txtdescripcion">Descripción</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mt-3">
                                                        <label for="txtstockact">Stock Actual</label>
                                                        <input type="number" class="form-control" id="txtstockact" name="txtstockact">
                                                    </div>
                                                    <div class="col-md-6 mt-3">
                                                        <label for="txtstockmin">Stock Mínimo</label>
                                                        <input type="number" class="form-control" id="txtstockmin" name="txtstockmin">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 mt-3">
                                                        <label>Ingrese foto</label>
                                                        <input type="file" id="rutafoto" name="rutafoto">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                                                <button class="btn btn-warning">Guardar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover shadow-lg p-3 mb-5 mt-4 bg-white rounded">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Stock Actual</th>
                                    <th scope="col">Stock Mínimo</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Actualizar</th>
                                    <th scope="col">Eliminar</th>
                                </tr>
                            </thead>
                            <%
                                List<Producto> lstprod = (List<Producto>) request.getAttribute("lstprod");
                            %>
                            <tbody>
                                <%
                                    DecimalFormat df = new DecimalFormat("00.00");
                                    for (Producto objprod : lstprod) {
                                %>
                                <tr>                                        
                                    <th scope="row"><%=objprod.getId_producto()%></th>
                                    <td><%=objprod.getNombre()%></td>
                                    <td><%=objprod.getStock_actual()%></td>
                                    <td><%=objprod.getStock_min()%></td>
                                    <th>S/. <%=df.format(objprod.getPrecio())%></th>
                                    <td><a href="#" class="btn btn-info">Actualizar</a></td>
                                    <td>
                                        <input type="hidden" id="idc" value="<%=objprod.getId_cat()%>">
                                        <input type="hidden" id="idp" value="<%=objprod.getId_producto()%>">
                                        <a href="#" id="btnEliminar" class="btn btn-danger">Eliminar</a>
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
        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="Scripts/js/EliminarProducto.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
