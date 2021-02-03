/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.idao;

import java.util.List;
import matilde.model.Producto;

/**
 *
 * @author Sebastián
 */
public interface I_ProductoDao {
    public List<Producto> listarProductos(int idcat);
    public int agregarProd(Producto p);
    public boolean eliminarProducto(String id);
    public Producto obtenerProducto(String id);
}
