<%-- 
    Document   : registro
    Created on : 26-ene-2021, 13:57:54
    Author     : Sebastián
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/registro.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/index.css" rel="stylesheet" type="text/css"/>
        <title>Registro</title>
    </head>
    <body>
        <div class="container mt-3 mb-3">
            <div class="row">
                <div class="col-lg-5">
                    <img src="img/login/registro-img.jpg" class="img img-fluid" alt=""/>
                </div> 
                <div class="col-lg-7 px-5 pt-5">
                    <h2>Registro 'Pastelería Doña Matilde'</h2>
                    <form method="POST" action="Registrar" class="mt-5">
                        <div class="row mt-2">
                            <div class="col-md-6">
                                <label for="txtusuario">Usuario</label>
                                <input type="text" class="form-control" id="txtusuario" name="txtusuario" >
                            </div>
                            <div class="col-md-6">
                                <label for="txtpassword">Contraseña</label>
                                <input type="text" class="form-control" id="txtpassword" name="txtpassword">
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6">
                                <label for="txtnombres">Nombres</label>
                                <input type="text" class="form-control" id="txtnombres" name="txtnombres">
                            </div>
                            <div class="col-md-3">
                                <label for="txtappat">Apellido Paterno</label>
                                <input type="text" class="form-control" id="txtappat" name="txtappat">
                            </div>
                            <div class="col-md-3">
                                <label for="txtapmat">Apellido Materno</label>
                                <input type="text" class="form-control" id="txtapmat" name="txtapmat">
                            </div>
                        </div>
                        <div class="mt-2">
                            <label for="txtemail">Correo electrónico</label>
                            <input type="email" class="form-control" id="txtemail" name="txtemail">
                        </div>
                        <div class="row mt-2">
                            <div class=" col-md-6">
                                <label for="txttelefono">Celular</label>
                                <input type="text" class="form-control" id="txttelefono" name="txttelefono">
                            </div>
                            <div class="col-md-3">
                                <label for="txtdocumento">Tipo Documento</label>
                                <select id="inputState" class="form-select">
                                    <option>DNI</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="txtdni">Documento</label>
                                <input type="text" class="form-control" id="txtdni" name="txtdni">
                            </div>
                        </div>
                        <div class="mt-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                <label class="form-check-label" for="gridCheck">
                                    Acepto los <a href="#">Terminos y Condiciones</a>
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn-login mb-4 mt-4">Registrarse</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
