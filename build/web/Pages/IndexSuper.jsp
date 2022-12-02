
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%
    HttpSession objSesion = request.getSession(false);
    String Usuario = (String)objSesion.getAttribute("IdUsuario"); 
    String Nombre = (String)objSesion.getAttribute("Nombre");
    
    if (Usuario.equals("")){
         response.sendRedirect("index.jsp");
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supervisor</title>
    </head>
    <body>
        <table b >
            <tr>
                <th>  <a href='Index.jsp?Cerrar=true' class="btn-danger">Cerrar Sesion</a><br>
                 <input type="submit" class="btn btn-danger" action="Index.jsp?accion=Cerrar" value="Cerrar Sesion"/>
               </th>
            </tr>
        </table>
      <h1>Bienvenido <%out.println(Nombre); %>, Supervisor <%out.println(Usuario); %> De TSM Ingenieria =</h1> 
  
       <table align="center" border="" width="1020">
            <tr bgcolor="skyblue">
                <th colspan="6"><h1>Opciones Del Supervisor</h1></th>
            </tr>
            <tr bgcolor="skyblue">
                <th><h2>¿Ir A Index Comercial?</h2></th>
                <th><h2>¿Deseas Agregar Un Nuevo Cliente?</h2></th>
                <th><h2>¿Deseas Consultar Listado De Clientes?</h2></th>
                <th><h2>¿Ir A Index De Administrador?</h2></th>
                <th><h2>¿Deseas Registrar Un Nuevo Usuario?</h2></th>
                <th><h2>¿Deseas Administrar Listado De Usuarios?</h2></th>
            </tr>
            <tr>
               <th bgcolor="skyblue">
                    <a href="IndexComer.jsp">
                        <img src="../Icons/Setup.ico" width="190" height="190"></a>
                </th>
               <th>
                   <a href="RegistroCliente.jsp">
                       <img src="../Icons/iconUserCorbata_2.png" width="190" height="190"></a>
              </th>
               <th>
                   <a href="ConsultarClientes.jsp">
                       <img src="../Icons/Tux.png" width="190" height="190"></a>
              </th>
               <th bgcolor="skyblue">
                    <a href="IndexAdmin.jsp">
                        <img src="../Icons/iconSesion.png" width="190" height="190"></a>
                </th>
                <th>
                    <a href="RegistroUsuarios.jsp">
                        <img src="../Icons/iconAgregar_2.jpg" width="190" height="190">
                    </a>
                </th>
                <th>
                    <a href="ConsultarUsuarios.jsp">
                        <img src="../Icons/iconUser_2.jpg" width="190" height="190"></a>
                </th>
            </tr>
        </table>
        
        <br>
        <menu>
            <a href="ConsultarUsuarios.jsp"> Consultar Listado De Usuarios<a/><br>
            <a href="RegistroUsuarios.jsp"> Registrar Usuario<a/><br>
            <a href="ConsultarClientes.jsp"> Consultar Listado De Clientes<a/><br> 
            <a href="RegistroCliente.jsp"> Registrar Cliente <a/><br> 
            <a href="IndexAdmin.jsp">Index Administrador <a/><br> 
                 <a href="IndexComer.jsp">Index Comercial <a/><br> 
        </menu>

     </body>
   </html>