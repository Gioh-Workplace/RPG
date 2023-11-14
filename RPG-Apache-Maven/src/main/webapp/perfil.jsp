<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/perfil.css">
    <title>Document</title>
</head>
<body>
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
                <a href="#">Meu Perfil</a>
                <a href="/logout">Sair</a>
            </div>
        </div>
    </div>
</c:if>
<h2>${sessionScope.loggedUser} Profile </h2>

<div class="form-container">
        <h4>Username</h4>

        <form action="/update" id="username-update" method="post">
        <input type="text" name="username" id="username" value="${sessionScope.loggedUser}" required>
            <button> Alterar </button>
        </form>

        <h4>Email</h4>
        <form id="email-update">
        <input type="email" name="emailUser" id="emailUser" value="${sessionScope.emailUsuario}" required>
            <button> Alterar </button>
        </form>

        <h4>Senha</h4>
        <form id="password-update">
        <input type="password" name="senhaUser" id="senhaUser" value="${sessionScope.senhaUsuario}" required>
            <button> Alterar </button>
        </form>
</div>


</body>
</html>