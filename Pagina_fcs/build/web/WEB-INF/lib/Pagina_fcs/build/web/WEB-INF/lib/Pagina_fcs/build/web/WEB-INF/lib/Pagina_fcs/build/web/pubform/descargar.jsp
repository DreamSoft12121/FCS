<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Descargar archivo PDF</title>
</head>
<body>
    <% 
        // Obtener el ID del archivo a descargar desde la URL
        int id = Integer.parseInt(request.getParameter("id"));
        
        // Configuración de la conexión a la base de datos MySQL
        String jdbcURL = "jdbc:mysql://localhost:3306/login_example";
        String dbUser = "root";
        String dbPassword = "1234";
        
        try {
            // Establecer la conexión a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            
            // Obtener la ruta del archivo PDF de la base de datos
            String sql = "SELECT ruta FROM archivos_pdf WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            
            // Verificar si se encontró el archivo en la base de datos
            if (resultSet.next()) {
                String ruta = resultSet.getString("ruta");
                
                // Descargar el archivo
                File file = new File(ruta);
                FileInputStream fis = new FileInputStream(file);
                String fileName = file.getName();
                String contentType = getServletContext().getMimeType(fileName);
                
                response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
                response.setContentType(contentType);
                
                OutputStream os = response.getOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                while ((bytesRead = fis.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }
                
                fis.close();
                os.close();
                
            } else {
                out.println("Archivo no encontrado");
            }
            
            // Cerrar la conexión y liberar recursos
            resultSet.close();
            statement.close();
            connection.close();
            
        } catch (Exception e) {
            out.println("Error al descargar el archivo PDF: " + e.getMessage());
        }
    %>
    
</body>
</html>