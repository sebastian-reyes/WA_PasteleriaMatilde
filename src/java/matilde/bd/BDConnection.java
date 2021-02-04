
package matilde.bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDConnection {
    private String bd="bdpasteleria";
    private String url="jdbc:mysql://localhost:3307/"+bd;
    private String user="root";
    private String password="root";
    Connection conexion = null;
    
    public Connection Conectar(){
        try{
            Class.forName("com.mysql.jdbc.Driver");          
            conexion = (Connection)DriverManager.getConnection(url, user, password);
        }catch(ClassNotFoundException|SQLException ex){
            System.out.println(ex.getMessage());
        }
        return conexion;
    }
    
    public void Desconectar(){
        try{
            conexion.close();
        }catch(SQLException ex){
            System.out.println("Error al cerrar conexión");
        }
    }
}
