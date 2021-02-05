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
@WebServlet(name = "Car", urlPatterns = {"/Car"})
public class Car extends HttpServlet {

    List<Carrito> lstcarrito = new ArrayList<>();
    int item = 0;
    double totalPagar = 0.0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        int cantidad = 1;
        String user = request.getParameter("us");
        switch (action) {
            case "Agregar":
                int pos = 0;
                String idp = request.getParameter("id");
                String nomcat = request.getParameter("nomcat");
                int idcat = Integer.parseInt(request.getParameter("idcat"));
                Producto objprod = new ProductoDao().obtenerProducto(idp);
                if (lstcarrito.size() > 0) {
                    for (int i = 0; i < lstcarrito.size(); i++) {
                        if (idp.equals(lstcarrito.get(i).getIdprod())) {
                            pos = i;
                        }
                    }
                    if (idp.equals(lstcarrito.get(pos).getIdprod())) {
                        cantidad = lstcarrito.get(pos).getCantidad() + cantidad;
                        double subtotal = lstcarrito.get(pos).getPrecioCompra() * cantidad;
                        lstcarrito.get(pos).setCantidad(cantidad);
                        lstcarrito.get(pos).setSubTotal(subtotal);
                    } else {
                        item = item + 1;
                        Carrito carrito = new Carrito();
                        carrito.setItem(item);
                        carrito.setIdprod(objprod.getId_producto());
                        carrito.setNombre(objprod.getNombre());
                        carrito.setDescripcion(objprod.getDescripcion());
                        carrito.setPrecioCompra(objprod.getPrecio());
                        carrito.setCantidad(cantidad);
                        carrito.setSubTotal(cantidad * objprod.getPrecio());
                        lstcarrito.add(carrito);
                    }
                } else {
                    item = item + 1;
                    Carrito carrito = new Carrito();
                    carrito.setItem(item);
                    carrito.setIdprod(objprod.getId_producto());
                    carrito.setNombre(objprod.getNombre());
                    carrito.setDescripcion(objprod.getDescripcion());
                    carrito.setPrecioCompra(objprod.getPrecio());
                    carrito.setCantidad(cantidad);
                    carrito.setSubTotal(cantidad * objprod.getPrecio());
                    lstcarrito.add(carrito);
                }

                List<Producto> lstproductos = new ProductoDao().listarProductos(idcat);
                request.setAttribute("user", user);
                request.setAttribute("nomcat", nomcat);
                request.setAttribute("lstprod", lstproductos);
                request.setAttribute("cantidad", lstcarrito.size());
                RequestDispatcher dispatcher = request.getRequestDispatcher("/productos.jsp");
                dispatcher.forward(request, response);
                break;
            case "Eliminar":
                String id = request.getParameter("idp");
                for (int i = 0; i < lstcarrito.size(); i++) {
                    if (lstcarrito.get(i).getIdprod().equals(id)) {
                        lstcarrito.remove(i);
                    }
                }
                break;
            case "Carrito":
                totalPagar = 0.0;
                request.setAttribute("lstcarrito", lstcarrito);
                request.setAttribute("user", user);
                for (int i = 0; i < lstcarrito.size(); i++) {
                    totalPagar = totalPagar + lstcarrito.get(i).getSubTotal();
                }
                request.setAttribute("totalpagar", totalPagar);
                request.getRequestDispatcher("/Carrito.jsp").forward(request, response);
                break;

        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
