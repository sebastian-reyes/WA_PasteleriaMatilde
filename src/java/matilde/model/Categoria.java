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
public class Categoria {
    int id_cat;
    String nom_cat;
    String descripcion;
    String ruta_img;

    public Categoria() {
    }

    public Categoria(int id_cat, String nom_cat, String descripcion, String ruta_img) {
        this.id_cat = id_cat;
        this.nom_cat = nom_cat;
        this.descripcion = descripcion;
        this.ruta_img = ruta_img;
    }

    public int getId_cat() {
        return id_cat;
    }

    public void setId_cat(int id_cat) {
        this.id_cat = id_cat;
    }

    public String getNom_cat() {
        return nom_cat;
    }

    public void setNom_cat(String nom_cat) {
        this.nom_cat = nom_cat;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getRuta_img() {
        return ruta_img;
    }

    public void setRuta_img(String ruta_img) {
        this.ruta_img = ruta_img;
    } 
    
}
