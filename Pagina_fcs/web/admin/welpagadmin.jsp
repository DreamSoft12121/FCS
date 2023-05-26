<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Principal</title>
    <!-- css Navbar -->
    <link rel="stylesheet" href="stylewel.css">
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata&family=Roboto+Mono:wght@200&display=swap"
        rel="stylesheet">\
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body style="background-color: #193718;">

    <!-- Inicio de Navbar -->
    <header>
        <a href="../index.html" class="logo">Pantaleon</a>
        <nav>
            <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="../pubform/listar.jsp">Lista Formularios</a></li>
                
            <%
                String username = (String) session.getAttribute("username");
                String role = (String) session.getAttribute("role");

                if (username != null && role != null && role.equals("admin")) {
            %>
            <li><a href="../login_signup/signup.jsp">Registrar</a></li> <!-- Agregar enlace al formulario de registro --> 
            <li><a href="../login_signup/logout.jsp">Cerrar Sesi&oacute;n</a></li>        
            <li><a href="#"><%= username %></a></li>
                    
            <%
                } else {
                    response.sendRedirect("../login_signup/login.jsp");
                }
            %>
            </ul>
        </nav>
    </header>
    <!-- <div style="height: 200vh; width: 100%;"></div> -->
    <section class="zona-img">
        <div class="texto-img">


            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 txt-left">
                <div class="txtstl">
                    <font color="#40be74">
                        <p class="p1">Creamos Pantaleon</p>
                        <p align="left" class="p2">Esta es una aplicaci&oacute;n web de Pantaleone donde los trabajadores
                            podr&aacute;n mandar sus documentos a traves de la aplicaci&oacute;n web</p>
                    </font>
                </div>
                <div class="txtstl2">
                    <a href="../paginafsc/paginafsc.html">
                        <button type="button" class="btn btn-outline-dark">
                            <font color="#40be74">M&aacute;s sobre nosotros<span class="material-symbols-outlined ">
                                <p class="arrow">north_east</p> 
                            </span></font>
                        </button>
                    </a>    
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 txt-right">
                <img class="img-right" src="bgprim.jpg" alt="">
            </div>

        </div>
    </section>
    <section>

    </section>

    <script type="text/javascript">
        window.addEventListener("scroll", function () {
            var header = document.querySelector("header");
            header.classList.toggle("abajo", window.scrollY > 0);
        });
    </script>
    <!-- fin de Navbar -->
    
</body>

</html>