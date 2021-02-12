package matilde.model;

public class Detalle_Pedido_Venta {

    String idpedido;
    String nombre;
    String ruta_img;
    int cantidad;
    Double monto;

    public Detalle_Pedido_Venta(String idpedido, String nombre, String ruta_img, int cantidad, Double monto) {
        this.idpedido = idpedido;
        this.nombre = nombre;
        this.ruta_img = ruta_img;
        this.cantidad = cantidad;
        this.monto = monto;
    }

    public Detalle_Pedido_Venta() {
    }

    public String getIdpedido() {
        return idpedido;
    }

    public void setIdpedido(String idpedido) {
        this.idpedido = idpedido;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRuta_img() {
        return ruta_img;
    }

    public void setRuta_img(String ruta_img) {
        this.ruta_img = ruta_img;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }
    
    
    
}
