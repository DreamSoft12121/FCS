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
        background-color: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        margin-left:28%;
        margin-right:28%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: center;
    }

.drag-area {
  border: 5px dashed #ddd;
        height: 500px;
        width: 900px;
        border-radius: 5px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
}

h1 {
  font-size: 24px;
  margin-bottom: 20px;
  align-items: start;
}

form {
  display: flex;
  flex-direction: column;
  align-items: center;
}

input[type="file"] {
  margin-bottom: 10px;
}

input[type="submit"] {
  padding: 25px 40px;
  font-size: 40px;
  background-color: #4CAF50;
  color: white;
  border: none;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
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
</style>
<body>
            <%
    String username = (String) session.getAttribute("username");
    
    if (username != null) {
%>

<%
    } else {
        response.sendRedirect("../login_signup/login.jsp");
    }
%>
    <header>
        <a href="../index.html" class="logo">Pantaleone</a>
        <nav>
            <ul>
                <li><a href="../pubform/listar.jsp">lista de archivos</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="../formpdf/form.jsp">Volver a formularios</a></li>
            </ul>
        </nav>
    </header>
    <div class="card col-md-8">
    <div class="drag-area">
    <h1>Por favor seleccione el formulario a publicar</h1>
<form action="upload.jsp" method="post" enctype="multipart/form-data">
<!--<button action="upload.jsp" method="post" enctype="multipart/form-data"> Selecciona tu archivo</button>-->
<br>
<br>
<br>
        <input type="file" name="file" accept=".pdf" id="input-file" />
        <br>
        <br>
        <input type="submit" value="Subir " action="listar.jsp" />
    </form>
    </div>
    </div>
  
 <script>
        const dragArea = document.querySelector(".drag-area");
        const dragText = dragArea.querySelector("p");
        const input = dragArea.querySelector("#input-file");
        const submitButton = dragArea.querySelector("#submit-button");
        const uploadForm = document.getElementById("upload-form");

        dragArea.addEventListener("dragover", (event) => {
            event.preventDefault();
            dragArea.classList.add("active");
            dragText.textContent = "Suelta el archivo aquí";
        });

        dragArea.addEventListener("dragleave", () => {
            dragArea.classList.remove("active");
            dragText.textContent = "Arrastra y suelta archivos aquí";
        });

        dragArea.addEventListener("drop", (event) => {
            event.preventDefault();
            dragArea.classList.remove("active");
            dragText.textContent = "Arrastra y suelta archivos aquí";

            const file = event.dataTransfer.files[0];
            input.files = event.dataTransfer.files;
            input.value = file.name; // Actualiza el valor del campo de archivo con el nombre del archivo seleccionado
        });

        submitButton.addEventListener("click", () => {
            if (input.files.length === 0) {
                alert("Por favor, selecciona un archivo para subir.");
            } else {
                uploadForm.submit();
            }
        });
    </script>
    <%-- Procesar la subida del archivo --%>
<!--    <script>
     const dropArea = document.querySelector(".drop-area");
     const dragText = dropArea.querySelector('h2');
     const button = dropArea.querySelector("button");
     const input= dropArea.querySelector("#input-file");
     button.addEventListener("click", (e) {
       input.click();
       
     })
     input.addEventListener("change",(e) {
         
     })
        </script>-->
    <% 
        
        
        
        
        
        
        
        
        
        
        
        
        
        // Configuración de la ubicación para guardar los archivos subidos
        String uploadPath = "ruta/del/almacenamiento";
        
        // Configuración de la conexión a la base de datos MySQL
        String jdbcURL = "jdbc:mysql://localhost:3306/webapp";
        String dbUser = "root";
        String dbPassword = "n0m3l0";
        
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
//            out.println("Error al subir el archivo: " + e.getMessage());
        }
    %>
</body>
</html>