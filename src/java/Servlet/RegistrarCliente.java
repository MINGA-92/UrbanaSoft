
package Servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author !!Minga!!
 */
public class RegistrarCliente extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
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
        
          Consultas Co = new Consultas();
         
          if(Co.registrarCliente(Cod, Cedula, NomCliente, ApeCliente, Pais, Depart, Ciudad_Municip, TelFijo, Celular_1, Celular_2, Direccion, Correo, Correo2, FInscripcion, IdUsuario, Lugar, Proyecto, ComoSeEntero, MedioEspecifico, ConoceConstruc, ClienteRecurrente, Observaciones, NivelInteres, Fecha_1raLlamada, Clasificacion, VisitaModelo, AsisteLanzamiento, Fecha_2daLlamada, Reclasificacion)){
               response.sendRedirect("./Pages/ConsultarClientes.jsp");
          }
          else {
               response.sendRedirect("./Pages/RegistroCliente.jsp");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
