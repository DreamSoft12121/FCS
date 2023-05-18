/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.dreamsoft.helper;

import java.io.Serializable;
import java.util.List;
import org.dreamsoft.dao.Usuario;
import org.dreamsoft.dao.service.UsuarioService;

/**
 *
 * @author alumno
 */
public class UsuarioHelper extends Helpers<Usuario> implements Serializable
{
    private UsuarioService usuarioService;
    
    public UsuarioHelper() 
    {
    }
    
    public boolean isValidaCamposOk( )
    {
        return isNotNullAndNotEmpity( t.getCorreo() ) && isNotNullAndNotEmpity( t.getNomemple() ) &&
               isNotNullAndNotEmpity( t.getPassword());
    }

    @Override
    public boolean addT() 
    {
        usuarioService = new UsuarioService();
        t = new Usuario();
        t.setCorreo(getParameter("correo"));
        t.setNomemple(getParameter("nomemple"));
        t.setPassword(getParameter("password"));
        
        if( isValidaCamposOk( ) )
        {
            return usuarioService.addUsuario(t );
        }
        return false;
    }

    /**
     *
     * @return
     */
    @Override
    public List<Usuario> getListT() 
    {
        usuarioService = new UsuarioService();
        return usuarioService.getUsuarioList();
    }

    /**
     *
     * @return
     */
    @Override
    public boolean updateT()
    {
        usuarioService = new UsuarioService();
        t = new Usuario();
        t.setCorreo(getParameter("correo"));
        t.setNomemple(getParameter("nomemple"));
        t.setPassword(getParameter("password"));
        if( isValidaCamposOk( ) )
        {
            return usuarioService.updateUsuario(t );
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
        usuarioService = new UsuarioService();
        t = new Usuario();
        t.setCorreo(getParameter("correo"));
        if( t.getCorreo( ) != null && t.getCorreo().length( ) > 0 )
        {
            return usuarioService.deleteUsuario(t );
        }
        return false;
        
    }

    @Override
    public Usuario getTByKey() 
    {
        String usuario = null;
        
        usuario = getParameter("usuario" );
        if( usuario == null || usuario.length( ) <= 0 )
        {
            return null;
        }
        usuarioService = new UsuarioService( );
        return usuarioService.getUsuarioByUsuario( usuario );
    }
    
}