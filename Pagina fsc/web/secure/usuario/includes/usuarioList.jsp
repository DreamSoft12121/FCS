<%-- 
    Document   : rolList
    Created on : 4 may 2023, 13:19:50
    Author     : alumno
--%>

<%@page import="org.dreamsoft.helper.UsuarioHelper"%>
<%@page import="org.dreamsoft.dao.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="org.dreamsoft.dao.service.UsuarioService"%>
<table border="1">
    <tr>
        <td>Correo</td>
        <td>Nomemple</td>
        <td>Password</td>
        <td>Acción</td>
    </tr>
    <%
        UsuarioHelper usuarioHelper = new UsuarioHelper();
        List<Usuario>list = usuarioHelper.getListT();
        if( list != null && list.size() > 0)
        {
        for(Usuario usuario : list)
        {

    %>
    <tr>
        <td><%=usuario.getCorreo( )%></td>
        <td><%=usuario.getNomemple( )%></td>
        <td><%=usuario.getPassword( )%></td>
        <td>
            <form method="post" action="usuarios.jsp">
                <input type="hidden" name="usuario" id="usuario" value="<%=usuario.getCorreo( )%>" />
                <input type="submit" id="accion" name="accion" value="Borrar" />
                <input type="submit" id="accion" name="accion" value="Editar" />
            </form>
        </td>
    </tr>
    <%}
       }
     %>
</table>