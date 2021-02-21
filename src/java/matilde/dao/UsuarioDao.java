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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import matilde.bd.BDConnection;
import matilde.idao.I_UsuarioDao;
import matilde.model.Usuario;

/**
 *
 * @author Sebastián
 */
public class UsuarioDao implements I_UsuarioDao {

    @Override
    public Usuario validarUsuario(String user, String password) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Usuario objusuario = null;
        try {
            PreparedStatement prepared = conex.prepareCall("{call sp_VerificarUsuario(?,?)}");
            prepared.setString(1, user);
            prepared.setString(2, password);
            ResultSet result = prepared.executeQuery();
            if (result.next()) {
                objusuario = new Usuario(result.getString(1),
                        result.getString(2),
                        result.getString(3),
                        result.getString(4),
                        result.getString(5),
                        result.getString(6),
                        result.getString(7),
                        result.getString(8),
                        result.getString(9),
                        result.getString(10));
            }
            result.close();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return objusuario;
    }

    @Override
    public boolean RegistrarUsuario(Usuario objusuario) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Boolean respuesta = false;

        try {
            PreparedStatement prepared = conex.prepareStatement("{call sp_RegistarCliente(?,?,?,?,?,?,?,?)}");
            prepared.setString(1, objusuario.getUsername());
            prepared.setString(2, objusuario.getPassword());
            prepared.setString(3, objusuario.getNombres());
            prepared.setString(4, objusuario.getApellido_paterno());
            prepared.setString(5, objusuario.getApellido_materno());
            prepared.setString(6, objusuario.getTelefono());
            prepared.setString(7, objusuario.getEmail());
            prepared.setString(8, objusuario.getDni());
            prepared.execute();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return respuesta;
    }

    @Override
    public Usuario obtenerUsuario(String coduser) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Usuario objusuario = null;
        try {
            PreparedStatement prepared = conex.prepareCall("{call sp_ObtenerUsuario(?)}");
            prepared.setString(1, coduser);
            ResultSet result = prepared.executeQuery();
            while (result.next()) {
                objusuario = new Usuario(result.getString(1),
                        result.getString(2),
                        result.getString(3),
                        result.getString(4),
                        result.getString(5),
                        result.getString(6),
                        result.getString(7),
                        result.getString(8),
                        result.getString(9),
                        result.getString(10));
            }
            result.close();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return objusuario;
    }

    @Override
    public List<Usuario> listarCliente() {
        List<Usuario> lstcliente = new ArrayList<Usuario>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try {
            Statement statement = conex.createStatement();
            ResultSet resultado = statement.executeQuery("{CALL sp_ListarClientes()}");
            while (resultado.next()) {
                lstcliente.add(new Usuario(resultado.getString(1),
                        resultado.getString(2),
                        resultado.getString(3),
                        resultado.getString(4),
                        resultado.getString(5),
                        resultado.getString(6),
                        resultado.getString(7),
                        resultado.getString(8),
                        resultado.getString(9),
                        resultado.getString(10)
                ));
            }
        } catch (SQLException ex) {

        }
        return lstcliente;
    }

    @Override
    public List<Usuario> listarEmpleado() {
        List<Usuario> lstempleado = new ArrayList<Usuario>();
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try {
            Statement statement = conex.createStatement();
            ResultSet resultado = statement.executeQuery("{CALL sp_ListarEmpleados()}");
            while (resultado.next()) {
                lstempleado.add(new Usuario(resultado.getString(1),
                        resultado.getString(2),
                        resultado.getString(3),
                        resultado.getString(4),
                        resultado.getString(5),
                        resultado.getString(6),
                        resultado.getString(7),
                        resultado.getString(8),
                        resultado.getString(9),
                        resultado.getString(10)
                ));
            }
        } catch (SQLException ex) {

        }
        return lstempleado;
    }

