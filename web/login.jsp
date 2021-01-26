<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/index.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <div class="container mt-3 mb-3">
            <div class="row no-gutters">
                <div class="col-md-5">
                    <img src="img/login/login-img.jpg" class="img img-fluid" alt=""/>
                </div> 
                <div class="col-md-7 px-5 pt-5">
                    <h1 class="py-3">Pastelería Doña Matilde</h1>
                    <h4>Autentificación</h4>
                    <form method="POST" action="Autenticacion">
                        <div class="form-row">
                            <div class="col-lg-7"> 
                                <input type="text" name="txtusuario" placeholder="Usuario" class="form-control my-2 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7"> 
                                <input type="password" name="txtpassword" placeholder="Contraseña" class="form-control my-2 p-3">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7"> 
                                <button type="submit" class="btn-login mt-3 mb-3">Ingresar</button>
                            </div>
                        </div>
                        <%
                            if (request.getAttribute("respuesta") != null) {
                        %>
                        <div>
                            <div class="alert alert-<%=request.getAttribute("color")%> text-center" role="alert">
                                <%=request.getAttribute("respuesta").toString()%>
                            </div>
                        </div>
                        <%
                            }
                        %>
                        <p class="mb-4">No estás registrado aún? <a href="Registro">Registrate aquí</a></p>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
