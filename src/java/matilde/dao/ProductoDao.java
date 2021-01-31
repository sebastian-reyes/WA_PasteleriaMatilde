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
import matilde.idao.I_ProductoDao;
import matilde.model.Producto;

/**
 *
 * @author Sebastián
 */
public class ProductoDao implements I_ProductoDao{

    @Override
    public List<Producto> listarProductos(int idcat) {
        List<Producto> lstprod = new ArrayList<>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try{
            PreparedStatement prepared = conex.prepareCall("{call sp_ListarProductosCat(?)}");
            prepared.setInt(1, idcat);
            ResultSet result = prepared.executeQuery();
            while(result.next()){
                lstprod.add(new Producto(result.getString(1), 
                                         result.getInt(2), 
                                         result.getString(3), 
                                         result.getString(4), 
                                         result.getInt(5), 
                                         result.getInt(6), 
                                         result.getDouble(7), 
                                         result.getString(8)));
            }
            result.close();
            prepared.close();
            objconex.Desconectar();
        }catch(SQLException ex){
            
        }
        return lstprod;
    }

    @Override
    public int agregarProd(Producto p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarProducto(String id) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Boolean respuesta = false;
        try {
            PreparedStatement prepared = conex.prepareStatement("{call sp_eliminarProducto(?)}");
            prepared.setString(1, id);
            prepared.execute();
            respuesta = prepared.getUpdateCount() > 0;
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return respuesta;
    }
    
}
