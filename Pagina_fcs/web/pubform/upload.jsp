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
<style>
    *{
    margin:0;
    padding:0;
    box-sizing: border-box;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    
        
    
    }
    body{
        display:flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        
    }
    .drag-area{
        border: 5px dashed #ddd;
        height: 500px;
        width: 700px;
        border-radius: 5px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        
       
    }
    .drag-area.active{
        background-color: blue;
        color:black;
        border: 2px dashed #618ac9;
        
    }
    
    .drag-area h2{
        font-size: 30px;
        font-weight: 500;
        color:#000;
    }
    .drag-area span{
        font-size: 25px;
        color:#000;
        
    }
    .drag-area button{
        padding: 10px 25px;
        font-size: 20px;
        border:0;
        outline:none;
        background-color: #005E78;
        color:white;
        border-radius: 5px;
        cursor:pointer;
        margin:20px;
        
    }
    .file-container{
        display:flex;
        align-items: center;
        gap:10px;
        padding:10px;
        border:solid 1px #ddd;
        
    }
    #preview{
        margin-top:10px;
        
    }
    .status-text{
        padding: 0 10px;
        
    }
    .succes{
        color: #52ad5a;
         
    }
    .failure{
        color: #ff0000;
        
    }
</style>
<body>
     <div class="drag-area">
    <h1>Subir archivo PDF</h1>
<form action="upload.jsp" method="post" enctype="multipart/form-data">
<!--<button action="upload.jsp" method="post" enctype="multipart/form-data"> Selecciona tu archivo</button>-->
        <input type="file" name="file" accept=".pdf" id="input-file" />
        <button type="submit" value="Subir" action="listar.jsp"></button>
    </form>
    </div>

    <%-- Procesar la subida del archivo --%>
    <% 
        // Configuración de la ubicación para guardar los archivos subidos
        String uploadPath = "E:/ruta";
        
        // Configuración de la conexión a la base de datos MySQL
        String jdbcURL = "jdbc:mysql://localhost:3306/login_example";
        String dbUser = "root";
        String dbPassword = "1234";
        
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
                    
                    response.sendRedirect("listar.jsp");
                }
            }
        } catch (Exception e) {
            out.println("Error al subir el archivo: " + e.getMessage());
        }
    %>
</body>
</html>
