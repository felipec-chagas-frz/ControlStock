<%@page import="br.com.controlstock.DAO.CadastroDeProdutosDAO"%>
<%@page import="br.com.controlstock.DTO.CadastroDeProdutos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0.001; pesquisa_listar_cad_pro.jsp"> 
        <title>JSP Page</title>
    </head>
    <body>
        <%
            CadastroDeProdutos objCadastroDeProdutos = new CadastroDeProdutos();
            objCadastroDeProdutos.setId(Integer.parseInt(request.getParameter("txtId")));
            
            CadastroDeProdutosDAO objCadastroDeProdutosDAO = new CadastroDeProdutosDAO();
            objCadastroDeProdutosDAO.excluirCadastro(objCadastroDeProdutos);
        %>
        
    </body>
</html>
