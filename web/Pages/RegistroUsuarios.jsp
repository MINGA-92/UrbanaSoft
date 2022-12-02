
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
    </head>
    <body>
        <h1 align="center">Registrar Nuevo Usuario/Empleado</h1>

    <%--     <form class="form-signin" method='POST' action="../RegistrarUsuarios">  --%>
    <form action="../GuardarUsuarios"  method="post" id="formNuevoUsuario">
            <table align="center" border="" bgcolor="skyblue">
                <tr>
                    <th colspan="2" bgcolor="skyblue"><h2>Formulario De Registro</h2></th>
                </tr>
                <tr>
                    <th colspan="2" bgcolor="white">
                        <img src="../Icons/iconAgregar.jpg" width="180" height="180">
                    </th>
                </tr>
                <tr>
                    <td>Id Usuario= </td>
                    <td> <input readonly="readonly" type="int"name="IdUsuario"></td>
                </tr>
                <tr>
                    <td>Asigne Un Rol Al Usuario=</td>
                    <td> 
                        <select name="Rol" value ="Selcciona">
                            <option value="3" item="3" >Comercial</option>
                       <%-- <option value="2" item="2" >Supervisor</option> --%>
                            <option value="1" item="1" >Administrador</option>
                        </select> 
                    </td>
                </tr>
                <tr>
                    <td><label>Nombre Del Usuario=</label></td>
                    <td><input type="text"name="Nombre"></td>
                </tr>
                <tr>
                    <td><label>Apellido Del Usuario=</label></td>
                    <td><input type="text"name="Apellido"><br></td>
                </tr>
                <tr>
                    <td>Correo Del Usuario=</label></td>
                    <td> <input type="text"name="Correo"></td>
                </tr>
                <tr>
                    <td><label>Contraseña=</label></td>
                    <td><input type="password" name="Password"></td>
                </tr>
                <tr>
                    <th colspan="2">
                        <button type="submit" name="btnGuardar" class="btn btn-primary btn-block btn-flat">Registrar Usuario</button> 
                        <%--    <input type="submit" value="Registrar Usuario" name="btnRegistrar" id="btnRegistrar"/> --%> </th>
                </tr>
            </table>
    </form>

</body>
</html>
