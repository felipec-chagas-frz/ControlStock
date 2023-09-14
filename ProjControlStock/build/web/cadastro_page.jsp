<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/estilos.css">
        <title>Cadastro</title>
    </head>
    <body>
     <form action="cadastro.jsp" method="POST">
       <div class="control">
        <div>
          <h1 class="edith1">Control Stock</h1>
        </div>
         <aside id="galeriacd">
           <img src="img/estoque1.png" alt=""/>
         </aside>
        <div id="login">
          <div class="caixa">
            <h1 class="editcadastro">Cadastro</h1>
                    
             <div class="nome">
              <input type="text" placeholder="Nome" name="txtNome">
             </div>
                    
             <div class="emailcadastro">
               <input type="email" placeholder="Email" name="txtEmail">
             </div>
                    
             <div class="senhacadastro">
               <input type="password" placeholder="Senha" name="txtSenha">
             </div>
                    
             <div class="telefone">
               <input type="text" placeholder="Telefone" name="txtTelefone">
             </div>
                    
             <div class="entrar2">
                <p>Ja tem uma conta ?<a  class="editentreaqui" href="index.html"> Entre aqui</a></p>
             </div>
                    
             <div> 
               <input  class="entrarcadastrar2" type="submit"  value="Cadastrar">
             </div>
                    
             </div>
             </div>
         </div>
        </form>    
    </body>
</html>
