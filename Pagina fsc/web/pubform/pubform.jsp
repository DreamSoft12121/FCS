<%-- 
    Document   : pubform
    Created on : 6 may 2023, 17:19:49
    Author     : dylanmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="jspdf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>
    <script src="app.js"></script>
    <link rel="stylesheet" href="navbar.css">
</head>

<body>
    <header>
        <a href="../index.html" class="logo">Pantaleone</a>
        <nav>
            <ul>
                <li><a href="../pagform/welpag2.html">Volver</a></li>
                <li><a href="../pubform/pubform.html">Publicar Formulario</a></li>
                
            </ul>
        </nav>
    </header>

    <div class="txtinto" style="margin-top: 5%;">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h2>Aqui estan los PDFs</h2>
                    <hr>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <form id="form">
                                    <label for="rss" class="form-label">PDF</label>
                                    <input type="file" class="form-control" id="rss">
                                    <button type="submit">subir</button>
                                </form>
                            </div>
                    </div>    
                    <hr>
            </div>
        </div>
    </div>
    
</body>

</html>