
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UrbanaSoft</title>
        <script src="js/main.js"></script>
    </head>
    <body>
        <h1 align="center">UrbanaSoft 2.0</h1>
        <h2 align="center">Bienvenidos</h2>

        <form action="InicioSesion"  method="post" id="formInicio">
            <table width="359" align="center">
                <tr>
                    <th colspan="2">
                        <img src="Icons/images.jpg" width="180" height="180">
                    </th>
                </tr>
            </table>
            <table border="" width="359" align="center">
                <tr>
                    <th bgcolor="skyblue">Ingresa Tu Id Usuario=</th>
                    <td bgcolor="skyblue"><input type="int" name="IdUsuario" id="txtUsuario" bgcolor="skyblue"></td>
                </tr>
                <tr>
                    <th bgcolor="skyblue"><label>Elige Tu Rol =</label></th>
                    <th bgcolor="skyblue">
                        <select name="Rol" id="cboRol">
                            <option value="0" item="0" >Selecciona</option>
                            <option value="1" item="1" >Administrador</option>
                            <option value="2" item="2" >Supervisor</option>
                            <option value="3" item="3" >Comercial</option>
                        </select></th>
                </tr>
                <th bgcolor="skyblue">Ingresa Tu Contraseña= </th>
                <td bgcolor="skyblue"><input type="password" name="Password" id="txtPassword"></td>
                <br>
                <tr bgcolor="skyblue">
                    <th colspan="2">
                        <input type="submit" value="Iniciar Sesion" name="btnIniciar" id="btnIniciar"/>
                    </th>
                </tr>
            </table>
        </form>
        
        <% 
          if(request.getParameter("Cerrar")!=null){
            session.invalidate();
            }
            %>
        
    </body>
</html>
