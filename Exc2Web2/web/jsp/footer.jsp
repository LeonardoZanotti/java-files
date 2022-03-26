<%-- 
    Document   : footer
    Created on : Mar 19, 2022, 12:35:00 PM
    Author     : leonardozanotti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="configuracao" class="beans.ConfigBean" scope="application" />
<footer style="position: absolute; bottom: 0; height: 50px;">Em caso de problemas, contacte o administrador: ${configuracao.email}</footer>
