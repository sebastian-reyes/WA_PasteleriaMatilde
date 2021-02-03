/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import matilde.dao.ProductoDao;
import matilde.model.Carrito;
import matilde.model.Producto;

/**
 *
 * @author Sebastián
 */
@WebServlet(name = "AgregarCarrito", urlPatterns = {"/AgregarCarrito"})
public class AgregarCarrito extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String id = request.getParameter("idp");
        String user = request.getParameter("user");
        int idcat = Integer.parseInt(request.getParameter("idcat"));
        String nomcat = request.getParameter("nomcat");
        String accion = request.getParameter("action");
        int item = 0;
        double totalPagar = 0.0;
        int cant = 1;
        
        Producto objprod = new ProductoDao().obtenerProducto(id);
        
        List<Carrito> lstcarrito = new ArrayList<>();
        item = item + 1;
        Carrito car = new Carrito();
        car.setItem(item);
        car.setIdprod(objprod.getId_producto());
        car.setNombre(objprod.getNombre());
        car.setDescripcion(objprod.getDescripcion());
        car.setPrecioCompra(objprod.getPrecio());
        car.setCantidad(cant);
        car.setSubTotal(cant * objprod.getPrecio());
        lstcarrito.add(car);
        
        List<Producto> lstprod = new ProductoDao().listarProductos(idcat);
        request.setAttribute("lstcarrito", lstcarrito);
        request.setAttribute("objprod", objprod);
        request.setAttribute("nomcat", nomcat);
        request.setAttribute("lstprod", lstprod);
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Carrito.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
