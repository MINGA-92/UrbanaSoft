package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Consultas extends Conexion {

    public boolean autenticacion(String Usuario, String Contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String Consulta = "select * from usuarios where IdUsuario = ? and Password = ?";
            pst = getConexion().prepareStatement(Consulta);
            pst.setString(1, Usuario);
            pst.setString(2, Contraseña);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("Error .l. " + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println(".l. Error " + e);
            }
        }
        return false;
    }

    public boolean registrarUsuario(int IdUsuario, String Rol, String Usuario, String Apellido, String Correo, String Contraseña) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into usuarios(IdUsuario, IdRol, Nombre, Apellido, Correo, Password) values(?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, IdUsuario);
            /* pst.setInt(2, Rol); */
            pst.setString(2, Rol);
            pst.setString(3, Usuario);
            pst.setString(4, Apellido);
            pst.setString(5, Correo);
            pst.setString(6, Contraseña);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception ex) {
            System.err.println("Error .l. " + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (Exception e) {
                System.err.println(" .l. Error " + e);
            }
        }
        return false;
    }

    /*
    public static void main(String[] args) {
        Consultas co = new Consultas();
      System.err.println(co.registrarUsuario(50, 2, "Mateito", "Diaz", "Mateo@tsm.com","281192")); 
    } */

    public int Loguear(String Nombre, String Contraseña) {
        PreparedStatement pst;
        ResultSet rs;
        int Rol = 0;
        String sql = "select IdRol from usuarios where Nombre ='" + Nombre + "' and Password ='" + Contraseña + "'";
        try {
            pst = getConexion().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Rol = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return Rol;
    }

    /*  public boolean Cerrar () {
            session.invalidate();
           } */

    public List<Pais> ConsultarPais() {
        PreparedStatement pst = null;
        ResultSet rs = null;
        String SQL = null;
        List<Pais> ListaPais = new ArrayList<Pais>();
        try {
            SQL = "select * from Pais";
            pst = getConexion().prepareStatement(SQL);
            rs = pst.executeQuery();
            while (rs.next()) {
                Pais pais = new Pais();
                pais.setIdPais(rs.getInt("IdPais"));
                pais.setPais(rs.getString("Pais"));
                ListaPais.add(pais);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {

        }
        return ListaPais;
    }

    public boolean registrarCliente(int Cod, int Cedula, String NomCliente, String ApeCliente, int Pais, int Depart, int Ciudad_Municip,
            int TelFijo, int Celular_1, int Celular_2, String Direccion, String Correo, String Correo2, String FInscripcion, int IdUsuario, int Lugar, int Proyecto,
            int ComoSeEntero, int MedioEspecifico, int ConoceConstruc, int ClienteRecurrente, String Observaciones, int NivelInteres, String Fecha_1raLlamada, int Clasificacion,
            int VisitaModelo, int AsisteLanzamiento, String Fecha_2daLlamada, int Reclasificacion) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into posible_cliente(IdPosib_Cliente, N_Cedula, Nombres, Apellidos, IdPais, IdDepartamento, IdCiudad_Municip, TelFijo, TelCelular_1, TelCelular_2,"
                    + " DireccionActual, Correo_1, Correo_2, FechaInscripcion, IdUsuario, IdLugarInscripcion, IdProyectoInteres, IdComoSeEntero, IdMedioEspecifico, IdConoceConstructora, IdClienteRecurrente,"
                    + " Observaciones, IdNivelInteres, Fecha_1raLlamada, IdClasificacionCliente, IdVisitaModelo, IdAsisteLanzamiento, Fecha_2daLlamada, IdReclasificacionCliente ) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);

            pst.setInt(1, Cod);
            pst.setInt(2, Cedula);
            pst.setString(3, NomCliente);
            pst.setString(4, ApeCliente);
            pst.setInt(5, Pais);
            pst.setInt(6, Depart);
            pst.setInt(7, Ciudad_Municip);
            /* pst.setString(5, Pais);
            pst.setString(6, Depart);
            pst.setString(7, Ciudad_Municip); */
            pst.setInt(8, TelFijo);
            pst.setInt(9, Celular_1);
            pst.setInt(10, Celular_2);
            pst.setString(11, Direccion);
            pst.setString(12, Correo);
            pst.setString(13, Correo2);
            pst.setString(14, FInscripcion);
            pst.setInt(15, IdUsuario);
            pst.setInt(16, Lugar);
            pst.setInt(17, Proyecto);
            pst.setInt(18, ComoSeEntero);
            pst.setInt(19, MedioEspecifico);
            pst.setInt(20, ConoceConstruc);
            pst.setInt(21, ClienteRecurrente);
            /* pst.setString(15, IdUsuario);
            pst.setString(16, Lugar);
            pst.setString(17, Proyecto);
            pst.setString(18, ComoSeEntero);
            pst.setString(19, MedioEspecifico);
            pst.setString(20, ConoceConstruc);
            pst.setString(21, ClienteRecurrente); */
            pst.setString(22, Observaciones);
            pst.setInt(23, NivelInteres);
            /* pst.setString(23, NivelInteres); */
            pst.setString(24, Fecha_1raLlamada);
            pst.setInt(25, Clasificacion);
            pst.setInt(26, VisitaModelo);
            pst.setInt(27, AsisteLanzamiento);
            /* pst.setString(25, Clasificacion);
            pst.setString(26, VisitaModelo);
            pst.setString(27, AsisteLanzamiento); */
            pst.setString(28, Fecha_2daLlamada);
            pst.setInt(29, Reclasificacion);
            /* pst.setString(29, Reclasificacion); */

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception ex) {
            System.err.println("Error .l. " + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (Exception e) {
                System.err.println(" .l. Error " + e);
            }
        }
        return false;
    }

}
