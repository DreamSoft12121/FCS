<%-- 
    Document   : welcome
    Created on : 22 may 2023, 23:34:53
    Author     : dylanmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String username = (String) session.getAttribute("username");
    
    if (username != null) {
%>
        <h2>Welcome, <%= username %>!</h2>
        <a href="login.jsp">Logout</a>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>

    </body>
</html>
