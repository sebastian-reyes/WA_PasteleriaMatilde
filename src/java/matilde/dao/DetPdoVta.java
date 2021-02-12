/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import matilde.bd.BDConnection;
import matilde.idao.I_DetPdoVta;
import matilde.model.Detalle_Pedido_Venta;

public class DetPdoVta implements I_DetPdoVta{

    @Override
    public List<Detalle_Pedido_Venta> listarDetallePedido(String idpedido) {
        List<Detalle_Pedido_Venta> lstdetalle = new ArrayList<>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try {
            PreparedStatement prepared = conex.prepareCall("{call sp_listarDetallePedidoVta(?)}");
            prepared.setString(1, idpedido);
            ResultSet result = prepared.executeQuery();
            while (result.next()) {
                lstdetalle.add(new Detalle_Pedido_Venta(result.getString(1),
                        result.getString(2),
                        result.getString(3),
                        result.getInt(4),
                        result.getDouble(5)));
            }
            result.close();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {
            
        }
        return lstdetalle;
    }
    
}
