<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; 
        }
        .navbar {
            background-color: #007bff; 
        }
        .navbar-brand,
        .nav-link {
            color: #ffffff; 
        }
        .navbar-toggler-icon {
            color: #ffffff; 
        }
        .offcanvas-body {
            background-color: #ffffff; 
        }
        .table {
            background-color: #ffffff; 
        }
        .table th,
        .table td {
            border-color: #ffc107; 
        }
        .fs-2 {
            color: #007bff;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Lista de Productos!</a>
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

<div class="container mt-5">
    <p class="fs-2 text-center mt-5">Productos</p>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nombre del Producto</th>
                <th scope="col">Descripción</th>
                <th scope="col">Marca</th>
                <th scope="col">Precio</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Television smart tv</td>
                <td>Samsung 2024.</td>
                <td>Dell</td>
                <td>Q.2000.00</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
