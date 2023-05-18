<%-- 
    Document   : rol
    Created on : 4 may 2023, 13:32:28
    Author     : alumno
--%>

<form id="form1" method="post" action="roles.jsp" onsubmit="return validateForm( )">
    <table border="1">
        <tr>
            <td>CORREO</td>
            <td>
                
                <input type="text" name="correo" id="correo" value="${param.correo}" ${param.readonly} /> 
                <span id="correoError" style="color:red"></span>
            </td>
        </tr>

        <tr>
            <td>NOMBRE</td>
            <td>
                <input type="text" name="nomemple" id="nomemple" value="${param.nomemple}" /> 
                <span id="nomempleError" style="color:red"></span>
            </td>
        </tr> 
        <tr>
            <td>PASSWORD</td>
            <td>
                <input type="text" name="password" id="password" value="${param.password}" /> 
                <span id="passwordError" style="color:red"></span>
            </td>
        </tr>        

            <td colspan="2">
                <input type="submit"  name="accion" id="accion" value="${param.accion}" />
            </td>
        </tr>
    </table>
    <script>
        <!--
        function validateTexto( obj , textoError, campoError )
        {
            if( obj.value === undefined || obj.value.length <= 0 )
            {
                campoError.innerHTML = "<b>" + textoError + "</b>";
                return false;
            }
            campoError.innerHTML = " ";
            return true;
        
        }
        function validateForm( )
        {
            const correo = document.getElementById("correo");
            const nomemple = document.getElementById("nomemple");
            const password = document.getElementById("password");
            var flag = true;
            
            if( !validateTexto( correo , "El correo es un campo requerido" , document.getElementById("correoError") ) )
            {
                flag = false;
            }
            if( !validateTexto( nomemple , "Nombre es un campo requerido" , document.getElementById("nomempleError") ) )
            {
                flag = false;
            }
            if( !validateTexto( password , "Password es un campo requerido" , document.getElementById("passwordError") ) )
            {
                flag = false;
            }

            return flag;
        }
        -->
    </script>
    <a href="roles.jsp"> Lista de roles </a>
</form>