<%-- 
    Document   : signin
    Created on : 21 may 2023, 18:10:01
    Author     : Usuario Nuevo
--%>

<%@page import="org.dreamsoft.helper.UsuarioHelper"%>
<%@page import="org.dreamsoft.dao.Usuario"%>
<%@page import="org.dreamsoft.helper.Helpers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style1.css">
    <!-- css navbar -->
    <link rel="stylesheet" href="navbar.css">
    <!-- CSS -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
    <!-- JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>

<body>
        <%
            String accion = request.getParameter("accion");
            Helpers helpers = null;
            Usuario usuario = null;
            String aux = null;
            boolean flag = false;
            String readonly = null;
            if( "Nuevo".equals( accion ) || "Editar".equals( accion ) )
            {
                if( "Nuevo".equals( accion ) )
                {
                    usuario = new Usuario( );
                    usuario.setCorreo( "" );
                    usuario.setNomemple( "" );
                    usuario.setPassword( "" );
                    aux = "Guardar";
                    readonly = "";
            }
            %>
    <header>
        <a href="../index.html" class="logo">Pantaleon</a>
        <nav>
            <ul>
                <li><a href="../paginafsc/paginafsc.html">Nosotros</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="../index.html">Volver</a></li>
            </ul>
        </nav>
    </header>
    <!-- fin de Navbar -->
    <script src="js1.js"></script>
    <div class="container" id="container">


        <div class="form-container sign-in-container">
            <form id="form1" method="post" action="usuarios.jsp" onsubmit="return validateForm( )">
                <h1>Crear Cuenta</h1>


                <input type="email" placeholder="Email" name="correo" id="correo" value="${param.correo}" ${param.readonly} />
                <span id="correoError" style="color:red"></span>
                
                <input type="text" placeholder="Nombre" name="nomemple" id="nomemple" value="${param.nomemple}" />
                <span id="nomempleError" style="color:red"></span>
                
                <input type="password" placeholder="Password" name="password" id="password" value="${param.password}"/>
                <span id="passwordError" style="color:red"></span>
                
                <button><input type="submit"  name="accion" id="accion" value="${param.accion}" />Inscribirse</button> 
            </form>
        </div>
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
        <%
            if( "Guardar".equals( accion ) || "Borrar".equals( accion ) || "Actualizar".equals( accion ) )
            {
                helpers = new UsuarioHelper( ).addRequest( request );
                if( "Guardar".equals( accion ) )
                {
                    flag = helpers.addT( );
         if( flag )
                {
        %>
                    <jsp:forward page="usuarios.jsp?accion=list" />
        <%
                }
        %>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>¡Bienvenido de nuevo!</h1>
                    <p>Para mantenerse conectado con nosotros, inicie sesión con su información personal</p>
                    <button class="ghost" id="signIn">Iniciar sesión</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>¡Hola, amigo !</h1>
                    <p>Para mantenerse conectado con nosotros, inicie sesión con su información personal</p>
                    <a href="login1.html"><button class="ghost" id="signUp">Iniciar Sesion</button></a>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
