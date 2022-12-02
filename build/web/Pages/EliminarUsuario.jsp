
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <%
                int cod = Integer.parseInt(request.getParameter("IdUsuario"));

                Connection con = null;
                Statement sta = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/urbana_bd?user=root&password=");
                    sta = con.createStatement();
                    sta.executeUpdate("delete from usuarios where IdUsuario='"+cod+"'");
                    request.getRequestDispatcher("ConsultarUsuarios.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e + "");
                }
            
        %>
        
    </body>
</html>
