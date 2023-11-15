<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <title>Document</title>
    <style>
        .play-button {
            width: 250px;
            height: 50px;
            background-color: white;
            border: none;
            border-radius: 11px;
            font-size: 48px;
            font-weight: bold;
            color: black;
            cursor: pointer;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-60%, -50%);
        }
    </style>
</head>
<body>

<c:if test="${sessionScope.loggedUser != null}">
    <div class="menu">
        <a href="#">Ranking</a>
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

<<<<<<< HEAD
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

</c:if>

<div class="image"></div>
<a href="game.jsp">
    <form action="/CreateTexts" method="post" id="create-texts">
    <button class="play-button" type="submit">PLAY</button>
    </form>
</a>



</body>

</html>
