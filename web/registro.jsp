<%-- 
    Document   : registro
    Created on : 26-ene-2021, 13:57:54
    Author     : Sebastián
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link href="Styles/css/login.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/ico" href="img/icono/logo-matilde.ico">
        <title>Registro</title>
    </head>
    <body>
        <div class="container mt-3 mb-3">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="img/login/registro-img.jpg" class="img img-fluid" alt=""/>
                </div> 
                <div class="col-lg-7 px-5 pt-5">
                    <h2>Registro 'Pastelería Doña Matilde'</h2>
                    <form method="POST" action="RegistroController">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txtusuario">Usuario</label>
                                <input type="text" class="form-control" id="txtusuario" name="txtusuario" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txtpassword">Contraseña</label>
                                <input type="text" class="form-control" id="txtpassword" name="txtpassword">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txtnombres">Nombres</label>
                                <input type="text" class="form-control" id="txtnombres" name="txtnombres">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="txtappat">Apellido Paterno</label>
                                <input type="text" class="form-control" id="txtappat" name="txtappat">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="txtapmat">Apellido Materno</label>
                                <input type="text" class="form-control" id="txtapmat" name="txtapmat">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtemail">Correo electrónico</label>
                            <input type="email" class="form-control" id="txtemail" name="txtemail">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txttelefono">Celular</label>
                                <input type="text" class="form-control" id="txttelefono" name="txttelefono">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="txtdocumento">Tipo Documento</label>
                                <select id="inputState" class="form-control">
                                    <option>DNI</option>
                                </select>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="txtdni">Documento</label>
                                <input type="text" class="form-control" id="txtdni" name="txtdni">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                <label class="form-check-label" for="gridCheck">
                                    Acepto los <a href="#">Terminos y Condiciones</a>
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn-login mt-3 mb-4">Registrarse</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    </body>
</html>
