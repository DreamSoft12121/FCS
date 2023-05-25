<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up P</title>
</head>
<body>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*" %>
    
    <%
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/mydb");
            Connection conn = ds.getConnection();
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (name, username, password, role) VALUES (?, ?, ?, 'user')");
            ps.setString(1, name);
            ps.setString(2, username);
            ps.setString(3, password);
            
            int rowsAffected = ps.executeUpdate();
            
            if (rowsAffected > 0) {
                
                session.setAttribute("role", "admin");
                response.sendRedirect("../admin/welpagadmin.jsp");
            } else {
                request.setAttribute("errorMessage", "Error al registrar el usuario. Por favor, intenta nuevamente.");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
            
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    %>
</body>
</html>
