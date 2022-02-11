<%-- 
    Document   : example4
    Created on : Feb 10, 2022, 9:07:55 PM
    Author     : leonardozanotti
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
            for (int i = 0; i < 100; i++)
                out.println(i + " - <h1>Zanotti!</h1>");
                    %>
    </body>
</html>
