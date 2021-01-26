/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.idao;

import java.util.List;
import matilde.model.Usuario;

/**
 *
 * @author Sebastián
 */
public interface I_UsuarioDao {
    public Usuario validarUsuario(String user, String password);
    public boolean RegistrarUsuario(Usuario objusuario);
    public boolean RegistrarEmpleado(Usuario objusuario);
    public Usuario obtenerUsuario(String coduser);
    public List<Usuario> listarCliente();
    public List<Usuario> listarEmpleado();
    public boolean eliminarUsuario(String id);
}
