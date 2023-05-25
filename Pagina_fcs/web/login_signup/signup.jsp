<%@ page contentType="text/html; charset=UTF-8" %>
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
    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    <% if (errorMessage != null) { %>
        <div class="error-message"><%= errorMessage %></div>
    <% } %>
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
            <form action="signupProcess.jsp" method="post"">
                <h1>Crear Cuenta</h1>


                Name: <input type="text" name="name" required><br>
                Username: <input type="text" name="username" required><br>
                Password: <input type="password" name="password" required><br>
                
                <button type="submit" value="Sign Up">Registrar</button> 
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
                    <p>Para mantenerse conectado con nosotros, inicie sesión con su información personal</p>
                    <a href="login.jsp"><button class="ghost" id="signUp">Iniciar Sesion</button></a>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
