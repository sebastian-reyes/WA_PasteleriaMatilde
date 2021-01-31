<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link href="Styles/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/ico" href="img/icono/logo-matilde.ico">
        <title>Login</title>
    </head>
    <body>
        <div class="container mt-3 mb-3">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="img/login/login-img.jpg" class="img img-fluid" alt=""/>
                </div> 
                <div class="col-lg-7 px-5 pt-4">
                    <h1 class="font-weight-bold py-3">Pastelería Doña Matilde</h1>
                    <h4>Autentificación</h4>
                    <form method="POST" action="Autenticacion">
                       
                        <div class="form-row">
                            <div class="col-lg-7"> 
                                <input type="text" name="txtusuario" placeholder="Usuario" class="form-control my-2 p-4">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7"> 
                                <input type="password" name="txtpassword" placeholder="Contraseña" class="form-control my-2 p-4">
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    </body>
</html>
