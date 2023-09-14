<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
        
    </head>
    <body>
        <form  action="excluir_cadastro.jsp" method="POST">
     
            <div>
                <h1 class="editexcluir">Deseja excluir esse contato ?</h1>
            </div>
                    
            
                    
            <div class="senhacadastro">
                <input type="number" placeholder="codigo" name="txtId" value="<%=request.getParameter("codigo")%>">
            </div>
            
            <div class="senhacadastro">
                <input type="text" placeholder="nome do produto" name="txtNomeProduto" value="<%=request.getParameter("nomeProduto")%>">
            </div>
                    
            <div class="senhacadastro">
                <input type="nome" placeholder="Numero a ser estocado" name="txtNumeroEstoque" value="<%=request.getParameter("numeroA_SerEstocado")%>">
            </div>
                    
            <div class="telefone">
                <input type="text" placeholder="Preço por KL" name="txtPrecokl" value="<%=request.getParameter("quantidade")%>"> 
            </div>
                    
            <div class="telefone">
                <input type="text" placeholder="Preço unidade" name="txtPrecoUnidade" value="<%=request.getParameter("preco")%>">
            </div>
                    
            <input type="submit" class="btn-warning" value="excluir">
     
     </form>
            
            <div >
                <a href="pesquisa_listar_cad_pro.jsp"><button class="editcancelar">Cancelar</button></a>
            </div>
    </body>
</html>
