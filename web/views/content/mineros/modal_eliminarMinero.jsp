<%-- 
    Document   : modal_eliminarMinero
    Created on : 25 oct. 2020, 10:20:50
    Author     : Braro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="modalEliminarMinero" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <form action="../../Servelet_Minero" id="FormCoordinador" class="form-horizontal" method="post">
            <div class="modal-content">
                <div class="modal-body text-dark">
                    <input type="text" name="idMinero" id="idMinero" style="visibility: hidden">
                    <div class="row justify-content-md-center text-center">
                        
                        <div class="col-12 text-center">
                            <i class="fas fa-user-times"></i>
                            <h4 id="recipient-name">¿Desea eliminar a ?</h4>
                        </div>
                        <div class="col-4 col-lg-1">
                            <button type="button" class="btn btn-default" data-dismiss="modal">No</button> 
                        </div>
                        <div class="col-6 col-lg-6">
                            <button type="submit" class="btn btn-danger" name="accion" value="eliminar">Si, Eliminar!</button>
                        </div> 
                    </div>
                </div>                  
            </div><!-- /.modal-content -->
        </form>
    </div>
</div>
