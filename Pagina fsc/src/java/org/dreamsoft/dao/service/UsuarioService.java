/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.dreamsoft.dao.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.dreamsoft.dao.Usuario;

/**
 *
 * @author gerdoc
 */
public class UsuarioService extends Conexion<Usuario>
{

    public UsuarioService() 
    {
    }
    
    public List<Usuario> getUsuarioList() 
    {
        List<Usuario> usuarioList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Usuario usuario = null;

        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            statement = connection.createStatement();
            if (statement == null) {
                return null;
            }
            resultSet = statement.executeQuery("SELECT * FROM USUARIO");
            if (resultSet == null) 
            {
                return null;
            }
            usuarioList = new ArrayList<>();
            while (resultSet.next()) 
            {
                usuario = new Usuario();
                usuario.setCorreo(resultSet.getString(1 ) );
                usuario.setNomemple(resultSet.getString(2 ) );
                usuario.setPassword( resultSet.getString( 3 ) );
                usuarioList.add(usuario);
            }
            resultSet.close();
            closeConnection(connection);
            return usuarioList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean addUsuario( Usuario usuario )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO USUARIO(USUARIO,PASSWORD,NOMBRE,CORREO,ULTIMO_LOGIN) VALUES(?,?,?,?,?)";
        int row = 0;
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setString(1, usuario.getCorreo( ) );
            preparedStatement.setString(2, usuario.getNomemple( ) );
            preparedStatement.setString(3, usuario.getPassword( ) );
            row = preparedStatement.executeUpdate();
            closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean updateUsuario( Usuario usuario )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "update USUARIO SET PASSWORD = ?,NOMBRE = ?,CORREO = ?, ULTIMO_LOGIN = ? WHERE USUARIO = ?";
        int row = 0;
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setString(1, usuario.getCorreo( ) );
            preparedStatement.setString(2, usuario.getNomemple( ) );
            preparedStatement.setString(3, usuario.getPassword() );
            row = preparedStatement.executeUpdate();
            closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean deleteUsuario( Usuario usuario )
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String sql = "DELETE FROM USUARIO WHERE USUARIO = ?";
        int row = 0;
        try 
        {
            connection = getConnection( );
            if( connection == null )
            {
                return false;
            }
            preparedStatement = connection.prepareStatement(sql);
            if( preparedStatement == null )
            {
                return false;
            }
            preparedStatement.setString(1, usuario.getCorreo() );
            row = preparedStatement.executeUpdate();
            closeConnection(connection);
            return row == 1;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return false;
    }
    
    public Usuario getUsuarioByUsuario( String usuario) 
    {
        Usuario aux = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            preparedStatement = connection.prepareStatement("SELECT * FROM USUARIO WHERE USUARIO = ?" );
            if (preparedStatement == null) 
            {
                return null;
            }
            preparedStatement.setString(1, usuario );
            resultSet = preparedStatement.executeQuery();
            if (resultSet == null) 
            {
                return null;
            }
            aux = new Usuario ( );
            while (resultSet.next()) 
            {
                aux.setCorreo(resultSet.getString(1 ) );
                aux.setNomemple(resultSet.getString(2 ) );
                aux.setPassword( resultSet.getString(3 ) );

            }
            resultSet.close();
            closeConnection(connection);
            return aux;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
    
    
}
