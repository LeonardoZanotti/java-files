<%-- 
    Document   : clientesAlterar
    Created on : Mar 19, 2022, 3:37:12 PM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="models.Cliente" %>
<%@ page errorPage="/jsp/erro.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visualizar cliente</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    
    <%
        if (session.getAttribute("loginBean") == null) {
            request.setAttribute("msg", "Usuário deve se autenticar para acessar o sistema.");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
        
        Cliente c = (Cliente) request.getAttribute("cliente");
    %>
    
    <body>
        <a href="ClientesServlet"><button type="button" class="m-3 btn btn-primary">Voltar</button></a>
        <form action="AlterarClienteServlet" method="POST" class="m-3">
            <input type="hidden" name="id" class="form-control" id="id" value="<%= c.getId() %>">
            <div class="form-group">
              <label for="cpf">CPF</label>
              <input disabled type="text" class="form-control" name="cpf" id="cpf" placeholder="CPF" value="<%= c.getCpf() %>">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input disabled type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Email" value="<%= c.getEmail() %>">
            </div>
            <div class="form-group">
              <label for="nome">Nome</label>
              <input disabled type="text" class="form-control" name="nome" id="nome" placeholder="Nome" value="<%= c.getNome() %>">
            </div>
            <div class="form-group">
              <label for="data">Data de nascimento</label>
              <input disabled type="date" class="form-control" name="data" id="data" placeholder="Data de nascimento" value="<%= c.getData() %>">
            </div>
            <div class="form-group">
              <label for="rua">Rua</label>
              <input disabled type="text" class="form-control" name="rua" id="rua" placeholder="Rua" value="<%= c.getRua() %>">
            </div>
            <div class="form-group">
              <label for="numero">Número</label>
              <input disabled type="number" class="form-control" name="numero" id="numero" placeholder="Número" value="<%= c.getNumero() %>">
            </div>
            <div class="form-group">
              <label for="cep">CEP</label>
              <input disabled type="text" class="form-control" name="cep" id="cep" placeholder="CEP" value="<%= c.getCep() %>">
            </div>
            <div class="form-group">
              <label for="cidade">Cidade</label>
              <input disabled type="text" class="form-control" name="cidade" id="cidade" placeholder="Cidade" value="<%= c.getCidade() %>">
            </div>
            <div class="form-group">
              <label for="uf">UF</label>
              <input disabled type="text" class="form-control" name="uf" id="uf" placeholder="UF" value="<%= c.getUf() %>">
            </div>
        </form>
    </body>
</html>
