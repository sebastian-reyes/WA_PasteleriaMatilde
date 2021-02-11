/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import matilde.bd.BDConnection;
import matilde.idao.I_Proveedor;
import matilde.model.Proveedor;

/**
 *
 * @author Sebastián
 */
public class ProveedorDao implements I_Proveedor{

    @Override
    public List<Proveedor> listarProveedores() {
        List<Proveedor> lstproveedor = new ArrayList<>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try{
            Statement statement = conex.createStatement();
            ResultSet resultado = statement.executeQuery("{CALL sp_ListarProveedores()}");
            while(resultado.next()){
                lstproveedor.add(new Proveedor(resultado.getString(1),
                resultado.getString(2),
                resultado.getString(3),
                resultado.getString(4),
                resultado.getString(5)));
            }
        }catch(SQLException ex){
            
        }
        return lstproveedor;
    }
    
}
