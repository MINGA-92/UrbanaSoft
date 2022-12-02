package Servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author !!Minga!!
 */
public class InicioSesion extends HttpServlet {

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

        String Usuario = request.getParameter("IdUsuario");
        String Contraseña = request.getParameter("Password");
      /* String Rol = request.getParameter("cboRol"); */
        int Rol = request.getContentLength();

        Consultas co = new Consultas();

        if (co.autenticacion(Usuario, Contraseña)) {
            HttpSession objSesion = request.getSession(true);
            objSesion.setAttribute("IdUsuario", Usuario);
            response.sendRedirect("Pages/IndexSuper.jsp"); 
                     
         /* if(request.getParameter("btnIniciar")!=null){
                 String Nombre = request.getParameter("Nombre");
                 objSesion.setAttribute("Nombre", Nombre);

            switch (co.Loguear(Nombre, Contraseña)) {
                case 1:
                    objSesion.setAttribute(Nombre, "Nombre");
                    objSesion.setAttribute("IdRol", "1");
                    response.sendRedirect("Pages/IndexAdmin.jsp");
                    break;
                case 2:
                    objSesion.setAttribute("Nombre", Nombre);
                    objSesion.setAttribute("IdRol", "2");
                    response.sendRedirect("Pages/IndexSuper.jsp");
                    break;
                case 3:
                    objSesion.setAttribute("Nombre", Nombre);
                    objSesion.setAttribute("IdRol", "3");
                    response.sendRedirect("Pages/IndexComer.jsp");
                    break;
                default:
                    out.write(".l. No Se Puede Validar El Rol Del Usuario .l.");
                    break;
            }
            } */
      
            /* if (Rol.equals("1")) {
            response.sendRedirect("Pages/IndexAdmin.jsp");
            }
               if (Rol.equals("2")) {
            response.sendRedirect("Pages/IndexSuper.jsp");
            }
               if (Rol.equals("3")) {
            response.sendRedirect("Pages/IndexComer.jsp");
            }
               if (Rol.equals("0")) {
            response.sendRedirect("index.jsp");
            }   */
        } else {
            /* JOptionPane.showMessageDialog(null, "!Usuario y/o Contraseña Incorrectos¡"); */
            response.sendRedirect("index.jsp");
            out.write("!Usuario y/o Contraseña Incorrectos¡");
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
