/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import FACADE.Facade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manuel
 */
@WebServlet(name = "Servelet_login", urlPatterns = {"/Servelet_login"})
public class Servelet_login extends HttpServlet {

    Facade faca = new Facade();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String accion = request.getParameter("accion");

            if (accion.equals("login")) {
                Login(request, response);
            }
            if (accion.equals("logout")) {
                Logout(request, response);
            }
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

    private void Login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        //session.setMaxInactiveInterval(20);
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String clave = request.getParameter("password");
       
        try {
            ArrayList<String> retorno = iniciarSesion(email, clave);
            if (retorno.isEmpty()) {
                response.sendRedirect("index.jsp?mens='404'");
            } else {
                for (String hh : retorno) {
                    switch (hh.split("/")[7]) {
                        case "Administrador":
                            request.getSession().setAttribute("parametroCodigo", hh.split("/")[0]);
                            response.sendRedirect("views/admin/inicio.jsp");
                            break;
                    }
                }
            }
        } catch (Exception e) {
            out.print(e);
        }
    }

    private void Logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        session.invalidate();
        response.sendRedirect("index.jsp");
    }

    private ArrayList<String> iniciarSesion(String email, String clave) {
        ArrayList<String> retorno;
        retorno = faca.iniciarSesion(email, clave);
        return retorno;
    }

}
