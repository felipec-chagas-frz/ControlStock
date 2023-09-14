<%@page import="br.com.controlstock.DAO.CadastroDeClientesDAO"%>
<%@page import="br.com.controlstock.DTO.CadastroDeClientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0.001; index.html"> 
        <title>JSP Page</title>
    </head>
    <body>
        <%
            CadastroDeClientes objCadastroDeClientes = new CadastroDeClientes();
            objCadastroDeClientes.setNome(request.getParameter("txtNome"));
            objCadastroDeClientes.setEmail(request.getParameter("txtEmail"));
            objCadastroDeClientes.setSenha(request.getParameter("txtSenha"));
            objCadastroDeClientes.setTelefone(request.getParameter("txtTelefone"));
          
            
            CadastroDeClientesDAO objCadastroDeClientesDAO = new CadastroDeClientesDAO();
            objCadastroDeClientesDAO.cadastrarContato(objCadastroDeClientes);
        %>
    </body>
</html>
