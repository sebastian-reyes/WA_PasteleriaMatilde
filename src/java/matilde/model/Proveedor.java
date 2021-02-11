
package matilde.model;

public class Proveedor {
    String id_proveedor;
    String nombre;
    String direccion;
    String telefono;
    String email;

    public Proveedor(String id_proveedor, String nombre, String direccion, String telefono, String email) {
        this.id_proveedor = id_proveedor;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.email = email;
    }

    public Proveedor() {
    }

    public String getId_proveedor() {
        return id_proveedor;
    }

    public void setId_proveedor(String id_proveedor) {
        this.id_proveedor = id_proveedor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
