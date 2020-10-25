<%-- 
    Document   : index
    Created on : 24 oct. 2020, 17:33:03
    Author     : Braro
--%>

<%@page import="UTIL.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- title -->
        <title>Technology RUM</title>

        <!-- icon -->
        <link href="assets/img/8095.png" rel="icon">

        <!-- Fonts -->

        <!-- Styles -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Alert -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container-fluid">
            
            <div class="row no-gutter">
                
                <!-- The image half -->
                <div class="col-md-6 d-none d-md-flex bg-image">
                    <%
                        if (request.getParameter("mens") != null) { %>
                            <input type="text" name="obtInfo" id="obtInfo" value="<%out.println(request.getParameter("mens")); %>" style="visibility: hidden"> <%
                        }
                    %>
                </div>

                <!-- The content half -->
                <div class="col-md-6 bg-light bg-login">
                    <div class="login d-flex align-items-center py-5">

                        <!-- Demo content-->
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-10 col-xl-7 mx-auto">
                                    <h1 class="display-5 text-center">TechnologyRUM</h1>
                                    <p class="text-muted text-center mb-4">Bienvenido, digite los siguiente datos</p>

                                    <form id="formulario-login" method="post" action="Servelet_login" class="needs-validation" novalidate>
                                        <div class="form-group mb-3">
                                            <input id="inputEmail" type="email" name="email" placeholder="Correo Electronico" autofocus="" class="form-control rounded-pill border-0 shadow-sm px-4" required="true">
                                            <div class="invalid-feedback">
                                                Por favor, digita un correo electronico!
                                            </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <input id="inputPassword" type="password" name="password" placeholder="Contraseña" class="form-control password1 rounded-pill border-0 shadow-sm px-4 text-primary" required="true">
                                            <span id="password-iconn" class="fa fa-eye-slash password-icon show-password"></span>
                                            <div class="invalid-feedback">
                                                Por favor, digita una contraseña!
                                            </div>
                                        </div>

                                        <div class="custom-control custom-checkbox mb-3">
                                            <input id="customCheck1" type="checkbox" checked class="custom-control-input">
                                            <label for="customCheck1" class="custom-control-label">Recordar Contraseña</label>
                                        </div>

                                        <button type="submit" class="btn btn-primario btn-block text-uppercase mb-2 rounded-pill shadow-sm" name="accion" value="login">Inicia Sesión</button>

                                        <div class="text-center justify-content-between mt-4">
                                            <p> <strong>Universidad de Santander</strong> <br>Ingenieria de Sistemas</p>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div><!-- End -->

                    </div>
                </div><!-- End -->

            </div>
        </div>


        <!-- Scripts -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/4be0578cbe.js" crossorigin="anonymous"></script>

        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
        <script src="js/js-login.js" type="text/javascript"></script>
    </body>
</html>
