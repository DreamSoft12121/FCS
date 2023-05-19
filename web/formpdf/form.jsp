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
<style>
    body {
        background-image: linear-gradient(to top, #09203f 0%, #537895 100%);
        background-repeat: no-repeat;
        background-size: cover;
        padding-top: 50px;
    }

    .card {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .btn {
        padding: 10px 20px;
        background-color: #537895;
        border: none;
        color: white;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-top: 10px;
        cursor: pointer;
        border-radius: 4px;
    }

    .form-group {
        margin-bottom: 10px;
    }

    .card-form {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .card-form .form-group {
        flex-basis: calc(100% / 6 - 10px);
        margin-bottom: 15px;
    }

    @media (max-width: 767px) {
        .card-form .form-group {
            flex-basis: calc(100% / 2 - 10px);
        }
    }
</style>

<body>
    <header>
        <a href="../index.html" class="logo">Pantaleone</a>
        <nav>
            <ul>
                <li><a href="../pagform/welpag2.html">Volver</a></li>
                <li><a href="../pubform/pubform.jsp">Publicar Formulario</a></li>
            </ul>
        </nav>
    </header>

    <div class="txtinto" style="margin-top: 5%;">
        <div class="card">
            <div class="container mt-4">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <h2>1. Datos de contacto</h2>
                        <hr>
                        <form id="form">


                            <div class="row mb-3">


                                <!-- Razon social del solicitante -->


                                <div class="col-md-6">
                                    <label for="rss" class="form-label">Razon social del solicitante</label>
                                    <input type="text" class="form-control" id="rss">
                                </div>


                                <!-- Nombre solicitante -->


                                <div class="col-md-6">
                                    <label for="nom" class="form-label">Nombre solicitante</label>
                                    <input type="text" class="form-control" id="nom">
                                </div>
                            </div>


                            <!-- Fecha de solicitud -->


                            <div class="row mb-3">

                                <div class="col-md-6">
                                    <label for="fech" class="form-label">Fecha de solicitud</label>
                                    <input type="text" class="form-control" id="fech" required>
                                </div>


                                <!-- Telefono de contacto -->


                                <div class="col-md-6">
                                    <label for="tel" class="form-label">Telefono de contacto</label>
                                    <input type="text" class="form-control" id="tel">
                                </div>


                                <!-- Correo de contacto -->


                                <div class="col-md-6">
                                    <label for="corre" class="form-label">Correo de contacto</label>
                                    <input type="text" class="form-control" id="corre">
                                </div>
                            </div>

                            <h2>2. Datos del servicio requerido </h2>
                            <hr>


                            <!-- Fecha del servicio -->


                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label for="fechserv" class="form-label">Fecha del servicio</label>
                                    <input type="date" class="form-control" id="fechserv">
                                </div>
                            </div>


                            <!-- Tipo de servicio -->


                            <div class="row mb-3">

                                <div class="col-md-10">
                                    <div>
                                        <label for="tipserv" class="form-label">Tipo de servicio</label>
                                        <select class="form-select" id="tipserv">
                                            <option value="0">Seleccione una opcion</option>
                                            <option value="1">Local</option>
                                            <option value="2">Foranea</option>
                                        </select>
                                    </div>

                                </div>

                                <h3>Recoleccion</h3>
                                <hr>


                                <!-- Lugar-Recoleccion -->


                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="lugrec" class="form-label">Lugar</label>
                                        <input type="text" class="form-control" id="lugrec">
                                    </div>


                                    <!-- Fecha-Recoleccion -->


                                    <div class="col-md-6">
                                        <label for="fechrec" class="form-label">Fecha</label>
                                        <input type="text" class="form-control" id="fechrec">
                                    </div>


                                    <!-- Hora-Recoleccion -->


                                    <div class="col-md-6">
                                        <label for="horarec" class="form-label">Hora</label>
                                        <input type="text" class="form-control" id="horarec">
                                    </div>
                                </div>



                                <h3>Entrega</h3>
                                <hr>

                                <div class="row mb-3">


                                    <!-- Lugar-Entrega -->


                                    <div class="col-md-6">
                                        <label for="lugent" class="form-label">Lugar</label>
                                        <input type="text" class="form-control" id="lugent">
                                    </div>


                                    <!-- Fecha-Entrega -->


                                    <div class="col-md-6">
                                        <label for="fechent" class="form-label">Fecha</label>
                                        <input type="text" class="form-control" id="fechent">
                                    </div>


                                    <!-- Hora-Entrega -->


                                    <div class="col-md-6">
                                        <label for="horaent" class="form-label">Hora</label>
                                        <input type="text" class="form-control" id="horaent">
                                    </div>
                                </div>

                                <hr>


                                <div class="row mb-3">
                                    <div class="col-md-2">


                                        <!-- Se requiere maniobra -->


                                        <div>
                                            <label for="" class="form-label">Se requiere maniobra</label>
                                            <div class="form-check form-check-inline">
                                                <input type="radio" name="sqm" class="form-check-input" id="sqm-si"
                                                    value="1">
                                                <label for="sqm-si" class="form-check-label">Si</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input type="radio" name="sqm" class="form-check-input" id="sqm-no"
                                                    value="0" checked>
                                                <label for="sqm-no" class="form-check-label">No</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-10">


                                        <!-- Temperatura requerida de la carga -->


                                        <div>
                                            <label for="trc" class="form-label">Temperatura requerida de la
                                                carga</label>
                                            <select class="form-select" id="trc">
                                                <option value="0">Seleccione una opcion</option>
                                                <option value="1">2°C a 8°C</option>
                                                <option value="2">20°C a 25°C</option>
                                                <option value="3">Menor a 30°C</option>
                                                <option value="4">Otra-Ninguna</option>
                                            </select>
                                        </div>

                                    </div>
                                </div>

                                <br>
                                <h3>Cantidad y volumen de carga</h3>
                                <hr>

                                <div class="row mb-3">
                                    <!-- registro-1 -->
                                    <div class="col-md-2">
                                        <table border="1" , width="900">
                                            <tr>
                                                <th>
                                                    <label for="tipcvc-1" class="form-label">Tipo</label>
                                                </th>
                                                <th>
                                                    <label for="cantcvc-1" class="form-label">Cantidad</label>
                                                </th>
                                                <th>
                                                    <label for="altocvc-1" class="form-label">Alto</label>
                                                </th>
                                                <th>
                                                    <label for="anchocvc-1" class="form-label">Ancho</label>
                                                </th>
                                                <th>
                                                    <label for="largocvc-1" class="form-label">Largo</label>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <select class="form-select" id="tipcvc-1">
                                                        <option value="N/A">Seleccione una opcion</option>
                                                        <option value="Tarimas">Tarimas</option>
                                                        <option value="Tubos">Tubos</option>
                                                        <option value="Bultos">Bultos</option>
                                                        <option value="Bidones">Bidones</option>
                                                        <option value="Cuñetes">Cuñetes</option>
                                                        <option value="Hielera">Hielera</option>
                                                        <option value="Corrugado">Corrugado</option>
                                                        <option value="Piezas">Piezas</option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <input type="text" class="form-control" id="cantcvc-1"
                                                        placeholder="fila 1">
                                                </td>

                                                <td>
                                                    <input type="text" class="form-control" id="altocvc-1"
                                                        placeholder="fila 1">
                                                </td>

                                                <td>
                                                    <input type="text" class="form-control" id="anchocvc-1"
                                                        placeholder="fila 1">
                                                </td>

                                                <td>
                                                    <input type="text" class="form-control" id="largocvc-1"
                                                        placeholder="fila 1">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <select class="form-select" id="tipcvc-2" style="display:none">
                                                        <option value="N/A">Seleccione una opcion</option>
                                                        <option value="Tarimas">Tarimas</option>
                                                        <option value="Tubos">Tubos</option>
                                                        <option value="Bultos">Bultos</option>
                                                        <option value="Bidones">Bidones</option>
                                                        <option value="Cuñetes">Cuñetes</option>
                                                        <option value="Hielera">Hielera</option>
                                                        <option value="Corrugado">Corrugado</option>
                                                        <option value="Piezas">Piezas</option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="cantcvc-2"
                                                        placeholder="fila 2">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="altocvc-2"
                                                        placeholder="fila 2">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="anchocvc-2" placeholder="fila 2">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="largocvc-2" placeholder="fila 2">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <select class="form-select" id="tipcvc-3" style="display: none">
                                                        <option value="N/A">Seleccione una opcion</option>
                                                        <option value="Tarimas">Tarimas</option>
                                                        <option value="Tubos">Tubos</option>
                                                        <option value="Bultos">Bultos</option>
                                                        <option value="Bidones">Bidones</option>
                                                        <option value="Cuñetes">Cuñetes</option>
                                                        <option value="Hielera">Hielera</option>
                                                        <option value="Corrugado">Corrugado</option>
                                                        <option value="Piezas">Piezas</option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="cantcvc-3"
                                                        placeholder="fila 3">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="altocvc-3"
                                                        placeholder="fila 3">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="anchocvc-3" placeholder="fila 3">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="largocvc-3" placeholder="fila 3">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <select class="form-select" id="tipcvc-4" style="display:none">
                                                        <option value="N/A">Seleccione una opcion</option>
                                                        <option value="Tarimas">Tarimas</option>
                                                        <option value="Tubos">Tubos</option>
                                                        <option value="Bultos">Bultos</option>
                                                        <option value="Bidones">Bidones</option>
                                                        <option value="Cuñetes">Cuñetes</option>
                                                        <option value="Hielera">Hielera</option>
                                                        <option value="Corrugado">Corrugado</option>
                                                        <option value="Piezas">Piezas</option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="cantcvc-4"
                                                        placeholder="fila 4">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="altocvc-4"
                                                        placeholder="fila 4">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="anchocvc-4" placeholder="fila 4">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="largocvc-4" placeholder="fila 4">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <select class="form-select" id="tipcvc-5" style="display:none">
                                                        <option value="N/A">Seleccione una opcion</option>
                                                        <option value="Tarimas">Tarimas</option>
                                                        <option value="Tubos">Tubos</option>
                                                        <option value="Bultos">Bultos</option>
                                                        <option value="Bidones">Bidones</option>
                                                        <option value="Cuñetes">Cuñetes</option>
                                                        <option value="Hielera">Hielera</option>
                                                        <option value="Corrugado">Corrugado</option>
                                                        <option value="Piezas">Piezas</option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="cantcvc-5"
                                                        placeholder="fila 5">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="altocvc-5"
                                                        placeholder="fila 5">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="anchocvc-5" placeholder="fila 5">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="largocvc-5" placeholder="fila 5">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <select class="form-select" id="tipcvc-6" style="display:none">
                                                        <option value="N/A">Seleccione una opcion</option>
                                                        <option value="Tarimas">Tarimas</option>
                                                        <option value="Tubos">Tubos</option>
                                                        <option value="Bultos">Bultos</option>
                                                        <option value="Bidones">Bidones</option>
                                                        <option value="Cuñetes">Cuñetes</option>
                                                        <option value="Hielera">Hielera</option>
                                                        <option value="Corrugado">Corrugado</option>
                                                        <option value="Piezas">Piezas</option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="cantcvc-6"
                                                        placeholder="fila 6">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control" id="altocvc-6"
                                                        placeholder="fila 6">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="anchocvc-6" placeholder="fila 6">
                                                </td>

                                                <td>
                                                    <input type="hidden" type="text" class="form-control"
                                                        id="largocvc-6" placeholder="fila 6">
                                                </td>
                                            </tr>

                                        </table>
                                        <button class="btn btn-primary mb-4" id="add-section-btn"
                                            onclick="addSection() " type="button">Agregar Secci�n</button>
                                        <script>
                                            var sectionCount = 1;
                                            function addSection() {

                                                var maxSections = 6;
                                                if (sectionCount >= maxSections) {
                                                    document.getElementById("add-section-btn").disabled = true;
                                                    return;
                                                }

                                                sectionCount++;

                                                const tipo = document.getElementById("tipcvc-" + sectionCount);
                                                const alto = document.getElementById("cantcvc-" + sectionCount);
                                                const ancho = document.getElementById("altocvc-" + sectionCount);
                                                const largo = document.getElementById("anchocvc-" + sectionCount);
                                                const cantidad = document.getElementById("largocvc-" + sectionCount);

                                                alto.setAttribute("type", "text");
                                                ancho.setAttribute("type", "text");
                                                largo.setAttribute("type", "text");
                                                cantidad.setAttribute("type", "text");
                                                tipo.style.display = "block";


                                            }

                                        </script>

                                        <div>
                                            <label for="totalcvc-1" class="form-label">Totales</label>
                                            <input type="text" class="form-control" id="totalcvc">
                                        </div>








                                    </div>
                                    <h3>Especificaciones</h3>
                                    <hr>
                                    <div class="row mb-3">





                                        <div class="col-md-6">

                                            <table border="1" , width="900">
                                                <tr>
                                                    <th>
                                                        <label for="producto" class="form-label">Producto por
                                                            transportar</label>
                                                    </th>
                                                    <th>
                                                        <label for="observaciones"
                                                            class="form-label">Observaciones</label>
                                                    </th>

                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="text" class="form-control" id="producto-1"
                                                            placeholder="fila 1">
                                                    </td>

                                                    <td>
                                                        <input type="text" class="form-control" id="observaciones-1"
                                                            placeholder="fila 1">
                                                    </td>


                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="producto-2" placeholder="fila 2">
                                                    </td>

                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="observaciones-2" placeholder="fila 2">
                                                    </td>


                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="producto-3" placeholder="fila 3">
                                                    </td>

                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="observaciones-3" placeholder="fila 3">
                                                    </td>


                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="producto-4" placeholder="fila 4">
                                                    </td>

                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="observaciones-4" placeholder="fila 4">
                                                    </td>


                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="producto-5" placeholder="fila 5">
                                                    </td>

                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="observaciones-5" placeholder="fila 5">
                                                    </td>


                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="producto-6" placeholder="fila 6">
                                                    </td>

                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="observaciones-6" placeholder="fila 6">
                                                    </td>


                                                </tr>
                                                <tr>


                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="producto-7" placeholder="fila 7">
                                                    </td>

                                                    <td>
                                                        <input type="hidden" type="text" class="form-control"
                                                            id="observaciones-7" placeholder="fila 7">
                                                    </td>


                                                </tr>
                                            </table>
                                            <button class="btn btn-primary mb-3" id="especificacion"
                                                onclick="Specification()" type="button">Agregar Especificacion</button>
                                            <script>
                                                var contador = 1;
                                                function Specification() {

                                                    var maximo = 7;

                                                    if (contador >= maximo) {
                                                        document.getElementById("especificacion").disabled = true;
                                                        return;
                                                    }

                                                    contador++;

                                                    const observaciones = document.getElementById("observaciones-" + contador);
                                                    const productos = document.getElementById("producto-" + contador);


                                                    observaciones.setAttribute("type", "text");
                                                    productos.setAttribute("type", "text");



                                                }

                                            </script>
                                        </div>
                                    </div>
                                    <h3>Datos de solicitante</h3>
                                    <hr>
                                    <div class="row mb-3">





                                        <div class="col-md-6">
                                            <label for="nomfec" class="form-label">Nombre y fecha</label>
                                            <input type="text" class="form-control" id="nomfec">
                                        </div>
                                    </div>
                                    <span class="d-block pb-2">Firma digital aqui</span>
                                    <div class="signature mb-2" style="width: 100%; height: 200px;">
                                        <canvas id="signature-canvas"
                                            style="border: 1px dashed red; width: 900px; height: 200px;"></canvas>
                                    </div>

                                    <button type="submit" class="btn btn-primary mb-4" id="pdf">Generar PDF</button>

                                </div>

                            </div>


                    </div>
                </div>
            </div>
        </div>
    </div>



    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>

    </div>
    </div>
    </div>
    </div>
    <script type="text/javascript">

        window.addEventListener("scroll", function () {
            var header = document.querySelector("header");
            header.classList.toggle("abajo", window.scrollY > 0);
        });

    </script>
    
</body>

</html>