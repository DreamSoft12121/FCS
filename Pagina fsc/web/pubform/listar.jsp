<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar archivos PDF</title>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<style>

*{
    margin: 0;
    padding: 0;
    
}

.medidastab{
    align-items: center;
    text-align: center;
    margin: 0 auto;
    width: 60%;
    height: 50vh;
}

table{
        animation-name: square-in-hesitate;
    animation-duration: 2s;
}

hr{
    color: #ffae2f;
    opacity: 1;
}

header{

    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    display: flex;
    justify-content: space-around;			
    transition: 0.7s;
    padding: 30px 20px;
    z-index: 10;
}
header.abajo{
    background: #ffae2f;
    padding: 15px 20px;
}

header .logo{
    position: relative;
    color: #ffae2f;
    font-weight: bold;
    font-size: 2em;
    letter-spacing: 2px;
    transition: 1.5s;
    text-decoration: none;
    
}

nav{
    display: flex;
    justify-content: center;
    align-items: center;
}

header ul{
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
}

header ul li{
    list-style: none;
}

header ul li a{
    position: relative;
    font-family: helvetica;
    margin: 0 15px;
    text-decoration: none;
    color: #ffae2f;
    letter-spacing: 2px;
    font-weight: 600;
    transition: 0.7s;
}

.zona-img{
    position: relative;
    width: 100%;
    height: 100vh;
    /* background: url(fondo2.jpg); */
    background-color: #193718;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='836' height='836' viewBox='0 0 800 800'%3E%3Cg fill='none' stroke='%231F1D1D' stroke-width='3.9'%3E%3Cpath d='M769 229L1037 260.9M927 880L731 737 520 660 309 538 40 599 295 764 126.5 879.5 40 599-197 493 102 382-31 229 126.5 79.5-69-63'/%3E%3Cpath d='M-31 229L237 261 390 382 603 493 308.5 537.5 101.5 381.5M370 905L295 764'/%3E%3Cpath d='M520 660L578 842 731 737 840 599 603 493 520 660 295 764 309 538 390 382 539 269 769 229 577.5 41.5 370 105 295 -36 126.5 79.5 237 261 102 382 40 599 -69 737 127 880'/%3E%3Cpath d='M520-140L578.5 42.5 731-63M603 493L539 269 237 261 370 105M902 382L539 269M390 382L102 382'/%3E%3Cpath d='M-222 42L126.5 79.5 370 105 539 269 577.5 41.5 927 80 769 229 902 382 603 493 731 737M295-36L577.5 41.5M578 842L295 764M40-201L127 80M102 382L-261 269'/%3E%3C/g%3E%3Cg fill='%23006FAE'%3E%3Ccircle cx='769' cy='229' r='5'/%3E%3Ccircle cx='539' cy='269' r='5'/%3E%3Ccircle cx='603' cy='493' r='5'/%3E%3Ccircle cx='731' cy='737' r='5'/%3E%3Ccircle cx='520' cy='660' r='5'/%3E%3Ccircle cx='309' cy='538' r='5'/%3E%3Ccircle cx='295' cy='764' r='5'/%3E%3Ccircle cx='40' cy='599' r='5'/%3E%3Ccircle cx='102' cy='382' r='5'/%3E%3Ccircle cx='127' cy='80' r='5'/%3E%3Ccircle cx='370' cy='105' r='5'/%3E%3Ccircle cx='578' cy='42' r='5'/%3E%3Ccircle cx='237' cy='261' r='5'/%3E%3Ccircle cx='390' cy='382' r='5'/%3E%3C/g%3E%3C/svg%3E");
    background-size: cover;
    background-position: center center;
}

header.abajo .logo,
header.abajo ul li a{
    color: #000;
}

.texto-img{
    color: #fff;
    text-align: center;
}

@keyframes square-in-hesitate {
  0% {
    clip-path: inset(100% 100% 100% 100%);
  }
  40% {
    clip-path: inset(33% 33% 33% 33%);
  }
  100% {
    clip-path: inset(0 0 0 0);
  }
}

[transition-style="in:square:hesitate"] {
  animation: 2.5s cubic-bezier(.25, 1, .30, 1) square-in-hesitate both;
}


@media (max-width:700px){
    header{
        width:100px;
        margin-left: 35%;
    }
    header ul li a{
        position: relative;
        font-family: helvetica;
        margin: 0 10px ;
        text-decoration: none;
        color: #ffae2f;
        letter-spacing: 2px;
        font-weight: 600;
        transition: 0.7s;
        font-size: 12px;
    }
    header .logo{
        position: relative;
        color: #ffae2f;
        font-weight: bold;
        padding-left: 50px;
        letter-spacing: 0px;
        transition: 1.5s;
        text-decoration: none;
        font-size: 17px;
    }
}   
</style>
<body>
     <header>
        <a href="../index.html" class="logo">Pantaleone</a>
        <nav>
            <ul>
                <li><a href="../pagform/welpag2.html">Volver</a></li>
                <li><a href="../pubform/upload.jsp">Publicar Formulario</a></li>
            </ul>
        </nav>
    </header>

    <div class="medidastab"> 
    <table class="table table-dark table-hover">
                <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <hr size="20">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Acciones</th>
        </tr>
        <% 
            // Configuración de la conexión a la base de datos MySQL
            String jdbcURL = "jdbc:mysql://localhost:3306/webapp";
            String dbUser = "root";
            String dbPassword = "admin";
            
            try {
                // Establecer la conexión a la base de datos
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                
                // Obtener los archivos PDF de la base de datos
                String sql = "SELECT * FROM archivos_pdf";
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();
                
                // Iterar sobre los resultados y mostrarlos en la tabla
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String nombre = resultSet.getString("nombre");
                    String ruta = resultSet.getString("ruta");
        %>
        <tr>
            <td><%= id %></td>
            <td><%= nombre %></td>
            <td><a href="descargar.jsp?id=<%= id %>">Descargar</a></td>
        </tr>
        <% 
                }
                
                // Cerrar la conexión y liberar recursos
                resultSet.close();
                statement.close();
                connection.close();
                
            } catch (Exception e) {
                out.println("Error al listar los archivos PDF: " + e.getMessage());
            }
        %>
    </table>
    <hr size="20">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    </div>
</body>
</html>


