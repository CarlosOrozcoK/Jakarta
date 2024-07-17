<%-- 
    Document   : formulario-productos
    Created on : 3/07/2024, 09:46:32
    Author     : informatica
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Estilos adicionales personalizados */
        body {
            background-color: #f0f0f0; /* Color de fondo general */
        }
        .text-info-emphasis {
            color: #007bff;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Agregar Productos!</a>
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
                        <a class="nav-link" href="../lista-productos/lista-productos.jsp">Lista de Productos</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<br>
<br>

<div class="container mt-5">
    <%-- Verifica si hay productos para mostrar --%>
    <% ArrayList<String> productos = (ArrayList<String>) request.getAttribute("producto"); %>
    <% if (productos != null && !productos.isEmpty()) { %>
        <p style="text-align: center" class="text-success display-5">Se agregó con éxito!</p>
        <ul class="list-group">
            <% for (String prod : productos) { %>
                <li class="list-group-item text-center"><%= prod %></li>
            <% } %>
        </ul>
    <% } %>
</div>

<div class="container mt-5 w-75">
    <form action="/SGBDProductos/producto-servlet/" method="post" enctype="multipart/form-data">
        <div class="form-floating mt-5">
            <input class="form-control bg-info-subtle text-info-emphasis" id="nombreProducto" name="nombreProducto" type="text" placeholder="Nombre del Producto">
            <label for="nombreProducto">Nombre de Producto</label>
        </div>
        <div class="form-floating mt-4">
            <textarea class="form-control bg-info-subtle text-info-emphasis" id="descripcionProducto" name="descripcionProducto" placeholder="Descripción del Producto"></textarea>
            <label for="descripcionProducto">Descripción del Producto</label>
        </div>
        <div class="form-floating mt-4">
            <input class="form-control bg-info-subtle text-info-emphasis" id="marcaProducto" name="marcaProducto" type="text" placeholder="Marca del Producto">
            <label for="marcaProducto">Marca del Producto</label>
        </div>
        <div class="input-group mb-3 mt-4">
            <span class="input-group-text bg-primary text-white">Q</span>
            <input type="text" class="form-control bg-info-subtle text-info-emphasis" aria-label="Amount (to the nearest dollar)" name="precioProducto">
            <span class="input-group-text bg-primary text-white">.00</span>
        </div>
        <div>
            <input class="btn btn-primary" type="submit" value="Agregar">
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
