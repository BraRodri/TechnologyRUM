<%-- 
    Document   : modal_CerrarSesion
    Created on : 24 oct. 2020, 22:01:39
    Author     : Braro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <form action="" id="FormCoordinador" class="form-horizontal" method="post">
            <div class="modal-content">
                <div class="modal-body text-dark">
                    <div class="row justify-content-md-center">
                        
                        <div class="col-12 text-center">
                            <i class="fas fa-question"></i>
                            <h4>¿Deseas Cerrar Sesión?</h4>
                        </div>
                        <div class="col-4 col-lg-1">
                            <button type="button" class="btn btn-default" data-dismiss="modal">No</button> 
                        </div>
                        <div class="col-6 col-lg-6">
                            <a href="../../Servelet_login?accion=logout" class="btn btn-primary" id="lnkLogout">Si, Cerrar Sesión</a>
                        </div> 
                    </div>
                </div>                  
            </div><!-- /.modal-content -->
        </form>
    </div>
</div>
