<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="model.Producto" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h1 class="display-4 text-center text-primary">Nuestros Productos</h1>

    <div class="row">
        <%
            // Esto es temporal, tenemos que borrarlo
            List<Producto> productos = new ArrayList<>();
            productos.add(new Producto(1, "Excel 2019", "Descripción 1", 19.99));
            productos.add(new Producto(2, "Windows 11", "Descripción 2", 29.99));
            productos.add(new Producto(3, "OneDrive 1TB", "Descripción 3", 39.99));

            for (Producto producto : productos) {
        %>
        <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><%= producto.getNombre() %></h5>
                    <p class="card-text"><%= producto.getDescripcion() %></p>
                    <p class="card-text"><strong>Precio:</strong> $<%= producto.getPrecio() %></p>
                    <a href="agregarAlCarrito?id=<%= producto.getId() %>" class="btn btn-primary">Añadir al Carrito</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0dpY7j9fJw6hXYsYssJ46bgjL3vBp8+m2gW9gmFvLzXxkQ62" crossorigin="anonymous"></script>
</body>
</html>
