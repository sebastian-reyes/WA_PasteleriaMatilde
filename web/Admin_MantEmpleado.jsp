<%@page import="matilde.model.Usuario"%>
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
                            <h1>Mantenimiento de Empleados</h1>
                            <p>Se puede actualizar crear, actualizar y eliminar empleados</p>
                        </div>
                        <div class="main__greeting ms-auto">
                            <a href="#" class="btn btn-primary">Ver reporte de empleados</a><br>
                            <!-- Button trigger modal -->
                            <button type="button" id="btnNuevo" class="btn btn-success mt-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                Nuevo empleado
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header bg-negro">
                                            <h5 class="modal-title text-white" id="staticBackdropLabel">Nuevo Empleado</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"><i class="fa fa-times text-white" aria-hidden="true"></i></button>
                                        </div>
                                        <form action="AdmRegistrarEmp" method="POST">
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="txtusuario">Usuario</label>
                                                        <input type="text" class="form-control" id="txtusuario" name="txtusuario" >
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="txtpassword">Contraseña</label>
                                                        <input type="text" class="form-control" id="txtpassword" name="txtpassword">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="txtnombres">Nombres</label>
                                                        <input type="text" class="form-control" id="txtnombres" name="txtnombres">
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="txtappat">Ap. Paterno</label>
                                                        <input type="text" class="form-control" id="txtappat" name="txtappat">
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="txtapmat">Ap. Materno</label>
                                                        <input type="text" class="form-control" id="txtapmat" name="txtapmat">
                                                    </div>
                                                </div>
                                                <div class=" mb-3">
                                                    <label for="txtemail">Correo electrónico</label>
                                                    <input type="email" class="form-control" id="txtemail" name="txtemail">
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 mb-3">
                                                        <label for="txttelefono">Celular</label>
                                                        <input type="text" class="form-control" id="txttelefono" name="txttelefono">
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="txtdocumento">Tipo Documento</label>
                                                        <select id="inputState" class="form-select">
                                                            <option>DNI</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="txtdni">Documento</label>
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
                                    <th scope="col">Nombres</th>
                                    <th scope="col">Apellido Paterno</th>
                                    <th scope="col">Apellido Materno</th>
                                    <th scope="col">Usuario</th>
                                    <th scope="col">Actualizar</th>
                                    <th scope="col">Eliminar</th>
                                </tr>
                            </thead>
                            <%
                                List<Usuario> lstcliente = (List<Usuario>) request.getAttribute("lstemp");
                            %>
                            <tbody>
                                <%
                                    for (Usuario objcliente : lstcliente) {
                                %>
                                <tr>
                                    <th scope="row"><%=objcliente.getId_usuario()%></th>
                                    <td><%=objcliente.getNombres()%></td>
                                    <td><%=objcliente.getApellido_paterno()%></td>
                                    <td><%=objcliente.getApellido_materno()%></td>
                                    <td><%=objcliente.getUsername()%></td>
                                    <td>
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#<%=objcliente.getUsername()%>">
                                            Actualizar
                                        </button>
                                        <!-- Modal -->
                                        <div class="modal fade" id="<%=objcliente.getUsername()%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel"><%=objcliente.getNombres()%> <%=objcliente.getApellido_paterno()%> <%=objcliente.getApellido_materno()%></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form action="ActualizarEmp" method="POST">
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-md-6 mb-3">
                                                                    <input type="hidden" class="form-control" id="txtid" name="txtid" value="<%=objcliente.getId_usuario()%>">
                                                                    <label for="txtusuario">Usuario</label>
                                                                    <input type="text" class="form-control" id="txtusuario" name="txtusuario" value="<%=objcliente.getUsername()%>">
                                                                </div>
                                                                <div class="col-md-6 mb-3">
                                                                    <label for="txtpassword">Contraseña</label>
                                                                    <input type="password" class="form-control" id="txtpassword" name="txtpassword" value="<%=objcliente.getPassword()%>">
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6 mb-3">
                                                                    <label for="txtnombres">Nombres</label>
                                                                    <input type="text" class="form-control" id="txtnombres" name="txtnombres" value="<%=objcliente.getNombres()%>">
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="txtappat">Ap. Paterno</label>
                                                                    <input type="text" class="form-control" id="txtappat" name="txtappat" value="<%=objcliente.getApellido_paterno()%>">
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="txtapmat">Ap. Materno</label>
                                                                    <input type="text" class="form-control" id="txtapmat" name="txtapmat" value="<%=objcliente.getApellido_materno()%>">
                                                                </div>
                                                            </div>
                                                            <div class=" mb-3">
                                                                <label for="txtemail">Correo electrónico</label>
                                                                <input type="email" class="form-control" id="txtemail" name="txtemail" value="<%=objcliente.getEmail()%>">
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-5 mb-3">
                                                                    <label for="txttelefono">Celular</label>
                                                                    <input type="text" class="form-control" id="txttelefono" name="txttelefono" value="<%=objcliente.getTelefono()%>">
                                                                </div>
                                                                <div class="col-md-4 mb-3">
                                                                    <label for="txtdocumento">Tipo Documento</label>
                                                                    <select id="inputState" class="form-select">
                                                                        <option>DNI</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="txtdni">Documento</label>
                                                                    <input type="text" class="form-control" id="txtdni" name="txtdni" value="<%=objcliente.getDni()%>">
                                                                </div>
                                                                <div class="col-md-12 mb-3">
                                                                    <label for="txtconfpass">Confirmar Contraseña</label>
                                                                    <input type="text" class="form-control" id="txtconfpass" name="txtconfpass" placeholder="Confirmar contaseña">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="submit" class="btn btn-warning">Actualizar</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="hidden" id="ide" value="<%=objcliente.getId_usuario()%>">
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
        <script src="Scripts/js/EliminarEmpleado.js" type="text/javascript"></script> 
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="Scripts/js/admin_scripts.js"></script>
        <script src="Scripts/Bootstrap/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
