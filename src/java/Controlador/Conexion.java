
package Controlador;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class Conexion {

    private String User = "root";
    private String Password = "";
    private String Host = "localhost";
    private String Port = "3306";
    private String DataBase = "urbana_bd";
    private String ClassName = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://" + Host + ":" + Port + "/" + DataBase;
    private Connection con;

    public Conexion() {
        try {
            Class.forName(ClassName);
            con = (Connection) DriverManager.getConnection(URL, User, Password);
            System.out.println("!!Se Ha Conectado Exitosamente!!");
        } catch (ClassNotFoundException e) {
            System.err.println(".l. Error .l. " + e);
        } catch (Exception e) {
            System.err.println(".l. Error .l. " + e);
        }
    }

    public Connection getConexion() {
        return con;
    }
    
    public static void main(String[] args) {
         Conexion con = new Conexion();
    }
    
}
