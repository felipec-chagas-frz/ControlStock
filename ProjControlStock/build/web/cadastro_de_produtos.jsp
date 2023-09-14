<%@page import="br.com.controlstock.DAO.CadastroDeProdutosDAO"%>
<%@page import="br.com.controlstock.DTO.CadastroDeProdutos"%>
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
            CadastroDeProdutos objCadastroDeProdutos = new CadastroDeProdutos();
            
            objCadastroDeProdutos.setNomeProduto(request.getParameter("txtNomeProduto"));
            objCadastroDeProdutos.setNumeroA_SerEstocado(Integer.parseInt(request.getParameter("txtNumeroEstoque")));
            objCadastroDeProdutos.setQuantidade(Double.parseDouble(request.getParameter("txtPrecokl")));
            objCadastroDeProdutos.setPreco(Double.parseDouble(request.getParameter("txtPrecoUnidade")));
            
            CadastroDeProdutosDAO objCadastroDeProdutosDAO = new CadastroDeProdutosDAO();
            objCadastroDeProdutosDAO.cadastroProdutos(objCadastroDeProdutos);
        %>
    </body>
</html>
