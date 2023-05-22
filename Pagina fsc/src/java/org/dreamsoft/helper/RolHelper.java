/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.dreamsoft.helper;

import java.io.Serializable;
import java.util.List;
import org.dreamsoft.dao.Rol;
import org.dreamsoft.dao.service.RolService;

/**
 *
 * @author alumno
 */
public class RolHelper extends Helpers<Rol> implements Serializable
{
    private RolService rolService;
    
    public RolHelper() 
    {
    }
    
    public boolean isValidaCamposOk( )
    {
        return isNotNullAndNotEmpity( t.getRol() ) && isNotNullAndNotEmpity( t.getDescripcion() );
    }

    @Override
    public boolean addT() 
    {
        rolService = new RolService();
        t = new Rol();
        t.setRol(getParameter("rol"));
        t.setDescripcion(getParameter("descripcion"));
        if( isValidaCamposOk( ) )
        {
            return rolService.addRol(t );
        }
        return false;
    }

    /**
     *
     * @return
     */
    @Override
    public List<Rol> getListT() 
    {
        rolService = new RolService();
        return rolService.getRolList();
    }

    /**
     *
     * @return
     */
    @Override
    public boolean updateT()
    {
        rolService = new RolService();
        t = new Rol();
        t.setRol(getParameter("rol"));
        t.setDescripcion(getParameter("descripcion"));
        if( isValidaCamposOk( ) )
        {
            return rolService.updateRol(t );
        }
        return false;
        
    }
    
    /**
     *
     * @return
     */
    @Override
    public boolean deleteT()
    {
        rolService = new RolService();
        t = new Rol();
        t.setRol(getParameter("rol"));
        if( t.getRol( ) != null && t.getRol().length( ) > 0 )
        {
            return rolService.deleteRol(t );
        }
        return false;
        
    }

    @Override
    public Rol getTByKey() 
    {
        String rol = null;
        
        rol = getParameter("rol" );
        if( rol == null || rol.length( ) <= 0 )
        {
            return null;
        }
        rolService = new RolService( );
        return rolService.getRolByRol( rol );
    }
    
}