<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/game.css">
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

<script>
    // Esta é a função que gera um número aleatório de 0 a 10 e muda a classe do elemento container
    function gerarNumero() {
        // Gerar um número inteiro aleatório de 0 a 10
        var numero = Math.floor(Math.random() * 3);
        // Obter o elemento container pelo seu id
        var container = document.getElementById("container");
        // Remover todas as classes anteriores do elemento container
        container.className = "";
        // Adicionar a classe correspondente ao número gerado
        container.classList.add(numero + "_sala.jsp");
        <a href="1_sala.jsp">Creditos</a>
    }


</script>
<script>

    function redirecionar() {
        var url = "http://localhost:8080/1_sala.jsp";
        window.location.href = url;
    }
</script>
</head>

<button onclick="redirecionar()">Ir para a 1_sala</button>




</html>
