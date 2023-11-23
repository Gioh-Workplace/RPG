<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/1_sala.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Document</title>
    <style>
        .button {
            background-color: white;
            border: 30px solid black;
            padding: 30px;
            margin: 5px;
            font-size: 20px;
            border-radius: 20px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
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
        <a href="ranking.jsp">Ranking</a>
        <a href="creditos.jsp">Creditos</a>
        <a href="index.jsp">
            <img src="img/logo.jpg" class="logo" alt="logo" id="logo1">
            <div class="barraInferior"></div>
        </a>
        <a href="sobre.jsp">Sobre</a>
        <a href="login.jsp">Login</a>
    </div>
</c:if>
<div
        id="superior">
</div>
<div
    id="background">
</div>


<c:forEach var="texto" items="${TextList}">
    <c:choose>
        <c:when test="${texto.id ==1}">
            <p style="color: white">${texto.texto}</p>
            <div class="button-container">
                <form action="/first-room" method="post">
                    <button class="button">1 - Lutar</button>
                    <input type="hidden" name="button1" value="atacar">
                </form>
                <form action="/first-room" method="post">
                    <button class="button">2 - Fugir</button>
                    <input type="hidden" name="button1" value="fugir">
                </form>
                <button class="button">3 - Buscar na mochila</button>
            </div>
        </c:when>
        <c:when test="${texto.id == 2 or texto.id == 3 or texto.id == 4}">
            <c:if test="${requestScope.opcao eq 'atacando'}">
                <p style="color: white">${texto.texto}</p>
            </c:if>
        </c:when>

        <c:when test="${texto.id == 5 or texto.id == 6 or texto.id == 7}">
            <c:if test="${(requestScope.sobrevive == 1) and (texto.id == 5 or texto.id == 6)}">
                <p style="color: white">${texto.texto}</p>
            </c:if>

            <c:if test="${(requestScope.sobrevive
             == 2) and (texto.id == 7)}">
                <p style="color: white">${texto.texto}</p>
            </c:if>

        </c:when>

    </c:choose>
</c:forEach>



</body>

</html>
