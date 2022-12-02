
<%@page import="Controlador.Pais"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Cliente</title>
    </head>
    <body>
        <h1 align="center">Registro De Posibles Clientes </h1>


        <table align="center"  width="480">
            <tr>
                <th colspan="2" bgcolor="skyblue"><h2>Formulario De Ingreso</h2></th>
            </tr>
            <tr>
                <th colspan="2">
                    <img src="../Icons/iconUserCorbata.jpg" width="220" height="220">
                </th>
            </tr>
        </table>
        
      <form action="../RegistrarCliente" method="post" id="formNuevoCliente">
        <table align="center" bgcolor="skyblue" width="580"  >
            <tr>
                <td>Id Posible Cliente= </td>
                <td> <input readonly="readonly" type="int" name="IdPosib_Cliente" value =""></td>
            </tr>
            <tr>
                <td><label>Numero De Cedula Del Posible Cliente=</label></td>
                <td><input type="int"name="Cedula"></td>
            </tr>
            <tr>
                <td><label>Nombre Del Posible Cliente=</label></td>
                <td><input type="text"name="Nombres"></td>
            </tr>
            <tr>
                <td><label>Apellido Del Posible Cliente=</label></td>
                <td><input type="text"name="Apellidos"><br></td>
            </tr>
            <tr>
                <td>Elije Un Pais De Origen=</td>
                
             <%--   <td>
                    <select class="form-control" name="IdPais" id="IdPais">
                         <% List<Pais> ListaPais =(List<Pais>)request.getAttribute("Pais");
                           if(ListaPais!=null)
                               for(Pais pais:ListaPais){%>
                               <option value="<%=pais.getIdPais()%>"><%=pais.getPais()%></option>
                         <%    }   %>
                    </select>
                </td>  --%>
                
                <td>
                    <select name="IdPais" value ="" id="IdPais">
                        <option value="1" item="1" >Colombia</option>
                        <option value="2" item="2" >Otro</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Elije Un Departamento=</td>
                <td>
                    <select name="IdDepartamento" value ="">
                        <option value="1" item="1" >Cundinamarca</option>
                        <option value="2" item="2" >Sup</option>
                        <option value="3" item="3" >Usu</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Elije Una Ciudad o Municipio=</td>
                <td>
                    <select name="IdCiudad_Municip" value ="">
                        <option value="1" item="1" >Bogotá DC.</option>
                        <option value="2" item="2" >Sup</option>
                        <option value="3" item="3" >Usu</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Telefono Fijo=</label></td>
                <td><input type="int"name="TelFijo"></td>
            </tr>
            <tr>
                <td><label>Telefono Celular=</label></td>
                <td><input type="int"name="TelCelular_1"></td>
            </tr>
            <tr>
                <td><label>Telefono Celular Alterno=</label></td>
                <td><input type="int"name="TelCelular_2"></td>
            </tr>
            <tr>
                <td>Dirección Actual Del Cliente=</label></td>
                <td> <input type="text"name="DireccionActual"></td>
            </tr>
            <tr>
                <td>Correo Del Posible Cliente=</label></td>
                <td> <input type="text"name="Correo_1"></td>
            </tr>
            <tr>
                <td>Correo Alterno Del Cliente=</label></td>
                <td> <input type="text"name="Correo_2"></td>
            </tr>
            <tr>
                <td>Fecha De Inscripción=</label></td>
                <td> <input type="date" name="FechaInscripcion"></td>
            </tr>
            <tr>
                <td>Id Del Usuario Que Realiza El Registro=</td>
                <td>
                    <select name="IdUsuario" value ="">
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
                    <select name="IdLugarInscripcion" value ="">
                        <option value="1" item="1" >Sala De venta</option>
                        <option value="2" item="2" >Oficina</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Seleccione El Proyecto De Interes Del Cliente=</td>
                <td>
                    <select name="IdProyectoInteres" value ="">
                        <option value="1" item="1" >Antigua</option>
                        <option value="2" item="2" >Mallorca</option>
                        <option value="3" item="3" >Salento</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Como Se Entero Del Proyecto?=</td>
                <td>
                    <select name="IdComoSeEntero" value ="">
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
                    <select name="IdMedioEspecifico" value ="">
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
                    <select name="IdConoceConstructora" value ="">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Es Un Cliente Recurrente? =</td>
                <td>
                    <select name="IdClienteRecurrente" value ="">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Observaciones=</label></td>
                <td><input type="textlong"name="Observaciones"></td>
            </tr>
            <tr>
                <td>Nivel De Interes Del Cliente =</td>
                <td>
                    <select name="IdNivelInteres" value ="">
                        <option value="1" item="1" >Bajo</option>
                        <option value="2" item="2" >Medio</option>
                        <option value="3" item="3" >Alto</option>
                        <option value="4" item="4" >Muy Alto</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Fecha De La Primera Llamada=</label></td>
                <td> <input type="date" name="Fecha_1raLlamada"></td>
            </tr>
            <tr>
                <td>Dale Una Clasificacion Al Cliente =</td>
                <td>
                    <select name="IdClasificacionCliente" value ="">
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
                    <select name="IdVisitaModelo" value ="">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>¿Asistio Al Lanzamiento? =</td>
                <td>
                    <select name="IdAsisteLanzamiento" value ="">
                        <option value="1" item="1" >Si</option>
                        <option value="0" item="0" >No</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Fecha De La Segunda Llamada=</label></td>
                <td> <input type="date" name="Fecha_2daLlamada"></td>
            </tr>
            <tr>
                <td>Dale Una Reclasificacion Al Cliente =</td>
                <td>
                    <select name="IdReclasificacionCliente" value ="">
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
                  <button type="submit" name="btnRegistrar" class="btn btn-primary btn-block btn-flat">Registrar Cliente</button>
                  <%-- <input type="submit" value="Registrar Cliente" name="btnGuardar" id="btnGuardar"/> --%>
                </th>
            </tr>
        </table>
    </from>
    
    </body>
</html>
