<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Usuarios</title>
    </head>
    <body>

        <menu align="right">
                    <a href="IndexAdmin.jsp" class="btn-sucefull">Volver Al Inicio</a>
                <br>
                    <a href="Consultas?accion=Cerrar" class="btn-danger">Cerrar Sesion</a>
        </menu>

        <h1 align="center">Listado De Usuarios Registrados </h1>
        <table border="1" width="700" align="center"> 
            <tr bgcolor="skyblue">
                <th>Id Usuario</th>
                <th>Id Rol</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Correo</th>
                <%--  <th>Password</th> --%>
                <th>Opciones</th>
            </tr>
            <%
                Connection con = null;
                Statement sta = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/urbana_bd?user=root&password=");
                    sta = con.createStatement();
                    rs = sta.executeQuery("select * from usuarios");

                    while (rs.next()) {
            %>
            <tr>
                <th><%=rs.getString(1)%></th>
                <th><%=rs.getString(2)%></th>
                <th><%=rs.getString(3)%></th>
                <th><%=rs.getString(4)%></th>
                <th><%=rs.getString(5)%></th> 
                <%-- <th><%=rs.getString(6)%></th> --%>
                <th>
                    <a href="EditarUsuario.jsp?IdUsuario=<%=rs.getString(1)%>">
                        <img src="../Icons/iconEditar.jpg" width="50" height="50"></a> //
                    <a href="EliminarUsuario.jsp?IdUsuario=<%=rs.getString(1)%>">
                        <img src="../Icons/iconEliminarUser.jpg" width="50" height="50"></a>
                </th>
            </tr>
            <%
                    }
                    sta.close();
                    rs.close();
                    con.close();
                } catch (Exception e) {
                }
            %>
        </table>
    </body>
</html>
