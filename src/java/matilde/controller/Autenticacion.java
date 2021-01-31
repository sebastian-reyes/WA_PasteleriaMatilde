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
import javax.servlet.http.HttpSession;
import matilde.dao.UsuarioDao;
import matilde.model.Usuario;

/**
 *
 * @author Sebastián
 */
@WebServlet(name = "Autenticacion", urlPatterns = {"/Autenticacion"})
public class Autenticacion extends HttpServlet {

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
        HttpSession session = request.getSession();

        String user = request.getParameter("txtusuario");
        String password = request.getParameter("txtpassword");
        String color;
        String vista;
        String respuesta = "";
        Usuario objusuario = new UsuarioDao().validarUsuario(user, password);
        
        if (objusuario != null) {
            vista = "/index.jsp";
            color = "success";
            session.setAttribute("sesion", objusuario);
        } else if (user.equals("admin") && password.equals("admin-contra")) {
            int nuser = new UsuarioDao().contarUsuarios();
            vista = "/Admin_Home.jsp";
            color = "success";
            request.setAttribute("nuser", nuser);
        } else {
            respuesta = "Error al iniciar sesión";
            vista = "/login.jsp";
            color = "danger";
        }
        request.setAttribute("color", color);
        request.setAttribute("user", user);
        request.setAttribute("respuesta", respuesta);
        RequestDispatcher dispatcher = request.getRequestDispatcher(vista);
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
