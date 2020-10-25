/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    var valor = $("#obtInfo").val();
    var error1 = "'404'";
    
    if (valor == error1) {
        alertify.error('Error, Usuario no Encontrado!');
    }
    
    $("#password-iconn").click(function () {

        var password1 = document.getElementById('inputPassword');
        if (password1.type === "password") {
            password1.type = "text";
            $("#password-iconn").removeClass("fa-eye-slash");
            $("#password-iconn").addClass("fa-eye");
        } else {
            password1.type = "password";
            $("#password-iconn").removeClass("fa-eye");
            $("#password-iconn").addClass("fa-eye-slash");
        }
    });
    
    
});

(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                    alertify.error('Error, Campos Vacios!');
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();


