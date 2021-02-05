/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("tr #btnEliminar").click(function () {
        var idp = $(this).parent().find("#idp").val();
        var us  = $(this).parent().find("#us").val();
        swal({
            title: "Estás Seguro de eliminar este producto?",
            icon: "warning",
            buttons: ["Cancelar", "Sí, Elimínalo"],
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(idp);
                        swal("Producto eliminado del carrito!", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="Car?action=Carrito&us="+us;
                            }
                        });
                    } else {
                        swal("El producto no fue eliminado!");
                    }
                });
        
    });
    function eliminar(idp) {
        var url = "Car?action=Eliminar&us="+us;
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp=" + idp,
            success: function (data, texStatus, jqXHR) {
            }
        });
    }
});

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


