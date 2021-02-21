$(document).ready(function () {
    $("tr #cantidad").click(function () {
        var user = $(this).parent().find("#us").val();
        var idp = $(this).parent().find("#idpro").val();
        var cantidad = $(this).parent().find("#cantidad").val();
        var url = "Car?action=ActualizarCantidad";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp=" + idp + "&cantidad=" + cantidad,
            success: function (data, textStatus, jqXHR) {
                location.href = "Car?action=Carrito&us=" + user;
            }
        });
    });

});

