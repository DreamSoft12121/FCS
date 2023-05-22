/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.dreamsoft.dao;

import java.io.Serializable;

/**
 *
 * @author gerdoc
 */
public class Rol implements Serializable
{
    private String Rol;
    private String descripcion;

    public Rol() 
    {
    }

    public String getRol() 
    {
        return Rol;
    }

    public void setRol(String rol) 
    {
        this.Rol = rol;
    }

    public String getDescripcion() 
    {
        return descripcion;
    }

    public void setDescripcion(String descripcion) 
    {
        this.descripcion = descripcion;
    }
    
    
}
