
package matilde.model;

import java.sql.Date;

public class Pedido_Venta {

    String id;
    String cliente;
    String empleado;
    Date fecha;
    String dirección;
    String tipo_pago;
    String estado;
    String cancelado;

    public Pedido_Venta(String id, String cliente, String empleado, Date fecha, String dirección, String tipo_pago, String estado, String cancelado) {
        this.id = id;
        this.cliente = cliente;
        this.empleado = empleado;
        this.fecha = fecha;
        this.dirección = dirección;
        this.tipo_pago = tipo_pago;
        this.estado = estado;
        this.cancelado = cancelado;
    }

    public Pedido_Venta() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getEmpleado() {
        return empleado;
    }

    public void setEmpleado(String empleado) {
        this.empleado = empleado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDirección() {
        return dirección;
    }

    public void setDirección(String dirección) {
        this.dirección = dirección;
    }

    public String getTipo_pago() {
        return tipo_pago;
    }

    public void setTipo_pago(String tipo_pago) {
        this.tipo_pago = tipo_pago;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCancelado() {
        return cancelado;
    }

    public void setCancelado(String cancelado) {
        this.cancelado = cancelado;
    }
    
}
