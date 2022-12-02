
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
       <title>Administrador</title>
    </head>
    <body>
        <h1>Bienvenido Administrador <%out.println(Usuario+" , "+Nombre); %>:</h1>

        <table align="center" border="" width="900">
            <tr bgcolor="skyblue">
                <th colspan="3"><h1>Opciones De Administración</h1></th>
            </tr>
            <tr bgcolor="skyblue">
                <th><h2>¿Deseas Registrar Un Nuevo Usuario?</h2></th>
                <th><h2>¿Deseas Administrar Listado De Usuarios?</h2></th>
                <th><h2>¿Deseas Consultar Listado De Clientes?</h2></th>
            </tr>
            <tr>
                <th>
                    <a href="RegistroUsuarios.jsp">
                        <img src="../Icons/iconAgregar_2.jpg" width="130" height="130">
                        <img src="../Icons/iconAgregar.jpg" width="130" height="130">
                    </a>
                </th>
                <th>
                    <a href="ConsultarUsuarios.jsp">
                        <img src="../Icons/iconUser_2.jpg" width="200" height="200"></a>
                </th>
                <th>
                    <a href="ConsultarClientes.jsp">
                        <img src="../Icons/Tux.png" width="200" height="200"></a>
                </th>
            </tr>
        </table>

    </body>
</html>
