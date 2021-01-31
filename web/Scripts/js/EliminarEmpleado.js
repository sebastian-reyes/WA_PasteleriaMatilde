/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("tr #btnEliminar").click(function () {
        var ide = $(this).parent().find("#ide").val();
        swal({
            title: "Estás Seguro de eliminar este Empleado?",
            text: "Una vez eliminado no podrás recuperarlo",
            icon: "warning",
            buttons: ["Cancelar", "Sí, Elimínalo"],
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(ide);
                        swal("Empleado eliminado!", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="Empleados"
                            }
                        });
                    } else {
                        swal("El empleado no fue eliminado!");
                    }
                });
        
    });
    function eliminar(ide) {
        var url = "EliminarUsuarioController";
        $.ajax({
            type: 'POST',
            url: url,
            data: "id=" + ide,
            success: function (data, texStatus, jqXHR) {
            }
        });
    }
});


