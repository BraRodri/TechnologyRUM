<%-- 
    Document   : modal_aggMinero
    Created on : 24 oct. 2020, 23:19:08
    Author     : Braro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="modal_RegistrarMinero" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">Ventana de Registro</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-dark">
                
                <form action="../../Servelet_Minero" method="post" enctype="multipart/form-data">
                
                    <div class="row justify-content-md-center align-items-center">

                        <div class="col-12 col-lg-5 text-center">

                                <div class="form-group">
                                    <label for="exampleFormControlFile1" class="mb-3">Elige una foto de Perfil</label>
                                    <img id="imgSalida" width="80%" class="img-fluid rounded-circle" height="100%" src="" />
                                    <input type="file" name="file-input" id="file-input" class="form-control-file mt-3" style="word-wrap: break-word;" accept="image/*" required="">
                                </div>

                        </div>

                        <div class="col-12 col-lg-7">

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Tipo de Identificación</label>
                                        <select name="tipoDocumento" class="form-control" required="">
                                            <option selected value="">Seleccione...</option>
                                            <option value="Cédula de Ciudadanía">Cédula de Ciudadanía</option>
                                            <option value="Cédula de Extranjería">Cédula de Extranjería</option>
                                            <option value="Pasaporte">Pasaporte</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for=""># Numero</label>
                                        <input type="number" name="numeroDocumento" class="form-control" required="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Nombres</label>
                                        <input type="text" class="form-control" name="nombres" required="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="">Apellidos</label>
                                        <input type="text" class="form-control" name="apellidos" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Correo Electronico</label>
                                    <input type="email" class="form-control" name="email" aria-describedby="emailHelp" required="">
                                    <small id="emailHelp" class="form-text text-muted">El correo electronico es unico!</small>
                                </div>
                                <div class="form-group">
                                    <label for="">Telefono</label>
                                    <input type="number" class="form-control" name="telefono" placeholder="3133333333" aria-describedby="emailHelp" required="">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Nombre de un Familiar</label>
                                        <input type="text" class="form-control" name="nombreFamiliar" required="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="">Telefono del Familiar</label>
                                        <input type="text" class="form-control" placeholder="3133333333" name="telefonoFamiliar" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Dirección Fisica</label>
                                    <input type="text" class="form-control" name="direccion" aria-describedby="emailHelp" required="">
                                </div>
                                <div class="text-right mt-3 mb-3">
                                    <button type="submit" class="btn btn-dark" name="accion" value="agregarMine">Registrar Minero</button>
                                </div>

                        </div>

                    </div>
                    
                </form>
            </div>                  
        </div><!-- /.modal-content -->
    </div>
</div>
