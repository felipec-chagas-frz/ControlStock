

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <form  action="cadastro_de_produtos.jsp" method="POST">
     <div class="control">
      <div>
        <h1 class="edith1">Control Stock</h1>
                    
         </div>
            <aside id="galeriacd">
             <img src="img/estoque1.png" alt=""/>
            </aside>
        
         <div id="login">
          <div class="caixa">
            <h1 class="editcadastro">Cadastro de produtos</h1>
                    
            <div class="nome">
                <input type="text" placeholder="Nome do produto" name="txtNomeProduto">
            </div>
                    
            <div class="senhacadastro">
                <input type="nome" placeholder="Numero a ser estocado" name="txtNumeroEstoque">
            </div>
                    
            <div class="telefone">
                <input type="text" placeholder="Preço por KL" name="txtPrecokl">
            </div>
                    
            <div class="telefone">
                <input type="text" placeholder="Preço unidade" name="txtPrecoUnidade">
            </div>
                    
            <div> 
               <input  class="entrarcadastrar2" type="submit"  value="Cadastrar Produtos">
            </div>
                    
            </div>
         </div>
     </div>
     </form>
    </body>
</html>
