/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Conexiones;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author !!TEAR!!
 */
public class GuardarCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
         int Cod = request.getContentLength();
         int Cedula = request.getContentLength();
         String NomCliente = request.getParameter("Nombres");
         String ApeCliente = request.getParameter("Apellidos");
         int Pais = request.getContentLength(); 
         int Depart = request.getContentLength();
         int Ciudad_Municip = request.getContentLength();
        /* String Pais = request.getParameter("IdPais");
         String Depart = request.getParameter("IdDepartamento");
         String Ciudad_Municip = request.getParameter("IdCiudad_Municip"); */
         int TelFijo = request.getContentLength();
         int Celular_1 = request.getContentLength();
         int Celular_2 = request.getContentLength(); 
         String Direccion = request.getParameter("DireccionActual");
         String Correo = request.getParameter("Correo_1");
         String Correo2 = request.getParameter("Correo_2");
         String FInscripcion = request.getParameter("FechaInscripcion");
         int IdUsuario = request.getContentLength();
         int Lugar = request.getContentLength();
         int Proyecto = request.getContentLength();
         int ComoSeEntero = request.getContentLength();
         int MedioEspecifico = request.getContentLength();
         int ConoceConstruc = request.getContentLength();
         int ClienteRecurrente = request.getContentLength();
        /* String IdUsuario = request.getParameter("IdUsuario");
         String Lugar = request.getParameter("IdLugarInscripcion");
         String Proyecto = request.getParameter("IdProyectoInteres");
         String ComoSeEntero = request.getParameter("IdComoSeEntero");
         String MedioEspecifico = request.getParameter("IdMedioEspecifico");
         String ConoceConstruc = request.getParameter("IdConoceConstructora");
         String ClienteRecurrente = request.getParameter("IdClienteRecurrente"); */
         String Observaciones = request.getParameter("Observaciones");
         int NivelInteres = request.getContentLength();
       /*  String NivelInteres = request.getParameter("IdNivelInteres"); */
         String Fecha_1raLlamada = request.getParameter("Fecha_1raLlamada");
         int Clasificacion = request.getContentLength();
         int VisitaModelo = request.getContentLength();
         int AsisteLanzamiento = request.getContentLength();
        /* String Clasificacion = request.getParameter("IdClasificacionCliente");
         String VisitaModelo = request.getParameter("IdVisitaModelo");
         String AsisteLanzamiento = request.getParameter("IdAsisteLanzamiento"); */
         String Fecha_2daLlamada = request.getParameter("Fecha_2daLlamada");
         int Reclasificacion = request.getContentLength();
        /* String Reclasificacion = request.getParameter("IdReclasificacionCliente"); */
       
        
         Connection cnn=Conexiones.CrearConexion();
         
               String consulta = "insert into posible_cliente(IdPosib_Cliente, N_Cedula, Nombres, Apellidos, IdPais, IdDepartamento, IdCiudad_Municip, TelFijo, TelCelular_1, TelCelular_2,"
                    + " DireccionActual, Correo_1, Correo_2, FechaInscripcion, IdUsuario, IdLugarInscripcion, IdProyectoInteres, IdComoSeEntero, IdMedioEspecifico, IdConoceConstructora, IdClienteRecurrente,"
                    + " Observaciones, IdNivelInteres, Fecha_1raLlamada, IdClasificacionCliente, IdVisitaModelo, IdAsisteLanzamiento, Fecha_2daLlamada, IdReclasificacionCliente ) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
          
               PreparedStatement pst = cnn.prepareStatement(consulta); 
               
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
               
               pst.executeUpdate();
       
         
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GuardarCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GuardarCliente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GuardarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GuardarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
