<%-- 
    Document   : roles
    Created on : May 2, 2023, 6:09:56 PM
    Author     : gerdoc
--%>

<%@page import="org.dreamsoft.helper.Helpers"%>
<%@page import="org.dreamsoft.helper.UsuarioHelper"%>
<%@page import="org.dreamsoft.dao.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="org.dreamsoft.dao.service.UsuarioService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String accion = request.getParameter("accion");
            Helpers helpers = null;
            Usuario usuario = null;
            String aux = null;
            boolean flag = false;
            String readonly = null;
            
            if( "Nuevo".equals( accion ) || "Editar".equals( accion ) )
            {
                if( "Nuevo".equals( accion ) )
                {
                    usuario = new Usuario( );
                    usuario.setCorreo( "" );
                    usuario.setNomemple( "" );
                    usuario.setPassword( "" );
                    aux = "Guardar";
                    readonly = "";
                }
                if( "Editar".equals( accion ) )
                {
                    helpers = new UsuarioHelper( ).addRequest( request );
                    usuario = (Usuario)helpers.getTByKey( );
                    aux = "Actualizar";
                    readonly = "readonly='true'";
                }
                
            
        %>
                <jsp:include page="/includes/usuario.jsp" >
                    <jsp:param name="correo" value="<%=usuario.getCorreo()%>" />
                    <jsp:param name="usuario" value="<%=usuario.getNomemple()%>" />
                    <jsp:param name="password" value="<%=usuario.getPassword()%>" />
                    <jsp:param name="accion" value="<%=aux%>" />
                    <jsp:param name="readonly" value="<%=readonly%>" />
                </jsp:include>
        <%
            }
            if( "Guardar".equals( accion ) || "Borrar".equals( accion ) || "Actualizar".equals( accion ) )
            {
                helpers = new UsuarioHelper( ).addRequest( request );
                if( "Guardar".equals( accion ) )
                {
                    flag = helpers.addT( );
                }
                if( "Borrar".equals( accion ) )
                {
                    flag = helpers.deleteT( );
                }
                if( "Actualizar".equals( accion ) )
                {
                    flag = helpers.updateT( );
                }
                if( flag )
                {
        %>
                    <jsp:forward page="usuarios.jsp?accion=list" />
        <%
                }                
            }
            if( accion == null || "list".equals(accion ))
            {
        %>
                <a href="../usuarios.jsp?accion=Nuevo">Nuevo usuario </a>
                <jsp:include page="includes/usuarioList.jsp" />
        <%
            }
        %>
        
    </body>
</html>
