

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <input type="checkbox" id="check">
        <!-- hader começo -->
        <header>
            <label for="check">
                <ion-icon name="menu-outline" id="sidebar_btn"></ion-icon>
            </label>
            <div class="left">
                <h3>Stock<span>Control</span></h3>
            </div>
            <div class="rigth">
                <a href="index.html" class="sair_btn">Sair</a>
            </div>
        </header>
        <!-- hader final -->
        <!-- sidebar começo -->
        <div class="sidebar">
            <a href="#"><ion-icon name="desktop-outline"></ion-icon><span>Inicio</span></a>
            <a href="#"><ion-icon name="add-outline"></ion-icon><span>Cadastro</span></a>
            <a href="cadastro_de_produtos_page.jsp"><ion-icon name="cube-outline"></ion-icon><span>Cadastro de Produtos</span></a>
            <a href="pesquisa_listar_cad_pro.jsp"><ion-icon name="search-outline"></ion-icon><span>Procurar produtos</span></a>
        </div>
        <!-- sidebar final -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
</html>
