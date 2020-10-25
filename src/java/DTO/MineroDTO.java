/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Manuel
 */
public class MineroDTO {
    private String idMinero;
    private String tipoDocumento;
    private String numeroDocumento;
    private String nombres;
    private String apellidos;
    private String email;
    private String telefono;
    private String nombreFamiliar;
    private String telefonoFamiliar;
    private String direccion;
    private String foto;
    private String estado;

    public MineroDTO() {
    }

    public MineroDTO(String idMinero, String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion, String foto, String estado) {
        this.idMinero = idMinero;
        this.tipoDocumento = tipoDocumento;
        this.numeroDocumento = numeroDocumento;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
        this.telefono = telefono;
        this.nombreFamiliar = nombreFamiliar;
        this.telefonoFamiliar = telefonoFamiliar;
        this.direccion = direccion;
        this.foto = foto;
        this.estado = estado;
    }

    public MineroDTO(String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion, String foto, String estado) {
        this.tipoDocumento = tipoDocumento;
        this.numeroDocumento = numeroDocumento;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
        this.telefono = telefono;
        this.nombreFamiliar = nombreFamiliar;
        this.telefonoFamiliar = telefonoFamiliar;
        this.direccion = direccion;
        this.foto = foto;
        this.estado = estado;
    }

    public MineroDTO(String idMinero, String foto) {
        this.idMinero = idMinero;
        this.foto = foto;
    }

    public MineroDTO(String idMinero, String tipoDocumento, String numeroDocumento, String nombres, String apellidos, String email, String telefono, String nombreFamiliar, String telefonoFamiliar, String direccion) {
        this.idMinero = idMinero;
        this.tipoDocumento = tipoDocumento;
        this.numeroDocumento = numeroDocumento;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
        this.telefono = telefono;
        this.nombreFamiliar = nombreFamiliar;
        this.telefonoFamiliar = telefonoFamiliar;
        this.direccion = direccion;
    }
    
    

    public String getIdMinero() {
        return idMinero;
    }

    public void setIdMinero(String idMinero) {
        this.idMinero = idMinero;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(String numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNombreFamiliar() {
        return nombreFamiliar;
    }

    public void setNombreFamiliar(String nombreFamiliar) {
        this.nombreFamiliar = nombreFamiliar;
    }

    public String getTelefonoFamiliar() {
        return telefonoFamiliar;
    }

    public void setTelefonoFamiliar(String telefonoFamiliar) {
        this.telefonoFamiliar = telefonoFamiliar;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
    
}
