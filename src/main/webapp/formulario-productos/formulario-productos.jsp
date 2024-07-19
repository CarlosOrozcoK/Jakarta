<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión de Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 56px; /* Space for the fixed navbar */
        }
        .navbar {
            background-color: #343a40;
        }
        .navbar-brand, .nav-link {
            color: #ffffff !important;
        }
        .offcanvas-header, .offcanvas-body {
            background-color: #343a40;
            color: #ffffff;
        }
        .offcanvas-body .nav-link {
            color: #ffffff;
        }
        .offcanvas-body .nav-link.active {
            color: #ffc107;
        }
        .form-container {
            margin: 20px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .page-title {
            margin-top: 20px;
            color: #343a40;
        }
        .text-center {
            text-align: center;
        }
        .text-success {
            color: #28a745;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Agregar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Inicio</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../formulario-productos/formulario-productos.jsp">Formulario de Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../producto-servlet">Lista de Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <div class="container">
        <h1 class="page-title text-center">Agregar Producto</h1>
        <div>
            <% ArrayList<String> productos = (ArrayList) request.getAttribute("producto"); %>
            <ul class="list-unstyled text-center">
                <% if (productos != null) { %>
                    <p class="text-success display-5">Se agregó</p>
                    <% for (String prod : productos) { %>
                        <li class="mt-1"><%= prod %></li>
                    <% } %>
                <% } %>
            </ul>
        </div>
        <div class="form-container">
            <form action="/ProductosIN5CM/producto-servlet" method="post" enctype="multipart/form-data">
                <div class="form-floating mb-3">
                    <input class="form-control text-info-emphasis" id="nombreProducto" name="nombreProducto" type="text" placeholder="Nombre del Producto">
                    <label for="nombreProducto">Nombre del Producto</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control text-info-emphasis" placeholder="Descripción del Producto" id="descripcionProducto" name="descripcionProducto"></textarea>
                    <label for="descripcionProducto">Descripción del Producto</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control text-info-emphasis" id="marcaProducto" name="marcaProducto" type="text" placeholder="Marca del Producto">
                    <label for="marcaProducto">Marca del Producto</label>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text text-black">Q</span>
                    <input type="text" class="form-control text-info-emphasis" aria-label="Amount (to the nearest dollar)" name="precioProducto">
                    <span class="input-group-text text-black">.00</span>
                </div>
                <div class="text-center">
                    <input class="btn btn-success" type="submit" value="Agregar">
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
