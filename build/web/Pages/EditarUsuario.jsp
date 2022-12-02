<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Editar Usuario</title>
    </head>
    <body>
        <h1 align="center">Editar Usuario Existente</h1>

        <%
            int cod = Integer.parseInt(request.getParameter("IdUsuario"));

            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/urbana_bd?user=root&password=");
                sta = con.createStatement();
                rs = sta.executeQuery("select * from usuarios where IdUsuario='" + cod + "'");

                while (rs.next()) {
        %>

          <form action=" " method="post" id="formEditUsuario">
        <table align="center" border="" width="380">
            <tr>
                <th colspan="2" bgcolor="skyblue"><h2>Formulario De Actualización</h2></th>
            </tr>
            <tr>
                <th colspan="2">
                    <img src="../Icons/iconEditar.jpg" width="180" height="180">
                </th>
            </tr>
        </table>
        <table align="center" border="" bgcolor="skyblue" width="380" >
            <tr>
                <td>Id Usuario= </td>
                <td> <input readonly="readonly" type="int" name="IdUsuario" value ="<%=rs.getString(1)%>"></td>
            </tr>
            <tr>
                <td>Asigne Un Rol Al Usuario=</td>
                <td>
                    <select name="Rol" value ="<%=rs.getString(2)%>">
                        <option value="<%=rs.getString(2)%>" item="0" >Selecciona Rol</option>
                        <option value="1" item="1" >Administrador</option>
                        <option value="3" item="3" >Comercial</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Nombre Del Usuario=</label></td>
                <td><input type="text"name="Nombre" value ="<%=rs.getString(3)%>"></td>
            </tr>
            <tr>
                <td><label>Apellido Del Usuario=</label></td>
                <td><input type="text"name="Apellido" value ="<%=rs.getString(4)%>"><br></td>
            </tr>
            <tr>
                <td>Correo Del Usuario=</label></td>
                <td> <input type="text"name="Correo" value ="<%=rs.getString(5)%>"></td>
            </tr>
            <tr>
                <td><label>Contraseña=</label></td>
                <td><input readonly="readonly" type="password" name="Password" value ="<%=rs.getString(6)%>"></td>
            </tr>
            <tr>
                <th colspan="2"> 
                    <button type="submit" name="btnEditar" class="btn btn-primary btn-block btn-flat">Guardar Cambios</button> </th> 
                    <%-- <input type="submit" value="Guardar Cambios" name="btnEditar" id="btnEditar"/> --%>
            </tr>
        </table>
    </from> 
    <% }
        } catch (Exception e) {
        }

        if (request.getParameter("btnEditar") != null) {

            int codU = Integer.parseInt(request.getParameter("IdUsuario"));
           /* int Rol = Integer.parseInt(request.getParameter("Rol")); */
            String Rol = request.getParameter("Rol");
            String Nom = request.getParameter("Nombre");
            String Ape = request.getParameter("Apellido");
            String Corr = request.getParameter("Correo");
            String Pass = request.getParameter("Password");

            sta.executeUpdate("update usuarios set IdRol=" + Rol + ",Nombre='" + Nom + "',Apellido='" + Ape + "',Correo='" + Corr + "',Password='" + Pass + "' where IdUsuario=" + codU + " ");
            request.getRequestDispatcher("ConsultarUsuarios.jsp").forward(request, response);
        }
    %>
    </body>
</html>
