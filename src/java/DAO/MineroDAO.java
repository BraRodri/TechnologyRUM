/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.MineroDTO;
import java.util.ArrayList;
import UTIL.Database;

/**
 *
 * @author Manuel
 */
public class MineroDAO {

    public static ArrayList<String> validarCorreoMinero(String email) {
        ArrayList<String> dato = new ArrayList<>();
        try {
            String sql = "SELECT idMinero FROM minero WHERE email='" + email + "'";
            dato = Database.getSQL(sql);
        } catch (Exception e) {
            System.err.println("SQL Error: " + e.getMessage());
        }

        return dato;
    }

    public static boolean agregarMinero(MineroDTO m) {
        String sql = "";
        try {
            sql = "INSERT INTO minero (tipoDocumento, numeroDocumento, nombres, apellidos, email, telefono, nombreFamiliar, telefonoFamiliar, direccion, foto, estado) VALUES ('" + m.getTipoDocumento() + "',"
                    + "'" + m.getNumeroDocumento()+ "', '" + m.getNombres()+ "', '" + m.getApellidos()+ "', '" + m.getEmail()+ "', '" + m.getTelefono()+ "',"
                    + "'" + m.getNombreFamiliar()+ "', '" + m.getTelefonoFamiliar()+ "', '" + m.getDireccion()+ "', '" + m.getFoto()+ "', '" + m.getEstado()+ "')";

        } catch (Exception e) {
            System.err.println("SQL Error: " + e.getMessage());
        }
        return Database.ejecutarActualizacionSQL(sql);
    }

    public static ArrayList<String> obtenerDatosMinero() {
        ArrayList<String> datos = new ArrayList<>();
        try {
            String sql = "SELECT * FROM minero";
            datos = Database.getSQL(sql);
        } catch (Exception e) {
            System.err.println("SQL Error: " + e.getMessage());
        }
        return datos;
    }

    public static ArrayList<String> obtenerCantidadMineros() {
        ArrayList<String> datos = new ArrayList<String>();
        try {
            String sql = "SELECT COUNT(*) FROM minero";
            datos = Database.getSQL(sql);
            System.out.println(sql);
        } catch (Exception e) {
            System.err.println("SQL Error dao: " + e.getMessage());
        }

        return datos;    
    }

    public static ArrayList<String> obtenerDatosMinero(String idMinero) {
        ArrayList<String> datoss = new ArrayList<String>();
        try {
            String sql = "SELECT * FROM minero WHERE idMinero=" + idMinero + "";
            datoss = Database.getSQL(sql);
            System.out.println(sql);
        } catch (Exception e) {
            System.err.println("SQL Error dao: " + e.getMessage());
        }

        return datoss;
    }

    public static boolean eliminarMinero(String idMinero) {
        String sql = "";
        try {
            sql = "DELETE FROM minero WHERE idMinero=" + idMinero + "";
        } catch (Exception e) {
            System.err.println("SQL Error Delete: " + e.getMessage());
        }
        System.out.print("no elimina mnero: " + sql);
        return Database.ejecutarActualizacionSQL(sql);
    }

    public static boolean actualizarFotoMinero(MineroDTO m) {
        String sql = "";
        try {
            sql = "UPDATE minero SET foto='" + m.getFoto()+ "' WHERE idMinero=" + m.getIdMinero()+ "";
        } catch (Exception e) {
        }
        return Database.ejecutarActualizacionSQL(sql); 
    }
    
    public static boolean actualizarMinero(MineroDTO mi) {
        String sql = "";
        try {
            sql = "UPDATE minero SET tipoDocumento='" + mi.getTipoDocumento() + "', numeroDocumento='" + mi.getNumeroDocumento()+ "', "
                    + "nombres='" + mi.getNombres()+ "', apellidos='" + mi.getApellidos()+ "', email='" + mi.getEmail()+ "', "
                    + "telefono='" + mi.getTelefono()+ "', nombreFamiliar='" + mi.getNombreFamiliar()+ "',"
                    + "telefonoFamiliar='" + mi.getTelefonoFamiliar()+ "', direccion='" +mi.getDireccion()+ "' WHERE idMinero=" + mi.getIdMinero()+ "";
        } catch (Exception e) {
        }
        return Database.ejecutarActualizacionSQL(sql);    
    }
    
    public static ArrayList<String> obtenerCantidadActivosMineros() {
        ArrayList<String> datos = new ArrayList<String>();
        try {
            String sql = "SELECT COUNT(*) FROM minero WHERE estado='true'";
            datos = Database.getSQL(sql);
            System.out.println(sql);
        } catch (Exception e) {
            System.err.println("SQL Error dao: " + e.getMessage());
        }

        return datos;    
    }

}
