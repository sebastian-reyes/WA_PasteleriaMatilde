/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.model;

/**
 *
 * @author Sebastián
 */
public class Producto {
    String id_producto;
    int id_cat;
    String nombre;
    String descripcion;
    int stock_actual;
    int stock_min;
    double precio;
    String ruta_img;

    public Producto() {
    }

    public Producto(String id_producto, int id_cat, String nombre, String descripcion, int stock_actual, int stock_min, double precio, String ruta_img) {
        this.id_producto = id_producto;
        this.id_cat = id_cat;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.stock_actual = stock_actual;
        this.stock_min = stock_min;
        this.precio = precio;
        this.ruta_img = ruta_img;
    }

    public String getId_producto() {
        return id_producto;
    }

    public void setId_producto(String id_producto) {
        this.id_producto = id_producto;
    }

    public int getId_cat() {
        return id_cat;
    }

    public void setId_cat(int id_cat) {
        this.id_cat = id_cat;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getStock_actual() {
        return stock_actual;
    }

    public void setStock_actual(int stock_actual) {
        this.stock_actual = stock_actual;
    }

    public int getStock_min() {
        return stock_min;
    }

    public void setStock_min(int stock_min) {
        this.stock_min = stock_min;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getRuta_img() {
        return ruta_img;
    }

    public void setRuta_img(String ruta_img) {
        this.ruta_img = ruta_img;
    }

    
    
    
}
