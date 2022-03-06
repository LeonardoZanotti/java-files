<%-- 
    Document   : portal
    Created on : Mar 6, 2022, 11:19:44 AM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portal</title>
    </head>
    
    <%
        if (session.getAttribute("loginBean") == null) {
            request.setAttribute("msg", "Faça login para continuar");
            request.setAttribute("page", "../");
            request.setAttribute("pageName", "Login");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/erro.jsp");
            rd.forward(request, response);
        }
    %>
    
    <jsp:useBean id="loginBean" class="beans.LoginBean" scope="session" />
    
    <body>
        <h1>Olá, <%= loginBean.getName() %></h1>
        <a href="inserir.jsp">Inserir</a>
        <br>
        <a href="../LogoutServlet">Logout</a>
        <jsp:useBean id="configuracao" class="beans.ConfigBean" scope="application" />
        <footer style="position: absolute; bottom: 0; height: 50px;">Em caso de problemas, contacte o administrador: <jsp:getProperty name="configuracao" property="email" /></footer>
    </body>
</html>
