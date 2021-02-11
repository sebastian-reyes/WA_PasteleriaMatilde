<%@page import="matilde.model.Proveedor"%>
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
                            <h1>Mantenimiento de Proveedores</h1>
                            <p>Se puede actualizar crear, actualizar y eliminar proveedores</p>
                        </div>
                        <div class="main__greeting ms-auto">
                            <a href="#" class="btn btn-primary">Ver reporte de empleados</a><br>
                            <button type="button" id="btnNuevo" class="btn btn-success mt-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                Nuevo proveedor
                            </button>
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header bg-negro">
                                            <h5 class="modal-title text-white" id="staticBackdropLabel">Nuevo Proveedor</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"><i class="fa fa-times text-white" aria-hidden="true"></i></button>
                                        </div>
                                        <form action="AdmRegistrarEmp" method="POST">
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-12 mb-3">
                                                        <label for="txtusuario">Nombre de proveedor:</label>
                                                        <input type="text" class="form-control" id="txtusuario" name="txtusuario" >
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12 mb-3">
                                                        <label for="txtnombres">Dirección:</label>
                                                        <input type="text" class="form-control" id="txtnombres" name="txtnombres">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 mb-3">
                                                        <label for="txttelefono">Teléfono</label>
                                                        <input type="text" class="form-control" id="txttelefono" name="txttelefono">
                                                    </div>
                                                    <div class="col-md-7 mb-3">
                                                        <label for="txtdni">Email</label>
                                                        <input type="text" class="form-control" id="txtdni" name="txtdni">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                                                <button type="submit" class="btn btn-warning">Guardar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover shadow-lg p-3 mb-5 mt-4 bg-white rounded">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Dirección</th>
                                    <th scope="col">Teléfono</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Actualizar</th>
                                    <th scope="col">Eliminar</th>
                                </tr>
                            </thead>
                            <%                                List<Proveedor> lstproveedor = (List<Proveedor>) request.getAttribute("lsroveedor");
                            %>
                            <tbody>
                                <%
                                    for (Proveedor objproveedor : lstproveedor) {
                                %>
                                <tr>
                                    <th scope="row"><%=objproveedor.getId_proveedor()%></th>
                                    <td><%=objproveedor.getNombre()%></td>
                                    <td><%=objproveedor.getDireccion()%></td>
                                    <td><%=objproveedor.getTelefono()%></td>
                                    <td><%=objproveedor.getEmail()%></td>
                                    <td>
                                        <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#<%=objproveedor.getId_proveedor()%>">
                                            Actualizar
                                        </button>
                                        <div class="modal fade" id="<%=objproveedor.getId_proveedor()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="staticBackdropLabel"><%=objproveedor.getNombre()%></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <form action="AdmRegistrarEmp" method="POST">
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-md-12 mb-3">
                                                                    <label for="txtnombreprov">Nombre de proveedor:</label>
                                                                    <input type="text" class="form-control" id="txtnombreprov" name="txtnombreprov" value="<%=objproveedor.getNombre()%>">
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12 mb-3">
                                                                    <label for="txtdireccionprov">Dirección:</label>
                                                                    <input type="text" class="form-control" id="txtdireccionprov" name="txtdireccionprov" value="<%=objproveedor.getDireccion()%>">
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-5 mb-3">
                                                                    <label for="txttelefonoprov">Teléfono</label>
                                                                    <input type="text" class="form-control" id="txttelefonoprov" name="txttelefonoprov" value="<%=objproveedor.getTelefono()%>">
                                                                </div>
                                                                <div class="col-md-7 mb-3">
                                                                    <label for="txtemailprov">Email</label>
                                                                    <input type="text" class="form-control" id="txtemailprov" name="txtemailprov" value="<%=objproveedor.getEmail()%>">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="submit" class="btn btn-warning">Guardar</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="hidden" id="ide" value="<%=objproveedor.getId_proveedor()%>">
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
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
