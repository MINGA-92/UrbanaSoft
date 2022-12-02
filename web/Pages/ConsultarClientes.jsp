<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Clientes</title>
    </head>
    <body>
        
        <h1 align="center">Listado De Posibles Clientes </h1>
        <br>
        <table border="" width="700">
            <tr bgcolor="skyblue">
                <th>IdPosible Cliente</th>
                <th>N. Cedula</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Pais</th>
                <th>Departamento</th>
                <th>Ciudad/Municip</th>
                <th>Telefono Fijo</th>
                <th>TelCelular_1</th>
                <th>TelCelular_2</th>
                <th>Direccion_Actual</th>
                <th>Correo 1</th>
                <th>Correo 2</th>
                <th>Fecha Inscripcion</th>
                <th>IdUsuario Que_Registro</th>
                <th>Lugar Inscripcion</th>
                <th>Proyecto Interes</th>
                <th>Como Se_Entero</th>
                <th>Medio Especifico</th>
                <th>Conoce_La Constructora</th>
                <th>Cliente Recurrente</th>
                <th>Observaciones_Del_Registro</th>
                <th>Nivel Interes</th>
                <th>Fecha 1raLlamada</th>
                <th>Clasificacion Cliente</th>
                <th>Visita Modelo</th>
                <th>Asiste Lanzamiento</th>
                <th>Fecha 2daLlamada</th>
                <th>Reclasificacion Cliente</th>
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
                    rs = sta.executeQuery("select * from posible_cliente");

                    while (rs.next()) {
            %>
            <tr>
                <th><%=rs.getString(1)%></th>
                <th><%=rs.getString(2)%></th>
                <th><%=rs.getString(3)%></th>
                <th><%=rs.getString(4)%></th>
                <th><%=rs.getString(5)%></th>
                <th><%=rs.getString(6)%></th>
                <th><%=rs.getString(7)%></th>
                <th><%=rs.getString(8)%></th>
                <th><%=rs.getString(9)%></th>
                <th><%=rs.getString(10)%></th>
                <th><%=rs.getString(11)%></th>
                <th><%=rs.getString(12)%></th>
                <th><%=rs.getString(13)%></th>
                <th><%=rs.getString(14)%></th>
                <th><%=rs.getString(15)%></th>
                <th><%=rs.getString(16)%></th>
                <th><%=rs.getString(17)%></th>
                <th><%=rs.getString(18)%></th>
                <th><%=rs.getString(19)%></th>
                <th><%=rs.getString(20)%></th>
                <th><%=rs.getString(21)%></th>
                <th><%=rs.getString(22)%></th>
                <th><%=rs.getString(23)%></th>
                <th><%=rs.getString(24)%></th>
                <th><%=rs.getString(25)%></th>
                <th><%=rs.getString(26)%></th>
                <th><%=rs.getString(27)%></th>
                <th><%=rs.getString(28)%></th>
                <th><%=rs.getString(29)%></th>
                <th>
                   <a href="EditarCliente.jsp?IdPosib_Cliente=<%=rs.getString(1)%>">
                       <img src="../Icons/iconEditar.jpg" width="80" height="80"></a>
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
