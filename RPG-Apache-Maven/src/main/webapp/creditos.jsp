<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/creditos.css">
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


<div class="content">
    <div class="creator creator1">
        <div class="image">
            <img src="img/PFP%20IA.jpg" class="creator_image" alt="first_creator_photo" id="Creator1">
        </div>

        <div style="color:white" class="text">
            <p style="color:white">Giovani</p>
            <span class="paragraph">
        Sou um dev amador com diversas
        </span>
            <span class="paragraph">ideias de projetos, e decidi

        </span>
            <span class="paragraph"> tentar colocar eles em pratica.

        </span>
            <button class="custom-btn btn-8"><a href="https://github.com/Gioh-Workplace" style="color:white">GitHub</a></button>

        </div>


    </div>
    <div class="creator creator2">
        <div class="image">
            <img src="img/Gabriel%20PFP.jpg" class="creator_image" alt="first_creator_photo" id="Creator2">
        </div>
        <div style="color:white" class="text">
            <p style="color:white">Gabriel</p>
            <span class="paragraph">
                Atualmente, estou cursando

            </span>
            <span class="paragraph"> Analise e Desenvolvimento de

        </span>

            <span class="paragraph"> Sistemas na faculdade

        </span>
            <button class="custom-btn btn-8"><a href="https://github.com/bielxrd" style="color:white">GitHub</a></button>

        </div>


    </div>
    <div class="creator creator3">
        <div class="image">
            <img src="img/Caua%20pfp.jpg" class="creator_image" alt="first_creator_photo" id="Creator3">
        </div>
        <div style="color:white" class="text">
            <p style="color:white">Caua</p>
            <span class="paragraph">
                      Hello, my name is Caua
            </span>
            <button class="custom-btn btn-8"><a href="https://github.com/Cry199" style="color:white">GitHub</a></button>

        </div>


    </div>
    <div class="creator creator4">
        <div class="image">
            <img src="img/Agatha%20Pfp.jpeg" class="creator_image" alt="first_creator_photo" id="Creator4">
        </div>
        <div style="color:white" class="text">
            <p style="color:white">Agatha</p>
            <span class="paragraph">
        Hello, my name is Agatha, dev
            </span>
            <span class="paragraph">
          iniciante e escritora
            </span>
            <button class="custom-btn btn-8"><a href="https://github.com/AgathaMercedes" style="color:white">GitHub</a></button>

        </div>


    </div>

</div>


</body>

</html>