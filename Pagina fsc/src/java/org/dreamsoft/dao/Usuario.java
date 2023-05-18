/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.dreamsoft.dao;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author gerdoc
 */
public class Usuario implements Serializable
{
    private String correo;
    private String nomemple;
    private String password;

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNomemple() {
        return nomemple;
    }

    public void setNomemple(String nomemple) {
        this.nomemple = nomemple;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
            


}
