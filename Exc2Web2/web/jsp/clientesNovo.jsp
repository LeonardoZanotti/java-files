<%-- 
    Document   : clientesNovo
    Created on : Mar 19, 2022, 4:14:53 PM
    Author     : leonardozanotti
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="models.Cliente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo cliente</title>
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
    %>
    
    <body>
        <form action="NovoClienteServlet" method="POST" class="m-3">
            <div class="form-group">
              <label for="cpf">CPF</label>
              <input type="text" class="form-control" name="cpf" id="cpf" required placeholder="CPF">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" required placeholder="Email">
            </div>
            <div class="form-group">
              <label for="nome">Nome</label>
              <input type="text" class="form-control" name="nome" id="nome" required placeholder="Nome">
            </div>
            <div class="form-group">
              <label for="data">Data de nascimento</label>
              <input type="date" class="form-control" name="data" id="data" required placeholder="Data de nascimento">
            </div>
            <div class="form-group">
              <label for="rua">Rua</label>
              <input type="text" class="form-control" name="rua" id="rua" required placeholder="Rua">
            </div>
            <div class="form-group">
              <label for="numero">Número</label>
              <input type="number" class="form-control" name="numero" id="numero" required placeholder="Número">
            </div>
            <div class="form-group">
              <label for="cep">CEP</label>
              <input type="text" class="form-control" name="cep" id="cep" required placeholder="CEP">
            </div>
            <div class="form-group">
              <label for="cidade">Cidade</label>
              <input type="text" class="form-control" name="cidade" id="cidade" required placeholder="Cidade">
            </div>
            <div class="form-group">
              <label for="uf">UF</label>
              <input type="text" class="form-control" name="uf" id="uf" required placeholder="UF">
            </div>
            <button type="submit" class="btn btn-warning">Salvar</button>
            <a href="ClientesServlet"><button type="button" class="btn btn-light">Cancelar</button></a>
        </form>
    </body>
</html>
