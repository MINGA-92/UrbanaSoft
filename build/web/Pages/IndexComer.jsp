
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
       <title>Usuario Comercial</title>
    </head>
    <body>
       
      <h1>Bienvenido Usuario <%out.println(Usuario); %>=  </h1>
        
      <table align="center" border="" width="700">
              <tr bgcolor="skyblue">
                  <th colspan="2"><h1>Opciones Comerciales</h1></th>
            </tr>
            <tr bgcolor="skyblue">
                <th><h2>¿Deseas Agregar Un Nuevo Cliente?</h2></th>
                <th><h2>¿Deseas Consultar Listado De Clientes?</h2></th>
            </tr>
           <tr>
              <th>
                   <a href="RegistroCliente.jsp">
                       <img src="../Icons/iconUserCorbata_2.png" width="250" height="250"></a>
              </th>
               <th>
                   <a href="ConsultarClientes.jsp">
                       <img src="../Icons/Tux.png" width="250" height="250"></a>
              </th>
           </tr>
      </table>
        
    </body>
</html>