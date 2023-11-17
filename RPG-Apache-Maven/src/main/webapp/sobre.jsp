<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/sobre.css">
    <title>Document</title>
</head>
<body>
<c:if test="${sessionScope.loggedUser != null}">
    <div class="menu">
        <a href="/ranking-list">Ranking</a>
        <a href="creditos.jsp">Creditos</a>
        <a href="index.jsp">
            <img src="img/logo.jpg" class="logo" alt="logo" id="logo">
            <div class="barraInferior"></div>
        </a>
        <a href="sobre.jsp">Sobre</a>
        <div class="dropdown">
            <a href="#">Perfil</a>
            <div class="dropdown-content">
                <a href="perfil.jsp">Meu Perfil</a>
                <a href="/logout">Sair</a>
            </div>

        </div>


    </div>
    <h1>

    </h1>
</c:if>

<c:if test="${sessionScope.loggedUser == null}">
    <div class="menu">
        <a href="#">Ranking</a>
        <a href="creditos.jsp">Creditos</a>
        <a href="index.jsp">
            <img src="img/logo.jpg" class="logo" alt="logo" id="logo1">
            <div class="barraInferior"></div>
        </a>
        <a href="sobre.jsp">Sobre</a>
        <a href="login.jsp">Login</a>
    </div>
    <h1>

    </h1>
</c:if>
<script>
    let h1_tag = document.querySelector('h1')
    let text = 'O despertar de Seth e um intrigante RPG de escolhas, um universo onde cada decisao molda o destino do personagem de maneiras imprevisiveis. Neste labirinto misterioso, Seth se encontra diante de encruzilhadas desconcertantes, onde as escolhas nao sao apenas decisoes, mas caminhos que levam a destinos inexplorados.';


    text.split('').forEach((l, index) => {
        setTimeout(() => {
            h1_tag.innerHTML += l
        }, 80 * index)
    })





</script>

</body>
</html>
