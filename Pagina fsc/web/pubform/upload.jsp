<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*" %>
<%@ page import="javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Subir archivo PDF</title>
</head>
<body>
    <h1>Subir archivo PDF</h1>
    <form action="upload.jsp" method="post" enctype="multipart/form-data">
        <input type="file" name="file" accept=".pdf" required />
        <input type="submit" value="Subir" />
    </form>

    <%-- Procesar la subida del archivo --%>
    <% 
        // Configuración de la ubicación para guardar los archivos subidos
        String uploadPath = "ruta/del/almacenamiento";
        
        // Configuración de la conexión a la base de datos MySQL
        String jdbcURL = "jdbc:mysql://localhost:3306/webapp";
        String dbUser = "root";
        String dbPassword = "admin";
        
        // Crear una fábrica de archivos temporales
        DiskFileItemFactory factory = new DiskFileItemFactory();
        
        // Configurar la ubicación de los archivos temporales
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        // Crear el manejador de carga de archivos
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
            // Obtener los parámetros de la solicitud
            List<FileItem> items = upload.parseRequest(request);
            
            // Iterar sobre los parámetros
            for (FileItem item : items) {
                // Verificar si es un campo de formulario regular o un archivo
                if (item.isFormField()) {
                    // Es un campo de formulario regular
                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString("UTF-8");
                    
                    // Aquí puedes procesar otros campos de formulario si es necesario
                    
                } else {
                    // Es un archivo
                    String fileName = new File(item.getName()).getName();
                    String filePath = uploadPath + File.separator + fileName;
                    
                    // Guardar el archivo en el sistema de archivos
                    item.write(new File(filePath));
                    
                    // Guardar el archivo en la base de datos
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                    String sql = "INSERT INTO archivos_pdf (nombre, ruta) VALUES (?, ?)";
                    PreparedStatement statement = connection.prepareStatement(sql);
                    statement.setString(1, fileName);
                    statement.setString(2, filePath);
                    statement.executeUpdate();
                    
                    // Cerrar la conexión y liberar recursos
                    statement.close();
                    connection.close();
                    
                    out.println("El archivo ha sido subido y guardado en la base de datos.");
                }
            }
        } catch (Exception e) {
            out.println("Error al subir el archivo: " + e.getMessage());
        }
    %>
</body>
</html>