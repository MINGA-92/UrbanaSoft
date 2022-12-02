/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.addEventListener ('load', function (){
    document.getElementById('btnIniciar').addEventListener('click', function (){
        
        var Usuario = document.getElementById('txtUsuario').value;
        var Contraseña = document.getElementById('txtPassword').value;
        
        var Bandera =false;
           if(Usuario.length > 0 && Contraseña.length > 0){
               Bandera = true;
           }
           
           if (Bandera){
               document.getElementById('formInicio').submit();
           }else{
        alert ("!Por Favor, Complete Todos Los Campos¡");
           }
    });
});