    @Override
    public boolean eliminarUsuario(String id) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Boolean respuesta = false;
        try {
            PreparedStatement prepared = conex.prepareStatement("{call sp_eliminarUsuario(?)}");
            prepared.setString(1, id);
            prepared.execute();
            respuesta = prepared.getUpdateCount() > 0;
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return respuesta;
    }

    @Override
    public boolean RegistrarEmpleado(Usuario objusuario) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Boolean respuesta = false;

        try {
            PreparedStatement prepared = conex.prepareStatement("{call sp_RegistarEmpleado(?,?,?,?,?,?,?,?)}");
            prepared.setString(1, objusuario.getUsername());
            prepared.setString(2, objusuario.getPassword());
            prepared.setString(3, objusuario.getNombres());
            prepared.setString(4, objusuario.getApellido_paterno());
            prepared.setString(5, objusuario.getApellido_materno());
            prepared.setString(6, objusuario.getTelefono());
            prepared.setString(7, objusuario.getEmail());
            prepared.setString(8, objusuario.getDni());
            prepared.execute();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return respuesta;
    }

    @Override
    public int contarUsuarios() {
        int nuser = 0;
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        try{
            Statement statement = conex.createStatement();
            ResultSet resultado = statement.executeQuery("{CALL sp_ListarClientes()}");
            while(resultado.next()){
                nuser++;
            }
        }catch(SQLException ex){}
        return nuser;
    }

    @Override
    public boolean ActualizarUsuario(Usuario objusuario, String conf_pass) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Boolean respuesta = false;

        try {
            PreparedStatement prepared = conex.prepareStatement("{call sp_EditarUsuario(?,?,?,?,?,?,?,?,?,?)}");
            prepared.setString(1, objusuario.getId_usuario());
            prepared.setString(2, objusuario.getUsername());
            prepared.setString(3, objusuario.getPassword());
            prepared.setString(4, conf_pass);
            prepared.setString(5, objusuario.getNombres());
            prepared.setString(6, objusuario.getApellido_paterno());
            prepared.setString(7, objusuario.getApellido_materno());
            prepared.setString(8, objusuario.getTelefono());
            prepared.setString(9, objusuario.getEmail());
            prepared.setString(10, objusuario.getDni());
            prepared.execute();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return respuesta;
    }

    @Override
    public boolean ActualizarEmpleado(Usuario objusuario, String conf_pass) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Boolean respuesta = false;

        try {
            PreparedStatement prepared = conex.prepareStatement("{call sp_EditarEmpleado(?,?,?,?,?,?,?,?,?,?)}");
            prepared.setString(1, objusuario.getId_usuario());
            prepared.setString(2, objusuario.getUsername());
            prepared.setString(3, objusuario.getPassword());
            prepared.setString(4, conf_pass);
            prepared.setString(5, objusuario.getNombres());
            prepared.setString(6, objusuario.getApellido_paterno());
            prepared.setString(7, objusuario.getApellido_materno());
            prepared.setString(8, objusuario.getTelefono());
            prepared.setString(9, objusuario.getEmail());
            prepared.setString(10, objusuario.getDni());
            prepared.execute();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return respuesta;
    }

    @Override
    public Usuario validarEmpleado(String user, String password) {
        BDConnection objconex = new BDConnection();
        Connection conex = objconex.Conectar();
        Usuario objusuario = null;
        try {
            PreparedStatement prepared = conex.prepareCall("{call sp_VerificarRepartidor(?,?)}");
            prepared.setString(1, user);
            prepared.setString(2, password);
            ResultSet result = prepared.executeQuery();
            if (result.next()) {
                objusuario = new Usuario(result.getString(1),
                        result.getString(2),
                        result.getString(3),
                        result.getString(4),
                        result.getString(5),
                        result.getString(6),
                        result.getString(7),
                        result.getString(8),
                        result.getString(9),
                        result.getString(10));
            }
            result.close();
            prepared.close();
            objconex.Desconectar();
        } catch (SQLException ex) {

        }
        return objusuario;
    }

}
