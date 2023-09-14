

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <div>
            <h1 class="editalterar">Deseja alterar esse cadastro?</h1>
        </div>
        
        
        <form action="alterar_cadastro.jsp" method="POST">
    
            <div >
            <div class="id">
                <input type="text" placeholder="ID" name="txtId" value="<%=request.getParameter("codigo")%>">
            </div>
               
            <div  class="produto">
                <input type="text" placeholder="nome do produto" name="txtNomeProduto" value="<%=request.getParameter("nomeProduto")%>">
            </div>
            
            <div  class="n-estocado">
                 <input type="text" placeholder="Numero a ser estocado" name="txtNumeroEstoque" value="<%=request.getParameter("numeroA_SerEstocado")%>">
            </div>
            
            <div class="quantidade">
                <input type="text" placeholder="Preço por KL" name="txtPrecokl" value="<%=request.getParameter("quantidade")%>"> 
            </div>     
            
            <div class="preco">
                <input type="text" placeholder="Preço unidade" name="txtPrecoUnidade" value="<%=request.getParameter("preco")%>">
            </div>   
            
                    
            
                    
            <input  type="submit" class="btn-warning-2" value="Alterar">
            
            </div>   
        </form>   
                    
        <div >
          <a href="pesquisa_listar_cad_pro.jsp"><button class="editcancelar-2">Cancelar</button></a>
        </div>
    </body>
</html>
