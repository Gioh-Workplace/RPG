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
    <a class="show" href="/usuarios-list">Usuarios</a>
    <a class="show" href="/ranking-list-admin">Ranking</a>
    <a class="show" href="/update-ranking">Podio</a>
    <a class="show" href="/game-create">Criar Jogo</a>
    <a class="show" href="/game-list">Listar Jogo</a>
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

<c:if test="${sessionScope.clickUser == 'game-create'}">
    <div class="table-responsive hide" id="game">
        <form action="/game-create" method="post" class="registration-form">
            <h1>Criar Jogo</h1>

            <input type="text" name="texto" id="texto" placeholder="texto" required>
            <input type="text" name="OP1" id="OP1" placeholder="OP1" required>
            <input type="text" name="REF1" id="REF1" placeholder="REF1" required>
            <input type="text" name="OP2" id="OP2" placeholder="OP2" required>
            <input type="text" name="REF2" id="REF2" placeholder="REF2" required>
            <input type="text" name="OP3" id="OP3" placeholder="OP3" required>
            <input type="text" name="REF3" id="REF3" placeholder="REF3" required>
            <input type="text" name="imgem" id="imgem" placeholder="imgem" required>

            <button type="submit">Criar</button>
        </form>
    </div>
</c:if>

<c:if test="${sessionScope.clickUser == 'game-list'}">
    <div class="table-responsive hide" id="game">
        <table>
            <tr>
                <th> ID: </th>
                <th> Texto: </th>
                <th> OP1: </th>
                <th> REF1: </th>
                <th> OP2: </th>
                <th> REF2: </th>
                <th> OP3: </th>
                <th> REF3: </th>
                <th>Espada</th>
                <th>Granada</th>
                <th>Pocao</th>
                <th>Armadura</th>
                <th> Alterar: </th>
                <th> Delete: </th>
            </tr>
            <c:forEach var="game" items="${gameList}">
                <tr>
                    <td>${game.id}</td>
                    <td>${game.texto}</td>
                    <td>${game.OP1}</td>
                    <td>${game.REF1}</td>
                    <td>${game.OP2}</td>
                    <td>${game.REF2}</td>
                    <td>${game.OP3}</td>
                    <td>${game.REF3}</td>
                    <td>${game.espada}</td>
                    <td>${game.granada}</td>
                    <td>${game.pocao}</td>
                    <td>${game.armadura}</td>
                    <td>
                        <a href="/game-list-for-id?updateGame=${game.id}">Alterar</a>
                    </td>
                    <td>
                        <a href="/off?idGameDelete=${game.id}">Deletar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</c:if>

<c:if test="${sessionScope.clickUser == 'game-update'}">
    <c:forEach var="gameUpdate" items="${gameUpd}">
        <form action="/update-game" method="post" class="registration-form">
            <h1>Alterar Jogo</h1>

            <input type="hidden" name="idU" id="id1" value="${gameUpdate.id}" required>
            <input type="text" name="texto" id="texto1" value="${gameUpdate.texto}" required>
            <input type="text" name="OP1" id="OP11" value="${gameUpdate.OP1}" required>
            <input type="text" name="REF1" id="REF11" value="${gameUpdate.REF1}"  required>
            <input type="text" name="OP2" id="OP21" value="${gameUpdate.OP2}" required>
            <input type="text" name="REF2" id="REF21" value="${gameUpdate.REF2}" required>
            <input type="text" name="OP3" id="OP31" value="${gameUpdate.OP3}"  required>
            <input type="text" name="REF3" id="REF31" value="${gameUpdate.REF3}" required>
            <input type="text" name="imgem" id="imgem1" value="${gameUpdate.imgem}" required>
            <input type="text" name="espada" id="espada" value="${gameUpdate.espada}" required>
            <input type="text" name="granada" id="granada" value="${gameUpdate.granada}" required>
            <input type="text" name="pocao" id="pocao" value="${gameUpdate.pocao}" required>
            <input type="text" name="armadura" id="armadura" value="${gameUpdate.armadura}" required>
            <input type="text" name="espadaDano" id="espadaDano" value="${gameUpdate.espadaDano}" required>
            <input type="text" name="granadaDano" id="granadaDano" value="${gameUpdate.granadaDano}" required>
            <input type="text" name="pocaoPts" id="pocaoPts" value="${gameUpdate.pocaoPts}" required>
            <input type="text" name="armaduraPts" id="armaduraPts" value="${gameUpdate.armaduraPts}" required>
            <button type="submit">Alterar</button>
        </form>
    </c:forEach>
</c:if>

</body>
</html>
