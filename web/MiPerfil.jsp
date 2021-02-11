<%@page import="matilde.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="ScriptStyle.jsp" %>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&family=Poppins:wght@300&display=swap"
              rel="stylesheet">
        <title>Pastelería Doña Matilde</title>
        <link href="Styles/css/sections.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container">
            <%                
                Usuario objuser = (Usuario) request.getAttribute("usuario");
            %>
            <section class="mt-3 mb-4">
                <h1 class="text-center mb-3"> <%=objuser.getNombres()%> <%=objuser.getApellido_paterno()%> <%=objuser.getApellido_materno()%></h1>
                <div class="row">
                    <div class="col-md-6 mt-2">
                        <div class="card shadow-lg">
                            <div class="card-body">
                                <h2 class="text-center">Mis Datos</h2>
                                <hr/>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12 mb-3">
                                            <label for="txtusuario">Usuario</label>
                                            <input type="text" class="form-control" id="txtusuario" name="txtusuario" value="<%=objuser.getUsername()%>" readonly="">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="txtnombres">Nombres</label>
                                            <input type="text" class="form-control" id="txtnombres" name="txtnombres" value="<%=objuser.getNombres()%>" readonly="">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="txtappat">Ap. Paterno</label>
                                            <input type="text" class="form-control" id="txtappat" name="txtappat" value="<%=objuser.getApellido_paterno()%>" readonly="">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="txtapmat">Ap. Materno</label>
                                            <input type="text" class="form-control" id="txtapmat" name="txtapmat" value="<%=objuser.getApellido_materno()%>" readonly="">
                                        </div>
                                    </div>
                                    <div class=" mb-3">
                                        <label for="txtemail">Correo electrónico</label>
                                        <input type="email" class="form-control" id="txtemail" name="txtemail" value="<%=objuser.getEmail()%>" readonly="">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5 mb-3">
                                            <label for="txttelefono">Celular</label>
                                            <input type="text" class="form-control" id="txttelefono" name="txttelefono" value="<%=objuser.getTelefono()%>" readonly="">
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="txtdocumento">Tipo Documento</label>
                                            <input type="text" class="form-control" readonly="" value="DNI">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="txtdni">Documento</label>
                                            <input type="text" class="form-control" id="txtdni" name="txtdni" value="<%=objuser.getDni()%>" readonly="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mt-2">
                        <div class="card shadow-lg">
                            <div class="card-body ">
                                <h2 class="text-center ">Mis compras</h2>
                                <hr/>
                                <div class="table-responsive ">
                                    <table class="table table-hover">
                                        <thead class="table-dark">
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">First</th>
                                                <th scope="col">Last</th>
                                                <th scope="col">Handle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%@include file="btn-carrito.jsp" %>
    </body>
</html>
