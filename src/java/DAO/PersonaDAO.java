/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.PersonaDTO;
import java.util.ArrayList;
import UTIL.Database;

/**
 *
 * @author Manuel
 */
public class PersonaDAO {

    public static ArrayList<String> iniciarSesion(PersonaDTO persona) {
     ArrayList<String> dato = new ArrayList<>();
     String sql="";
        try {
              sql="SELECT * FROM persona WHERE email='"+persona.getEmail()+"'"
                     + " AND password='"+persona.getPassword()+"'";
             dato=Database.getSQL(sql);
        } catch (Exception e) {
            System.out.println("Falló consulta de usuario, iniciar sesión"+e);
        }
        return dato;
    }
    
    public static PersonaDTO obtenerDatosPersona(PersonaDTO persona) {
     ArrayList<String> dato;
        try {
       
            String sql = "SELECT * FROM persona WHERE idPersona='"+persona.getIdPersona()+"'";
            dato=Database.getSQL(sql);
            
            String separado = dato.toString();
        
            String[] pars = separado.split("/");
            
            persona.setIdPersona(pars[0].replace("[", ""));
            persona.setNombre(pars[1]);
            persona.setApellido(pars[2]);
            persona.setTelefono(pars[3]);
            persona.setEmail(pars[4]);
            persona.setPassword(pars[5]);
            persona.setFoto(pars[6]);
            persona.setRol(pars[7]);
            
        } catch (Exception e) {
            System.err.println("SQL Error: " + e.getMessage());
        }

        return persona;
    }

}
