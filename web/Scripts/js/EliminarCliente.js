
$(document).ready(function () {
    $("tr #btnEliminar").click(function () {
        var idc = $(this).parent().find("#idc").val();
        swal({
            title: "Estás Seguro de eliminar este Cliente?",
            text: "Una vez eliminado no podrás recuperarlo",
            icon: "warning",
            buttons: ["Cancelar", "Sí, Elimínalo"],
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(idc);
                        swal("Cliente eliminado!", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="Clientes"
                            }
                        });
                    } else {
                        swal("El cliente no fue eliminado!");
                    }
                });
        
    });
    function eliminar(idc) {
        var url = "EliminarUsuarioController";
        $.ajax({
            type: 'POST',
            url: url,
            data: "id=" + idc,
            success: function (data, texStatus, jqXHR) {
            }
        });
    }
});
