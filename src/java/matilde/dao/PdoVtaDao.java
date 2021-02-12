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
import matilde.idao.I_PdoVta;
import matilde.model.Pedido_Venta;
import matilde.model.Producto;

/**
 *
 * @author Sebastián
 */
public class PdoVtaDao implements I_PdoVta{

    @Override
    public List<Pedido_Venta> litarPedidtos(String id) {
        List<Pedido_Venta> lstpedidos = new ArrayList<>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try {
            PreparedStatement prepared = conex.prepareCall("{call sp_ListarPedidosCli(?)}");
            prepared.setString(1, id);
            ResultSet result = prepared.executeQuery();
            while (result.next()) {
                lstpedidos.add(new Pedido_Venta(result.getString(1),
                        result.getString(2),
                        result.getString(3),
                        result.getDate(4),
                        result.getString(5),
                        result.getString(6),
                        result.getString(7),
                        result.getString(8)));
            }
            result.close();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {
            
        }
        return lstpedidos;
    }
    
}
