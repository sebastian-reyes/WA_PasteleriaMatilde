/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("tr #btnEliminar").click(function () {
        var ide = $(this).parent().find("#idp").val();
        var idc = $(this).parent().find("#idc").val();
        swal({
            title: "Estás Seguro de eliminar este producto?",
            text: "Una vez eliminado no podrás recuperarlo",
            icon: "warning",
            buttons: ["Cancelar", "Sí, Elimínalo"],
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(ide);
                        swal("Producto eliminado!", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="AdmProductos?id="+idc;
                            }
                        });
                    } else {
                        swal("El producto no fue eliminado!");
                    }
                });
        
    });
    function eliminar(idp) {
        var url = "EliminarProductoController";
        $.ajax({
            type: 'POST',
            url: url,
            data: "id=" + idp,
            success: function (data, texStatus, jqXHR) {
            }
        });
    }
});

