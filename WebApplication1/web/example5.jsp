<%-- 
    Document   : example5
    Created on : Feb 10, 2022, 9:08:01 PM
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
        <table>
            
         <%
            for (int i = 1; i < 10; i++) {
                out.println("<tr>");
                for (int j = 1; j <= 10; j++) {
                    out.println(String.format("%d x %d = %d", i, j, i * j) + "<br>");
                }
                out.println("<br></tr>");
            }
        %>
                    
        </table>
    </body>
</html>
