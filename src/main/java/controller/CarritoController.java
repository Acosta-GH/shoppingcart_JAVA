package controller;

import model.Carrito;
import model.Producto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Carrito;

import java.io.IOException;

@WebServlet("/carrito")
public class CarritoController extends HttpServlet {
    private Carrito carrito = new Carrito();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("carrito", carrito);
        request.getRequestDispatcher("productos.jsp").forward(request, response);
    }
}


