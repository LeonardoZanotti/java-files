<%-- 
    Document   : example3
    Created on : Feb 10, 2022, 8:39:17 PM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Date" %>
<html><head><title>Titulo</title></head>
<body>
<b>Data/Hora Atual</b><br/>
<h1><% out.println( new Date() ); %></h1>
</body>
</html>
