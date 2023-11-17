<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Admin Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <link type="text/css" rel="stylesheet" href="css/admin.css">
</head>
<body>
<c:if test="${sessionScope.adminLogado != null}">
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
                <a href="admin.jsp">Meu Perfil</a>
                <a href="/logout">Sair</a>
            </div>
        </div>
    </div>
</c:if>

<div class="form-container">
    <a id="show-usuarios" href="/usuarios-list">Usuarios</a>
    <a id="show-ranking" href="/ranking-list-admin">Ranking</a>
    <a id="show-podium" href="/update-ranking">Podio</a>
</div>



<c:if test="${sessionScope.clickUser == 'usuarios'}">
    <div class="table-responsive hide" id="usuarios">
        <table>
            <tr>
                <th> ID: </th>
                <th> Name: </th>
                <th> email: </th>
                <th> Delete: </th>
            </tr>
            <c:forEach var="usuario" items="${users}">
                <tr>
                    <td>${usuario.id}</td>
                    <td>${usuario.username}</td>
                    <td>${usuario.email}</td>
                    <td>
                        <a href="/delete-user?usernameDelete=${usuario.username}">Deletar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</c:if>

<c:if test="${sessionScope.clickUser == 'ranking'}">
    <div class="table-responsive hide" id="ranking">
        <table>

            <tr>
                <th> Name: </th>
                <th> Score: </th>
                <th> Delete: </th>
            </tr>

            <c:forEach var="ranking" items="${sessionScope.rankingTop}">
                <tr>
                    <td>${ranking.username}</td>
                    <td>${ranking.pontuacao}</td>
                    <td>
                        <a href="/delete-ranking?idRankingDelete=${ranking.id}">Deletar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</c:if>


<c:if test="${sessionScope.clickUser == 'podium'}">
    <div class="table-responsive hide" id="podium">
        <form action="/update-ranking" method="post">
            <label for="rankingNew">Escolha o Podio (entre 1 e 100):</label>
            <input type="number" id="rankingNew" name="rankingNew" min="1" max="100">
            <input type="submit">
        </form>
    </div>
</c:if>

</body>
</html>
