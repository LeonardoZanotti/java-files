<%-- 
    Document   : clientesListar
    Created on : Mar 19, 2022, 1:36:14 PM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="models.Cliente" %>
<%@ page errorPage="/jsp/erro.jsp" %>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar clientes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    
    <% if (session.getAttribute("loginBean") == null) { %>
        <jsp:forward page="/index.jsp">
            <jsp:param name="msg" value="Usuário deve se autenticar para acessar o sistema."></jsp:param>
        </jsp:forward>
    <% } List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes"); %>
    
    <body>
        <table border="1" class="mt-2 table">
            <thead>
                <tr>
                  <th scope="col">CPF</th>
                  <th scope="col">Nome</th>
                  <th scope="col">Email</th>
                  <th scope="col">Visualizar</th>
                  <th scope="col">Alterar</th>
                  <th scope="col">Remover</th>
                </tr>
            </thead>
            <tbody>
            <%
                for (Cliente c : clientes) {
                    out.println("<tr>");
                    out.println("<td>" + c.getCpf() + "</td>");
                    out.println("<td>" + c.getNome() + "</td>");
                    out.println("<td>" + c.getEmail() + "</td>");
                    out.println("<td><a href=\"VisualizarClienteServlet?id=" + c.getId() + "\"><img height=40 src=\"https://icon-library.com/images/white-eye-icon/white-eye-icon-15.jpg\" /></a></td>");
                    out.println("<td><a href=\"FormAlterarClienteServlet?id=" + c.getId() + "\"><img height=40 src=\"https://www.pngitem.com/pimgs/m/31-313330_free-png-icons-pen-transparent-png.png\" /></a></td>");
                    out.println("<td><a href=\"RemoverClienteServlet?id=" + c.getId() + "\"><img height=40 src=\"https://www.kindpng.com/picc/m/220-2200770_font-trash-fa-trash-icon-png-transparent-png.png\" /></a></td>");
                    out.println("</tr>");
                }
            %>
            </tbody>
        </table>
        <div><a href="FormNovoClienteServlet" class="m-2 btn btn-primary">Novo cliente</a></div>
        <div><a href="./jsp/portal.jsp" class="m-2 btn btn-light">Voltar</a></div>
    </body>
</html>
