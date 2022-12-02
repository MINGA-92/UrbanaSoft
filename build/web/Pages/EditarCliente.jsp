<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
    </head>
    <body>
        <h1 align="center">Editar Posible Cliente</h1>

        <%
            int codC = Integer.parseInt(request.getParameter("IdPosib_Cliente"));

            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/urbana_bd?user=root&password=");
                sta = con.createStatement();
                rs = sta.executeQuery("select * from posible_cliente where IdPosib_Cliente='" + codC + "'");

                while (rs.next()) {
        %>

        <table align="center" width="480">
            <tr>
                <th colspan="2" bgcolor="skyblue"><h2>Formulario De Actualización</h2></th>
            </tr>
            <tr>
                <th colspan="2">
                    <img src="../Icons/iconEditar.jpg" width="200" height="200">
                </th>
            </tr>
        </table>

      <form action=""  method="post" id="formEditarCliente">
        <table align="center" bgcolor="skyblue" width="580" border="" >
            <tr>
                <td>Id Posible Cliente= </td>
                <td> <input readonly="readonly" type="int" name="IdPosib_Cliente" value ="<%=rs.getString(1)%>"></td>
            </tr>
            <tr>
                <td><label>Numero De Cedula Del Posible Cliente=</label></td>
                <td><input readonly="readonly" type="int"name="Cedula" value ="<%=rs.getString(2)%>"></td>
            </tr>
            <tr>
                <td><label>Nombre Del Posible Cliente=</label></td>
                <td><input readonly="readonly" type="text"name="Nombres" value ="<%=rs.getString(3)%>"></td>
            </tr>
            <tr>
                <td><label>Apellido Del Posible Cliente=</label></td>
                <td><input readonly="readonly" type="text"name="Apellidos" value ="<%=rs.getString(4)%>"></td>
            </tr>
            <tr>
                <td>Elije Un Pais De Origen=</td>
                <td>
                    <select disabled="" name="IdPais" value ="<%=rs.getString(5)%>">
                        <option value="1" item="1" >Colombia</option>
                        <option value="2" item="2" >Sup</option>
                        <option value="3" item="3" >Usu</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Elije Un Departamento=</td>
                <td>
                    <select disabled="" name="IdDepartamento" value="<%=rs.getString(6)%>">
                        <option value="1" item="1" >Cundinamarca</option>
                        <option value="2" item="2" >Sup</option>
                        <option value="3" item="3" >Usu</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Elije Una Ciudad o Municipio=</td>
                <td>
                    <select disabled="" name="IdCiudad_Municip" value ="<%=rs.getString(7)%>">
                        <option value="1" item="1" >Bogotá DC.</option>
                        <option value="2" item="2" >Sup</option>
                        <option value="3" item="3" >Usu</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Telefono Fijo=</label></td>
                <td><input readonly="readonly" type="int" name="TelFijo" value="<%=rs.getString(8)%>"></td>
            </tr>
            <tr>
                <td><label>Telefono Celular=</label></td>
                <td><input readonly="readonly" type="int" name="TelCelular_1" value="<%=rs.getString(9)%>"></td>
            </tr>
            <tr>
                <td><label>Telefono Celular Alterno=</label></td>
                <td><input type="int"name="TelCelular_2" value="<%=rs.getString(10)%>"></td>
            </tr>
            <tr>
                <td>Dirección Actual Del Cliente=</label></td>
                <td> <input readonly="readonly" type="text" name="DireccionActual" value="<%=rs.getString(11)%>"></td>
            </tr>
            <tr>
                <td>Correo Del Posible Cliente=</label></td>
                <td> <input readonly="readonly" type="text" name="Correo_1" value="<%=rs.getString(12)%>"></td>
            </tr>
            <tr>
                <td>Correo Alterno Del Cliente=</label></td>
                <td> <input type="text" name="Correo_2" value="<%=rs.getString(13)%>"></td>
            </tr>
            <tr>
                <td>Fecha De Inscripción=</label></td>
                <td> <input readonly="readonly" type="date" name="FechaInscripcion" value="<%=rs.getString(14)%>"></td>
            </tr>
            <tr>
                <td>Id Del Usuario Que Realiza El Registro=</td>
                <td>
                    <select disabled="" name="IdUsuario" value="<%=rs.getString(15)%>">
                        <option value="1" item="1" >001</option>
                        <option value="2" item="2" >002</option>
                        <option value="3" item="3" >003</option>
                        <option value="4" item="4" >004</option>
                        <option value="5" item="5" >005</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Seleccione El Lugar De Registro=</td>
                <td>
                    <select disabled="" name="IdLugarInscripcion" value="<%=rs.getString(16)%>">
                        <option value="1" item="1" >Sala De venta</option>
                        <option value="2" item="2" >Oficina</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Seleccione El Proyecto De Interes Del Cliente=</td>
                <td>
                    <select name="IdProyectoInteres" value="<%=rs.getString(17)%>">
                        <option value="1" item="1" >Antigua</option>
                        <option value="2" item="2" >Mallorca</option>
                        <option value="3" item="3" >Salento</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Como Se Entero Del Proyecto?=</td>
                <td>
                    <select disabled="" name="IdComoSeEntero" value="<%=rs.getString(18)%>">
                        <option value="1" item="1" >Feria</option>
                        <option value="2" item="2" >Otro Cliente</option>
                        <option value="3" item="3" >Pasa Calles</option>
                        <option value="4" item="4" >Radio</option>
                        <option value="5" item="5" >Redes Sociales</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Medio Especifico Por El Cual Se Entero Del Proyecto=</td>
                <td>
                    <select disabled="" name="IdMedioEspecifico" value="<%=rs.getString(19)%>">
                        <option value="1" item="1" >Ambala</option>
                        <option value="2" item="2" >Av. Ambala 25</option>
                        <option value="3" item="3" >Acqua CC.</option>
                        <option value="4" item="4" >Col. San Simon</option>
                        <option value="5" item="5" >Don Matias</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Conocia La Constructora Con Anterioridad?=</td>
                <td>
                    <select disabled="" name="IdConoceConstructora" value="<%=rs.getString(20)%>">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Es Un Cliente Recurrente? =</td>
                <td>
                    <select disabled="" name="IdClienteRecurrente" value="<%=rs.getString(21)%>">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Observaciones=</label></td>
                <td><input readonly="readonly" type="textlong" name="Observaciones" value="<%=rs.getString(22)%>"></td>
            </tr>
            <tr>
                <td>Nivel De Interes Del Cliente =</td>
                <td>
                    <select name="IdNivelInteres" value="<%=rs.getString(23)%>">
                        <option value="1" item="1" >Bajo</option>
                        <option value="2" item="2" >Medio</option>
                        <option value="3" item="3" >Alto</option>
                        <option value="4" item="4" >Muy Alto</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Fecha De La Primera Llamada=</label></td>
                <td> <input type="date" name="Fecha_1raLlamada" value="<%=rs.getString(24)%>"></td>
            </tr>
            <tr>
                <td>Dale Una Clasificacion Al Cliente =</td>
                <td>
                    <select disabled="" name="IdClasificacionCliente" value="<%=rs.getString(25)%>">
                        <option value="1" item="1" >Informado</option>
                        <option value="2" item="2" >Cliente Potencial</option>
                        <option value="3" item="3" >Comprador</option>
                        <option value="0" item="0" >Sin Interes</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Realizo Visita Al Modelo? =</td>
                <td>
                    <select name="IdVisitaModelo" value="<%=rs.getString(26)%>">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Asistio Al Lanzamiento? =</td>
                <td>
                    <select disabled="" name="IdAsisteLanzamiento" value="<%=rs.getString(27)%>">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Fecha De La Segunda Llamada=</label></td>
                <td> <input type="date" name="Fecha_2daLlamada" value="<%=rs.getString(28)%>"></td>
            </tr>
            <tr>
                <td>Dale Una Reclasificacion Al Cliente =</td>
                <td>
                    <select name="IdReclasificacionCliente" value="<%=rs.getString(29)%>">
                        <option value="1" item="1" >Informado</option>
                        <option value="2" item="2" >Cliente Potencial</option>
                        <option value="3" item="3" >Comprador</option>
                        <option value="0" item="0" >Sin Interes</option>
                        <option value="4" item="4" >No Contesta</option>
                        <option value="5" item="5" >Activo</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                  <button type="submit" name="btnGuardarCambios" class="btn btn-primary btn-block btn-flat">Guardar Cambios</button> 
           <%--     <input type="submit" value="Guardar Cambios" name="btnGuardarCambios" id="btnGuardarCambios"/> --%> </th>
            </tr>
        </table>
    </from>
    <% }
        } catch (Exception e) {
        }

        if (request.getParameter("btnGuardarCambios") != null) {

            int cod = Integer.parseInt(request.getParameter("IdPosib_Cliente"));
            int Cedula = Integer.parseInt(request.getParameter("N_Cedula"));
            String Nom = request.getParameter("Nombres");
            String Ape = request.getParameter("Apellidos");
            int Pais = Integer.parseInt(request.getParameter("IdPais"));
            int Departamento = Integer.parseInt(request.getParameter("IdDepartamento"));
            int Ciudad_Municip = Integer.parseInt(request.getParameter("IdCiudad_Municip"));
            int TelFijo = Integer.parseInt(request.getParameter("TelFijo"));
            int TelCelular_1 = Integer.parseInt(request.getParameter("TelCelular_1"));
            int TelCelular_2 = Integer.parseInt(request.getParameter("TelCelular_2"));
            String Direccion = request.getParameter("DireccionActual");
            String Corr = request.getParameter("Correo_1");
            String Corr2 = request.getParameter("Correo_2");
         String FInscripcion = request.getParameter("FechaInscripcion");
            int IdUsuario = Integer.parseInt(request.getParameter("IdUsuario"));
            int Lugar = Integer.parseInt(request.getParameter("IdLugarInscripcion"));
            int Proyecto = Integer.parseInt(request.getParameter("IdProyectoInteres"));
            int ComoSeEntero = Integer.parseInt(request.getParameter("IdComoSeEntero"));
            int MedioEspecifico = Integer.parseInt(request.getParameter("IdMedioEspecifico"));
            int ConoceConstructora = Integer.parseInt(request.getParameter("IdConoceConstructora"));
            int ClienteRecurrente = Integer.parseInt(request.getParameter("IdClienteRecurrente"));
            String Observaciones = request.getParameter("Observaciones");
            int NivelInteres = Integer.parseInt(request.getParameter("IdNivelInteres"));
         String Fecha_1raLlamada = request.getParameter("Fecha_1raLlamada");
            int Clasificacion = Integer.parseInt(request.getParameter("IdClasificacionCliente"));
            int VisitaModelo = Integer.parseInt(request.getParameter("IdVisitaModelo"));
            int AsisteLanzamiento = Integer.parseInt(request.getParameter("IdAsisteLanzamiento"));
         String Fecha_2daLlamada = request.getParameter("Fecha_2daLlamada");
            int Reclasificacion = Integer.parseInt(request.getParameter("IdReclasificacionCliente"));

            sta.executeUpdate("update posible_cliente set N_Cedula=" + Cedula + ",Nombres='" + Nom + "',Apellidos='" + Ape + "',IdPais='" + Pais + "',IdDepartamento='" + Departamento
                    + "',IdCiudad_Municip='" + Ciudad_Municip + "',TelFijo='" + TelFijo + "',TelCelular_1='" + TelCelular_1 + "',TelCelular_2='" + TelCelular_2 + "',DireccionActual='" + Direccion + "',Correo_1='" + Corr + "',Correo_2='" + Corr2
                    + "',FechaInscripcion='" + FInscripcion + "',IdUsuario='" + IdUsuario + "',IdLugarInscripcion='" + Lugar + "',IdProyectoInteres='" + Proyecto + "',IdComoSeEntero='" + ComoSeEntero + "',IdMedioEspecifico='" + MedioEspecifico
                    + "',IdConoceConstructora='" + ConoceConstructora + "',IdClienteRecurrente='" + ClienteRecurrente + "',Observaciones='" + Observaciones + "',IdNivelInteres='" + NivelInteres + "',Fecha_1raLlamada='" + Fecha_1raLlamada
                    + "',IdClasificacionCliente='" + Clasificacion + "',IdVisitaModelo='" + VisitaModelo + "',IdAsisteLanzamiento='" + AsisteLanzamiento + "',Fecha_2daLlamada='" + Fecha_2daLlamada + "',IdReclasificacionCliente='" + Reclasificacion + "' where IdPosib_Cliente=" + codC + " ");
            request.getRequestDispatcher("ConsultarClientes.jsp").forward(request, response);
        }
    %>

</body>
</html>
