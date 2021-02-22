/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package matilde.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import matilde.dao.UsuarioDao;
import matilde.model.Usuario;

/**
 *
 * @author Sebastián
 */
@WebServlet(name = "AdmRegistrar", urlPatterns = {"/AdmRegistrar"})
public class AdmRegistrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        String id = "";
        String rol = "R3";
        String user = request.getParameter("txtusuario");
        String password = request.getParameter("txtpassword");
        String nombres = request.getParameter("txtnombres");
        String ap_pat = request.getParameter("txtappat");
        String ap_mat = request.getParameter("txtapmat");
        String telefono = request.getParameter("txttelefono");
        String email = request.getParameter("txtemail");
        String dni = request.getParameter("txtdni");
        String direccion = request.getParameter("direccion");
        
        String respuesta ="";
        String vista;
        String color;
        boolean resultado = false;
        
        Usuario objusuario = new Usuario(id,rol,user,password,nombres,ap_pat,ap_mat,telefono,email,dni,direccion);
        resultado = new UsuarioDao().RegistrarUsuario(objusuario);
        
        if(resultado == false){
            vista = "/Clientes";
            respuesta = "Registado correcatmente";
            color = "success";
        }else{
            vista = "/Admin_MantCliente.jsp";
            respuesta = "Error al registrarse";
            color = "danger";
        }
        request.setAttribute("color", color);
        request.setAttribute("respuesta", respuesta);
        response.sendRedirect("Clientes");
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
