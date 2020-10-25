/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import FACADE.Facade;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.CopyOption;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manuel
 */
@MultipartConfig
@WebServlet(name = "Servelet_Minero", urlPatterns = {"/Servelet_Minero"})
public class Servelet_Minero extends HttpServlet {

    Facade faca = new Facade();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String accion = request.getParameter("accion");
            if (accion.equals("agregarMine")) {
                RegistrarMinero(request, response);
            }
            if (accion.equals("actualizarMinero")) {
                actualizarMinero(request, response);
            }
            if (accion.equals("eliminar")) {
                eliminarMinero(request, response);
            }
            if (accion.equals("actualizarFoto")) {
                actualizarFoto(request, response);
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

    private void RegistrarMinero(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String tipoDocumento = request.getParameter("tipoDocumento");
        String numeroDocumento = request.getParameter("numeroDocumento");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String nombreFamiliar = request.getParameter("nombreFamiliar");
        String telefonoFamiliar = request.getParameter("telefonoFamiliar");
        String direccion = request.getParameter("direccion");
        String estado = "true";

        try {
            ArrayList<String> validar = validarEmailMinero(email);
            if (validar.isEmpty()) {

                //para la foto del minero
                Part part = request.getPart("file-input");
                String myStorageFolder = "/assets/img/avatar";
                String getImageFolderPath = request.getServletContext().getRealPath(myStorageFolder);
                String ruta = getImageFolderPath.replace("\\build", "");
                System.out.print(ruta);

                CopyOption[] options = new CopyOption[]{
                    StandardCopyOption.REPLACE_EXISTING
                };

                File carpetaDestino = new File(ruta);
                String imagen = part.getSubmittedFileName();
                File archivoDestino = new File(carpetaDestino, part.getSubmittedFileName());
                InputStream inputStream = part.getInputStream();
                Files.copy(inputStream, archivoDestino.toPath(), options);

                boolean retornoAgregar = agregarMinero(tipoDocumento, numeroDocumento, nombres, apellidos, email, telefono, nombreFamiliar, telefonoFamiliar, direccion, imagen, estado);
                if (retornoAgregar == true) {
                    response.sendRedirect("views/admin/gestionMineros.jsp?mens='RegistroExitoso'");
                } else {
                    response.sendRedirect("views/admin/gestionMineros.jsp?mens='ErrorRegistro'");
                }
            } else {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='MineroExistente'");
            }
        } catch (Exception e) {
            out.println(e);
        }

    }

    private void actualizarMinero(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String tipoDocumento = request.getParameter("tipoDocumento");
        String numeroDocumento = request.getParameter("numeroDocumento");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String nombreFamiliar = request.getParameter("nombreFamiliar");
        String telefonoFamiliar = request.getParameter("telefonoFamiliar");
        String direccion = request.getParameter("direccion");
        String estado = "true";

        String idMinero = request.getParameter("idMinero");

        try {
            boolean retorno = actualizarMinero(idMinero, tipoDocumento, numeroDocumento, nombres, apellidos, email,
                    telefono, nombreFamiliar, telefonoFamiliar, direccion);
            if (retorno == false) {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='ErrorRegistro'");
            } else {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='ActualizacionExitosa'");
            }

        } catch (Exception e) {
            out.println(e);
        }
    }

    private void eliminarMinero(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String idMinero = request.getParameter("idMinero");
        try {
            boolean retornoElimina = eliminarMinero(idMinero);
            if (retornoElimina == true) {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='EliminadoExtitosamente'");
            } else {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='ErrorRegistro'");
            }
        } catch (Exception e) {
            out.println(e);
        }
    }

    private void actualizarFoto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String idMinero = request.getParameter("idMinero");

        //para la foto del minero
        Part part = request.getPart("file-input-edit");
        String myStorageFolder = "/assets/img/avatar";
        String getImageFolderPath = request.getServletContext().getRealPath(myStorageFolder);
        String ruta = getImageFolderPath.replace("\\build", "");
        System.out.print(ruta);

        CopyOption[] options = new CopyOption[]{
            StandardCopyOption.REPLACE_EXISTING
        };

        File carpetaDestino = new File(ruta);
        String imagen = part.getSubmittedFileName();
        File archivoDestino = new File(carpetaDestino, part.getSubmittedFileName());
        InputStream inputStream = part.getInputStream();
        Files.copy(inputStream, archivoDestino.toPath(), options);

        try {
            boolean retorno = actualizarFotoMinero(idMinero, imagen);
            if (retorno == false) {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='ErrorRegistro'");
            } else {
                response.sendRedirect("views/admin/gestionMineros.jsp?mens='ActualizacionExitosa'");
            }
        } catch (Exception e) {
            out.println(e);
        }

    }

    private ArrayList<String> validarEmailMinero(String email) {
        ArrayList<String> dato;
        dato = faca.validarEmailMinero(email);
        return dato;
    }

    private boolean agregarMinero(String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion, String foto, String estado) {
        return faca.agregarMinero(tipoDocumento, numeroDocumento, nombres, apellidos, email, telefono, nombreFamiliar, telefonoFamiliar, direccion, foto, estado);
    }

    private boolean actualizarMinero(String idMinero, String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion) {
        return faca.actualizarMinero(idMinero, tipoDocumento, numeroDocumento, nombres, apellidos, email, telefono, nombreFamiliar, telefonoFamiliar, direccion);
    }

    private boolean eliminarMinero(String idMinero) {
        return faca.eliminarMinero(idMinero);
    }

    private boolean actualizarFotoMinero(String idMinero, String foto) {
        return faca.actualizarFotoMinero(idMinero, foto);
    }

}
