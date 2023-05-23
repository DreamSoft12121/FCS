<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*, javax.sql.*" %>
<%
  // Establecer la conexión con la base de datos
  Context ctx = new InitialContext();
  DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/webapp");
  Connection conn = ds.getConnection();
  
  // Consultar la base de datos para obtener la lista de archivos
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("SELECT * FROM archivos_pdf");
%>
<!DOCTYPE html>
<html>
<head>
  <title>Listar archivos</title>
</head>
<body>
  <h1>Listado de archivos</h1>
  <table>
    <tr>
      <th>ID</th>
      <th>Nombre</th>
      <th>Ruta</th>
    </tr>
    <% while (rs.next()) { %>
    <tr>
      <td><%= rs.getInt("id") %></td>
      <td><%= rs.getString("nombre") %></td>
      <td><%= rs.getString("ruta") %></td>
    </tr>
    <% } %>
  </table>
</body>
</html>
<%
  // Cerrar la conexión a la base de datos
  rs.close();
  stmt.close();
  conn.close();
%>

