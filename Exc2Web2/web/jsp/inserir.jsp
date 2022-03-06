<%-- 
    Document   : inserir.jsp
    Created on : Mar 6, 2022, 11:55:21 AM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir</title>
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
    
    <body>
        <form method="POST" action="../CadastrarUsuarioServlet">
            <input type="text" placeholder="Nome" name="nome" value=""/>
            <br>
            <input type="text" placeholder="Login" name="login" value=""/>
            <br>
            <input type="text" placeholder="Senha" name="senha" value=""/>
            <br>
            <br>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>
