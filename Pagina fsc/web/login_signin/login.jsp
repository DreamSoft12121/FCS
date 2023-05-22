<%-- 
    Document   : login
    Created on : 21 may 2023, 18:50:12
    Author     : Usuario Nuevo
--%>

<%@page import="org.dreamsoft.helper.LoginHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="style1.css">
    <!-- css navbar -->
    <link rel="stylesheet" href="navbar.css">
    <!-- CSS -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
    <!-- JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script src="login_signin.js"></script> 
</head>

<body>
    <!-- Navbar -->
    <header>
        <a href="../index.html" class="logo">Pantaleone</a>
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
    
    <div class="container" id="container">

        <div class="form-container sign-in-container">
        <%
            String action = null;
            LoginHelper loginHelper = null;
            
            action = request.getParameter("action");
            if( action != null && "Login".equals( action ) )
            {
                loginHelper = new LoginHelper( );
                if( !loginHelper.login( request, response ) )
                {
        %>
                    <script>
                        <!--
                            alert( 'Error' );
                        -->
                    </script>
        <%
                }
            }
            
        %>
            <form  id="form1" >
                <h1>Iniciar sesión</h1>
                <div class="social-container">
                    <a href="http://dreamsoft.gerdoc.com/" target="_blank" class="social"><svg
                            xmlns="http://www.w3.org/2000/svg" height="48" viewBox="0 96 960 960" width="48">
                            <path
                                d="M480 936q-150 0-255-105T120 576q0-150 105-255t255-105q8 0 17 .5t23 1.5q-36 32-56 79t-20 99q0 90 63 153t153 63q52 0 99-18.5t79-51.5q1 12 1.5 19.5t.5 14.5q0 150-105 255T480 936Zm0-60q109 0 190-67.5T771 650q-25 11-53.667 16.5Q688.667 672 660 672q-114.689 0-195.345-80.655Q384 510.689 384 396q0-24 5-51.5t18-62.5q-98 27-162.5 109.5T180 576q0 125 87.5 212.5T480 876Zm-4-297Z" />
                        </svg></a>
                    <a href="https://fcsmexico.com/" target="_blank" class="social"><svg
                            xmlns="http://www.w3.org/2000/svg" height="48" viewBox="0 96 960 960" width="48">
                            <path
                                d="M80 976v-80h800v80h-80v-40H520v40h-80v-40H160v40H80Zm150-240q-12.75 0-21.375-8.625T200 706V206q0-12.75 8.625-21.375T230 176h500q12.75 0 21.375 8.625T760 206v510q0 8.5-5.75 14.25T740 736H230Zm10-40h480V216H240v480Zm120-300h240v-40H360v40ZM240 696V216v480Z" />
                        </svg></a>

                </div>

                <input type="email" placeholder="Email"  id="correo" name="correo"/>
                <input type="password" placeholder="Password" id="password" name="password"/>
                <a href="#">¿Olvidaste tu contraseña?</a>
                
                
                    <input type="submit" class="button" id="action" name="action" value="Login">
                
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>¡Bienvenido de nuevo!</h1>
                    <p>Para mantenerse conectado con nosotros, inicie sesión con su información personal</p>
                    <button class="ghost" id="signIn">Iniciar sesión</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hola, amigo !</h1>
                    <p>Ingresa tus datos personales y comienza tu viaje con nosotros</p>
                    <a href="signin.html"><button class="ghost" id="signUp">Inscribirse</button></a>
                </div>
            </div>
        </div>
    </div>
    

</body>

</html>