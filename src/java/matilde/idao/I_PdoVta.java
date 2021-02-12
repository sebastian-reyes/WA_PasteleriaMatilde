/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.idao;

import java.util.List;
import matilde.model.Pedido_Venta;

/**
 *
 * @author Sebastián
 */
public interface I_PdoVta {
    public List<Pedido_Venta> litarPedidtos(String id);
}
