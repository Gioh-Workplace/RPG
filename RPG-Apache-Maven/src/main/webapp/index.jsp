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
<style>
</style>
<c:if test="${sessionScope.loggedUser != null}">
    <div class="menu">
        <a href="#">Ranking</a>
        <a href="creditos.jsp">Creditos</a>
        <a href="index.jsp">
            <img src="img/logo.png" class="logo" alt="logo" id="logo">
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



<div class="menu">
    <a href="#">Ranking</a>
    <a href="creditos.jsp">Creditos</a>
    <a href="index.jsp">
        <img src="img/logo.jpg" class="logo" alt="logo" id="logo">
        <div class="barraInferior"></div>
    </a>
    <a href="sobre.jsp">Sobre</a>
    <a href="login.jsp">Login</a>
</div>

<div class="image"></div>

<a href="Game.jsp">
    <button class="play-button">PLAY</button>
</a>

<c:if test="${sessionScope.loggedUser == null}">
    <div class="menu">
    <a href="#">Ranking</a>
    <a href="creditos.jsp">Creditos</a>
    <a href="index.jsp">
        <img src="img/logo.jpg" class="logo" alt="logo" id="logo">
        <div class="barraInferior"></div>
    </a>
    <a href="sobre.jsp">Sobre</a>
    <a href="login.jsp">Login</a>
</div>

<div class="image"></div>

<a href="Game.jsp">
    <button class="play-button">PLAY</button>
</a>
</div>

</body>

</html>
