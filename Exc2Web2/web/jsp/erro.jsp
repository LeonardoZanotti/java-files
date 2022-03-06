<%-- 
    Document   : erro
    Created on : Mar 6, 2022, 11:06:52 AM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet ErroServlet</title>
        
        <% 
        String msg = (String) request.getAttribute("msg");
        String redirect = (String) request.getAttribute("page");
        String pageName = (String) request.getAttribute("pageName");
        %>
    </head>
    <body>
        <h1><%= msg %></h1>
        <br>
        <a href=<%= redirect %>><%= pageName %></a>
    </body>
</html>