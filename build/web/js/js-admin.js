/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    var valor = $("#obtInfo").val();
    var dato1 = "'RegistroExitoso'";
    var dato2 = "'ErrorRegistro'";
    var dato3 = "'MineroExistente'";
    var dato4 = "'EliminadoExtitosamente'";

    switch (valor) {
        case dato1:
            alertify.success('Registro Exitoso!');
            break;

        case dato2:
            alertify.error('Error, se presento un problema, intente de nuevo!');
            break;

        case dato3:
            alertify.warning('Ya existe alguien con el correo electronico digitado!');
            break;
            
        case dato4:
            alertify.success('Registro Elimanado con Exito!');
            break;
    }

    $('#dataTable').DataTable({
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
        },
        columnDefs: [{
                width: "180px",
                targets: 3
            }]
    });

    //para la imagen agg
    $('#imgSalida').attr("src", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png");
    $('#file-input').change(function (e) {
        addImage(e);
    });
    function addImage(e) {
        var file = e.target.files[0],
                imageType = /image.*/;

        if (!file.type.match(imageType))
            return;

        var reader = new FileReader();

        reader.onload = function (e) {
            var result = e.target.result;
            $('#imgSalida').attr("src", result);
        }

        reader.readAsDataURL(file);
    }
    
    //para la imagen edit
    $('#file-input-edit').change(function (e) {
        addImageEdit(e);
    });

    function addImageEdit(e) {
        var file = e.target.files[0],
                imageType = /image.*/;

        if (!file.type.match(imageType))
            return;

        var reader = new FileReader();

        reader.onload = function (e) {
            var result = e.target.result;
            $('#imgSalida-edit').attr("src", result);
        }

        reader.readAsDataURL(file);
    }

    $('#modalEliminarMinero').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); 
        var nombre = button.data('whatever');
        var id = button.data('bind');
        
        var modal = $(this);
        modal.find('.modal-body #idMinero').val(id);
        modal.find('.modal-body #recipient-name').text("¿Desea eliminar a "+nombre+"?");
    });
    
    $('#modal_EditarMinero').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var idMinero = button.data('id');
        var tipoDocumento = button.data('id1');
        var numeroDocumento = button.data('id2');
        var nombres = button.data('id3');
        var apellidos = button.data('id4');
        var email = button.data('id5');
        var telefono = button.data('id6');
        var nombreFamiliar = button.data('id7');
        var telefonoFamiliar = button.data('id8');
        var direccion = button.data('id9');
        var foto = button.data('id10');
        var estado = button.data('id11');
        
        var modal = $(this);
        modal.find('.modal-title').text('Actualizar datos de ' + nombres);
        modal.find('.modal-body #idMinero').val(idMinero);
        modal.find('.modal-body #idMinero2').val(idMinero);
        modal.find('.modal-body #tipoDocumento').val(tipoDocumento);
        modal.find('.modal-body #numeroDocumento').val(numeroDocumento);
        modal.find('.modal-body #nombres').val(nombres);
        modal.find('.modal-body #apellidos').val(apellidos);
        modal.find('.modal-body #email').val(email);
        modal.find('.modal-body #telefono').val(telefono);
        modal.find('.modal-body #nombreFamiliar').val(nombreFamiliar);
        modal.find('.modal-body #telefonoFamiliar').val(telefonoFamiliar);
        modal.find('.modal-body #direccion').val(direccion);
        modal.find('.modal-body #estado').val(estado);
        
        document.getElementById("imgSalida-edit").src = "../../assets/img/avatar/"+foto;
        
    });
    
});


