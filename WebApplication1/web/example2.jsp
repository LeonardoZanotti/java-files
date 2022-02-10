<%-- 
    Document   : example2
    Created on : Feb 10, 2022, 8:39:09 PM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Titulo</title>
</head>
<body>
<b>Página HTML</b><br/>
<h1><% out.println("Hello World!"); %></h1>
<%
for (int i=0; i<10; i++) {
out.println("<h2>Valor = " + i + "</h2>");
}
%>
</body>
</html>
