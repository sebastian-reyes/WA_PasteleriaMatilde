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
import matilde.idao.I_CategoriaDao;
import matilde.model.Categoria;

/**
 *
 * @author Sebastián
 */
public class CategoriaDao implements I_CategoriaDao{

    @Override
    public List<Categoria> listarCat() {
        List<Categoria> lstcat = new ArrayList<>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try {
            Statement statement = conex.createStatement();
            ResultSet resultado = statement.executeQuery("{CALL sp_ListarCategorias()}");
            while (resultado.next()) {
                lstcat.add(new Categoria(resultado.getInt(1),
                        resultado.getString(2), 
                        resultado.getString(3), 
                        resultado.getString(4)));
            }
            resultado.close();
            statement.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return lstcat;
    }
    
}
