<%-- 
    Document   : modal_aggMinero
    Created on : 24 oct. 2020, 23:19:08
    Author     : Braro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="modal_EditarMinero" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">Actualizar datos de </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-dark">
                
                    <div class="row justify-content-md-center align-items-center">

                        <div class="col-12 col-lg-5 text-center">
                            <form action="../../Servelet_Minero" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="exampleFormControlFile1" class="mb-3">Tu foto de Perfil actual</label>
                                    <img id="imgSalida-edit" width="80%" class="img-fluid rounded-circle" height="100%" src="" />
                                    <input type="file" name="file-input-edit" id="file-input-edit" class="form-control-file mt-3" style="word-wrap: break-word;" accept="image/*" required="">
                                    <input type="text" name="idMinero" id="idMinero" style="visibility: hidden">
                                </div>
                                <button type="submit" class="btn btn-dark" name="accion" value="actualizarFoto">Actualizar Foto</button>
                            </form>
                        </div>

                        <div class="col-12 col-lg-7">
                            <form action="../../Servelet_Minero" method="post">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Tipo de Identificación</label>
                                        <select name="tipoDocumento" id="tipoDocumento" class="form-control" required="">
                                            <option selected value="">Seleccione...</option>
                                            <option value="Cédula de Ciudadanía">Cédula de Ciudadanía</option>
                                            <option value="Cédula de Extranjería">Cédula de Extranjería</option>
                                            <option value="Pasaporte">Pasaporte</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for=""># Numero</label>
                                        <input type="number" name="numeroDocumento" id="numeroDocumento" class="form-control" required="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Nombres</label>
                                        <input type="text" class="form-control" name="nombres" id="nombres" required="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="">Apellidos</label>
                                        <input type="text" class="form-control" name="apellidos" id="apellidos" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Correo Electronico</label>
                                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" required="">
                                    <small id="emailHelp" class="form-text text-muted">El correo electronico es unico!</small>
                                </div>
                                <div class="form-group">
                                    <label for="">Telefono</label>
                                    <input type="number" class="form-control" name="telefono" id="telefono" placeholder="3133333333" aria-describedby="emailHelp" required="">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Nombre de un Familiar</label>
                                        <input type="text" class="form-control" name="nombreFamiliar" id="nombreFamiliar" required="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="">Telefono del Familiar</label>
                                        <input type="text" class="form-control" placeholder="3133333333" name="telefonoFamiliar" id="telefonoFamiliar" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Dirección Fisica</label>
                                    <input type="text" class="form-control" name="direccion" id="direccion" aria-describedby="emailHelp" required="">
                                </div>
                                <input type="text" name="idMinero" id="idMinero2" style="visibility: hidden">
                                <div class="text-right mt-3 mb-3">
                                    <button type="submit" class="btn btn-dark" name="accion" value="actualizarMinero">Guardar Datos</button>
                                </div>
                            </form>
                        </div>

                    </div>
            </div>                  
        </div><!-- /.modal-content -->
    </div>
</div>
