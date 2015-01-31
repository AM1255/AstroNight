<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
    <head>
        <title>Sign Up Page</title>
    </head>
    
    <body>
        
        <%
        String firstName=request.getParameter("first_name");
        String lastName=request.getParameter("last_name");
        
        String temp = request.getParameter("username");
        String userName=temp.substring(0,Math.min(temp.length(), 10));
        String Password=request.getParameter("password");
        String Email=request.getParameter("email");
        
        
        PrintWriter writer = new PrintWriter("C:/Users/kosta_000/Desktop/AstroNight/AstroNight/web/users/"+userName+".txt");
        writer.println(userName);
        writer.println(Password);
        writer.println(firstName);
        writer.println(lastName);
        writer.println(Email);
        writer.close();
        /* if((username.equals("kostas") && password.equals("1010146"))) {
            session.setAttribute("logged",1);*/
        response.sendRedirect("index.jsp");
        /*}
        else
            response.sendRedirect("loginError.jsp");*/
        %>
    </body>

</html>