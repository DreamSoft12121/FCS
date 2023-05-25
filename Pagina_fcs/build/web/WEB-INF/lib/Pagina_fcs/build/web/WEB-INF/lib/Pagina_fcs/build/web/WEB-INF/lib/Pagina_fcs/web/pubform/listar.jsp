<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar archivos PDF</title>
</head>
<body>
    <h1>Listar archivos PDF</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Acciones</th>
        </tr>
        <% 
            // Configuración de la conexión a la base de datos MySQL
            String jdbcURL = "jdbc:mysql://localhost:3308/login_example";
            String dbUser = "root";
            String dbPassword = "1234";
            
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
</body>
</html>


