<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/home.css">
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
    </c:if>

    <c:if test="${sessionScope.loggedUser == null}">
        <div class="menu">
            <a href="/ranking-list">Ranking</a>
            <a href="creditos.jsp">Creditos</a>
            <a href="index.jsp">
                <img src="img/logo.jpg" class="logo" alt="logo" id="logo1">
                <div class="barraInferior"></div>
            </a>
            <a href="sobre.jsp">Sobre</a>
            <a href="login.jsp">Login</a>
        </div>
    </c:if>

    <div class="content">
        <img src="img/fundohome.png" class="logo" alt="logo" id="imag">

        <a href="game.jsp">
            <form action="/Game" method="get" id="create-texts">
                <button class="glow-on-hover" type="submit">PLAY</button>
            </form>
        </a>
    </div>

</body>

</html>
