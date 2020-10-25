/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FACADE;

import DAO.MineroDAO;
import DAO.PersonaDAO;
import DTO.MineroDTO;
import DTO.PersonaDTO;
import java.util.ArrayList;

/**
 *
 * @author Manuel
 */
public class Facade {

    public ArrayList<String> iniciarSesion(String email, String clave) {
        ArrayList<String> datos = new ArrayList<>();
        try {
            PersonaDTO persona = new PersonaDTO(email, clave);
            datos = PersonaDAO.iniciarSesion(persona);
        } catch (Exception e) {
        }
        return datos;
    }
    
    public ArrayList<String> validarEmailMinero(String email) {
        ArrayList<String> dato;
        dato = MineroDAO.validarCorreoMinero(email);
        return dato;
    }
    
    public boolean agregarMinero(String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion, String foto, String estado) {
        boolean dato = true;
        try {
            MineroDTO m = new MineroDTO(tipoDocumento, numeroDocumento, nombres, apellidos, email, telefono, nombreFamiliar, telefonoFamiliar, direccion, foto, estado);
            dato = MineroDAO.agregarMinero(m);
        } catch (Exception e) {
        }
        return dato;
    }
    
    public ArrayList<String> obtenerDatosMinero() {
        ArrayList<String> dato;
        dato = MineroDAO.obtenerDatosMinero();
        return dato;
    }
    
    public boolean eliminarMinero(String idMinero) {
        return MineroDAO.eliminarMinero(idMinero);
    }

    public boolean actualizarFotoMinero(String idMinero, String foto) {
        MineroDTO m = new MineroDTO(idMinero, foto);
        return MineroDAO.actualizarFotoMinero(m);
    }

    public boolean actualizarMinero(String idMinero, String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion) {
        MineroDTO mi = new MineroDTO(idMinero, tipoDocumento, numeroDocumento, nombres, apellidos, email, telefono, nombreFamiliar, telefonoFamiliar, direccion);
        return MineroDAO.actualizarMinero(mi);
    }
    
    public ArrayList<String> obtenerDatosPersona(String idPersona) {
        ArrayList<String> dato = new ArrayList<>();
        PersonaDTO persona = new PersonaDTO(idPersona);
        persona = PersonaDAO.obtenerDatosPersona(persona);

        dato.add(persona.getIdPersona() + "/" + persona.getNombre()+ "/" + persona.getApellido()+ "/"
                + persona.getTelefono()+ "/" + persona.getEmail()+ "/" + persona.getPassword()+ "/"
                + persona.getFoto()+ "/" + persona.getRol());

        return dato;
    }
    
    public ArrayList<String> obtenerCantidadMineros() {
        ArrayList<String> dates;
        dates = MineroDAO.obtenerCantidadMineros();
        return dates;
    }
    
    public ArrayList<String> obtenerCantidadActivosMineros() {
        ArrayList<String> dates;
        dates = MineroDAO.obtenerCantidadActivosMineros();
        return dates;
    }
    
}
