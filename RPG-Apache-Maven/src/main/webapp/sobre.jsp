<html>
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

<div class="title">Sobre</div>
<div class="text-block">
    <p>Lorem ipsum is simply dummy text of the printing and typesetting industry. <p> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, <p> when an unknown printer took a galley of type and scrambled it to make a type specimen book. <p> It has survived not only five centuries, <p> but also the leap into electronic typesetting, remaining essentially.</p>
</div>
</body>
</html>
