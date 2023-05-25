<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Archivos</title>
    <style>
        body {
           background-color: #537895;
       background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25'%3E%3Cdefs%3E%3ClinearGradient id='a' gradientUnits='userSpaceOnUse' x1='0' x2='0' y1='0' y2='100%25' gradientTransform='rotate(271,960,468)'%3E%3Cstop offset='0' stop-color='%23005E78'/%3E%3Cstop offset='1' stop-color='%231F1D1D'/%3E%3C/linearGradient%3E%3Cpattern patternUnits='userSpaceOnUse' id='b' width='504' height='420' x='0' y='0' viewBox='0 0 1080 900'%3E%3Cg fill-opacity='0.09'%3E%3Cpolygon fill='%23444' points='90 150 0 300 180 300'/%3E%3Cpolygon points='90 150 180 0 0 0'/%3E%3Cpolygon fill='%23AAA' points='270 150 360 0 180 0'/%3E%3Cpolygon fill='%23DDD' points='450 150 360 300 540 300'/%3E%3Cpolygon fill='%23999' points='450 150 540 0 360 0'/%3E%3Cpolygon points='630 150 540 300 720 300'/%3E%3Cpolygon fill='%23DDD' points='630 150 720 0 540 0'/%3E%3Cpolygon fill='%23444' points='810 150 720 300 900 300'/%3E%3Cpolygon fill='%23FFF' points='810 150 900 0 720 0'/%3E%3Cpolygon fill='%23DDD' points='990 150 900 300 1080 300'/%3E%3Cpolygon fill='%23444' points='990 150 1080 0 900 0'/%3E%3Cpolygon fill='%23DDD' points='90 450 0 600 180 600'/%3E%3Cpolygon points='90 450 180 300 0 300'/%3E%3Cpolygon fill='%23666' points='270 450 180 600 360 600'/%3E%3Cpolygon fill='%23AAA' points='270 450 360 300 180 300'/%3E%3Cpolygon fill='%23DDD' points='450 450 360 600 540 600'/%3E%3Cpolygon fill='%23999' points='450 450 540 300 360 300'/%3E%3Cpolygon fill='%23999' points='630 450 540 600 720 600'/%3E%3Cpolygon fill='%23FFF' points='630 450 720 300 540 300'/%3E%3Cpolygon points='810 450 720 600 900 600'/%3E%3Cpolygon fill='%23DDD' points='810 450 900 300 720 300'/%3E%3Cpolygon fill='%23AAA' points='990 450 900 600 1080 600'/%3E%3Cpolygon fill='%23444' points='990 450 1080 300 900 300'/%3E%3Cpolygon fill='%23222' points='90 750 0 900 180 900'/%3E%3Cpolygon points='270 750 180 900 360 900'/%3E%3Cpolygon fill='%23DDD' points='270 750 360 600 180 600'/%3E%3Cpolygon points='450 750 540 600 360 600'/%3E%3Cpolygon points='630 750 540 900 720 900'/%3E%3Cpolygon fill='%23444' points='630 750 720 600 540 600'/%3E%3Cpolygon fill='%23AAA' points='810 750 720 900 900 900'/%3E%3Cpolygon fill='%23666' points='810 750 900 600 720 600'/%3E%3Cpolygon fill='%23999' points='990 750 900 900 1080 900'/%3E%3Cpolygon fill='%23999' points='180 0 90 150 270 150'/%3E%3Cpolygon fill='%23444' points='360 0 270 150 450 150'/%3E%3Cpolygon fill='%23FFF' points='540 0 450 150 630 150'/%3E%3Cpolygon points='900 0 810 150 990 150'/%3E%3Cpolygon fill='%23222' points='0 300 -90 450 90 450'/%3E%3Cpolygon fill='%23FFF' points='0 300 90 150 -90 150'/%3E%3Cpolygon fill='%23FFF' points='180 300 90 450 270 450'/%3E%3Cpolygon fill='%23666' points='180 300 270 150 90 150'/%3E%3Cpolygon fill='%23222' points='360 300 270 450 450 450'/%3E%3Cpolygon fill='%23FFF' points='360 300 450 150 270 150'/%3E%3Cpolygon fill='%23444' points='540 300 450 450 630 450'/%3E%3Cpolygon fill='%23222' points='540 300 630 150 450 150'/%3E%3Cpolygon fill='%23AAA' points='720 300 630 450 810 450'/%3E%3Cpolygon fill='%23666' points='720 300 810 150 630 150'/%3E%3Cpolygon fill='%23FFF' points='900 300 810 450 990 450'/%3E%3Cpolygon fill='%23999' points='900 300 990 150 810 150'/%3E%3Cpolygon points='0 600 -90 750 90 750'/%3E%3Cpolygon fill='%23666' points='0 600 90 450 -90 450'/%3E%3Cpolygon fill='%23AAA' points='180 600 90 750 270 750'/%3E%3Cpolygon fill='%23444' points='180 600 270 450 90 450'/%3E%3Cpolygon fill='%23444' points='360 600 270 750 450 750'/%3E%3Cpolygon fill='%23999' points='360 600 450 450 270 450'/%3E%3Cpolygon fill='%23666' points='540 600 630 450 450 450'/%3E%3Cpolygon fill='%23222' points='720 600 630 750 810 750'/%3E%3Cpolygon fill='%23FFF' points='900 600 810 750 990 750'/%3E%3Cpolygon fill='%23222' points='900 600 990 450 810 450'/%3E%3Cpolygon fill='%23DDD' points='0 900 90 750 -90 750'/%3E%3Cpolygon fill='%23444' points='180 900 270 750 90 750'/%3E%3Cpolygon fill='%23FFF' points='360 900 450 750 270 750'/%3E%3Cpolygon fill='%23AAA' points='540 900 630 750 450 750'/%3E%3Cpolygon fill='%23FFF' points='720 900 810 750 630 750'/%3E%3Cpolygon fill='%23222' points='900 900 990 750 810 750'/%3E%3Cpolygon fill='%23222' points='1080 300 990 450 1170 450'/%3E%3Cpolygon fill='%23FFF' points='1080 300 1170 150 990 150'/%3E%3Cpolygon points='1080 600 990 750 1170 750'/%3E%3Cpolygon fill='%23666' points='1080 600 1170 450 990 450'/%3E%3Cpolygon fill='%23DDD' points='1080 900 1170 750 990 750'/%3E%3C/g%3E%3C/pattern%3E%3C/defs%3E%3Crect x='0' y='0' fill='url(%23a)' width='100%25' height='100%25'/%3E%3Crect x='0' y='0' fill='url(%23b)' width='100%25' height='100%25'/%3E%3C/svg%3E");
           background-repeat: no-repeat;
           background-size: cover;
           padding-top: 100px;
           font-family: sans-serif;
           height: 1200px;
       }
       .card {
           max-height: 60%;
           max-width:60%;
           background-color: white;
           padding: 0px;
           border-radius: 5px;
           box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
           margin-left:28%;
           margin-right:28%;
           margin-top: 0px;
           display: flex;
           flex-wrap: wrap;
           justify-content: space-between;
           align-items: center;
           overflow-y: scroll;
           
           
       }
       table {
           
           border-collapse: collapse;
           width: 100%;
       }
       
       th, td {
           padding: 8px;
           text-align: left;
           border-bottom: 1px solid #ddd;
       }
       
       th {
           background-color: #f2f2f2;
       }
       
       tr:hover {
           background-color: #f5f5f5;
       }
       tr:nth-child(even) {
           background-color: #f9f9f9;
       }
       .fix{
           position: fixed;
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
   .sticky-column {
           position: relative;
       }
       
       .sticky-column::before {
           content: "";
           position: absolute;
           top: 0;
           left: 0;
           width: 1px;
           height: 100%;
           background-color: #ccc;
       }
       .sticky-column{
           position: sticky;
           top: 0px;
       }
   /*.pos{
       position: absolute;
       margin-left:  30%;
   }
   .pos1{
       position:absolute;
       
       
   }
   .pos2{
      position:absolute; 
   }*/
   </style>
</head>
<body>
    <header>
        <a href="../index.html" class="logo">Pantaleon</a>
        <nav>
            <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="../formpdf/form.jsp">Volver a formularios</a></li>
            </ul>
        </nav>
    </header>
            <%
    String username = (String) session.getAttribute("username");
    
    if (username != null) {
%>

<%
    } else {
        response.sendRedirect("../login_signup/login.jsp");
    }
%>
    
    <div class="card col-md-8">
    <table>
        <thead>
        <tr>
            <th class="sticky-column">ID</th>
            <th class="sticky-column">Nombre</th>
            <th class="sticky-column">Acciones</th>
        </tr>
    </thead>
        <% 
            // Configuraci�n de la conexi�n a la base de datos MySQL
            String jdbcURL = "jdbc:mysql://localhost:3306/Data_DS";
            String dbUser = "root";
            String dbPassword = "1234";
            
            try {
                // Establecer la conexi�n a la base de datos
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                
                // Obtener los archivos PDF de la base de datos
                //String sql = "select id, nombre, ruta, name from users,archivos_pdf where users.id_user = archivos_pdf.id_user;";
                //String sql = "SELECT * FROM users,archivos_pdf";
                String sql = "SELECT * FROM archivos_pdf";
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();
                
                // Iterar sobre los resultados y mostrarlos en la tabla
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    //String name = resultSet.getString("name");
                    String nombre = resultSet.getString("nombre");
                    String ruta = resultSet.getString("ruta");
                    //String name = resultSet.getString("name");
        %>
        <tr>
            <td><%= id %></td>
            <td><%= nombre %></td>
            <td><a href="descargar.jsp?id=<%= id %>">Abrir</a></td>
        </tr>
        <% 
                }
                
                // Cerrar la conexi�n y liberar recursos
                resultSet.close();
                statement.close();
                connection.close();
                
            } catch (Exception e) {
                out.println("Error al listar los archivos PDF: " + e.getMessage());
            }
        %>
    </table>
</div>
</body>
</html>



