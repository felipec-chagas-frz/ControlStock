<%@page import="br.com.controlstock.DTO.CadastroDeProdutos"%>

<%@page import="br.com.controlstock.DAO.CadastroDeProdutosDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
        <h1 class="edith0">Control Stock</h1>
                    
         </div>
            <aside id="galeriacd2">
             <img src="img/estoque1.png" alt=""/>
            </aside>
        <header id="topo">
            <a href="cadastro_de_produtos_page.jsp"><button id="btn-novo0">Novo contato</button></a>
            <a href="principal_tela.jsp"><button id="btn-novo" >Sair</button></a>        
        </header>
        
        <main id="alterarlistar">
            <%
                CadastroDeProdutosDAO objCadastroDeProdutosDAO = new CadastroDeProdutosDAO();
                
                ArrayList<CadastroDeProdutos> cadastros = objCadastroDeProdutosDAO.listarTodosOsCadastro();
                
                for (int i = 0; i < cadastros.size(); i++){
                    out.print("<p>Codigo: " + cadastros.get(i).getId() + "</p>");
                    out.print("<p>Nome Produto: " + cadastros.get(i).getNomeProduto() + "</p>");
                    out.print("<p>Numero a ser estocado: " + cadastros.get(i).getNumeroA_SerEstocado() + "</p>");
                    out.print("<p>Quantidade: " + cadastros.get(i).getQuantidade() + "</p>");
                    out.print("<p>Preço: " + cadastros.get(i).getPreco() + "</p>");
                    
                    
                    out.print("<a href='excluir_cadastro_page.jsp?"
                               + "codigo=" + cadastros.get(i).getId() + ""
                               + "&nomeProduto=" + cadastros.get(i).getNomeProduto() + ""
                               + "&numeroA_SerEstocado=" + cadastros.get(i).getNumeroA_SerEstocado() + ""
                               + "&quantidade=" + cadastros.get(i).getQuantidade() + ""
                               + "&preco=" + cadastros.get(i).getPreco() + "'><button class='btn btn-waring'>Excluir</button></a></div>"); 
                               
                               
                    out.print("<a href='alterar_cadastro_page.jsp?"
                               + "codigo=" + cadastros.get(i).getId()+ "" 
                               + "&nomeProduto=" + cadastros.get(i).getNomeProduto() + ""
                               + "&numeroA_SerEstocado=" + cadastros.get(i).getNumeroA_SerEstocado() + "" 
                               + "&quantidade=" + cadastros.get(i).getQuantidade()+ ""
                               + "&preco=" + cadastros.get(i).getPreco() + "'><button class='btn btn-waring'>Alterar</button></a></div>");
              
            }
            %>
        </main>
    </body>
</html>
