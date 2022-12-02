
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author !!TEAR!!
 */
public class Conexiones {
    
     public static String usuario="root";
     public static String password="";
     public static String servidor="localhost:3306";
     public static String basedatos="urbana_bd";
     public static Connection CrearConexion() throws SQLException{
        Connection cnn=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");//  invocamos a  nuestro drivers
            String urlI="jdbc:mysql://"+servidor+"/"+basedatos;//nuestro url de conexion
            cnn=DriverManager.getConnection(urlI,usuario,password);// conexion de la base de datos
        }catch(ClassNotFoundException c){
            System.out.println("Nose encontro la clase :"+c.getLocalizedMessage());
        }   catch (SQLException ex) {
        System.out.printf("error de exepcion :"+ex);
        }
        return cnn;
    }
   

    
}
