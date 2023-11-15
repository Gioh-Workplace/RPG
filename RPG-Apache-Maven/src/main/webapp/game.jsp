
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

<div id="board">
    <div id="background"></div>
    <div id="square">
        <span id="narrator">Narrador:</span>
        <span id="speech">Loading</span>
        <button class="botao1" onclick="changeText(3)">Aperte-me</button>
        <button class="botao2" onclick="changeText(1)">Aperte-me</button>
        <button class="botao3" onclick="changeText(2)">Aperte-me</button>
        <button class="botao4" onclick="changeText(3)">Aperte-me</button>
    </div>
</div>

<script>
    // Código JavaScript para o jogo
    var narrator = document.getElementById("narrator"); // Contém o texto do narrador
    var speech = document.getElementById("speech"); // Contém o texto da fala
    var texts = [];
    var index = 0; // Guarda o índice do texto atual
    //var timer = setInterval(changeText, 3000); // Muda o texto a cada 3 segundos

    if(speech.innerText==="Loading"){
        changeText(0);
    }
    function changeText(num) {
        // Muda o texto do narrador e da fala
        index = num;
        //index++; // Incrementa o índice
        if (index >= texts.length) {
            // Se o índice for maior ou igual ao tamanho do array, volta para o início
            index = 0;
        }
        speech.innerHTML = texts[index]; // Altera o texto da fala com o texto do array no índice atual
    }
    function fillArray(){
        <c:forEach var="text" items="${textos}">
        texts[index] = ${textos.getTexto()}
            index++;
        </c:forEach>
        index = 0;
    }

</script>

</body>

</html>