/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.idao;

import java.util.List;
import matilde.model.Carrito;
import matilde.model.Detalle_Pedido_Venta;

/**
 *
 * @author Sebastián
 */
public interface I_DetPdoVta {

    public List<Detalle_Pedido_Venta> listarDetallePedido(String idpedido);
    public boolean registrarDetalleVenta (Carrito objcarrito);
}
