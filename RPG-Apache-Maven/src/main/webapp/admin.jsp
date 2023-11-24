<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Admin Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/admin.css">
</head>
<body>

<div id="admin">
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
                    <input type="number" id="rankingNew" name="rankingNew" min="1" max="99">
                    <input type="submit">
                </form>
            </div>
        </c:if>

        <c:if test="${sessionScope.clickUser == 'game-create'}">
            <div class="table-responsive hide" id="game">
                <form action="/game-create" method="post" class="registration-form">
                    <h1>Criar Jogo</h1>

                    <div class="input-group">
                        <h3>Texto:</h3>
                        <input type="text" name="texto" placeholder="Texto" required>
                    </div>

                    <div class="input-group">
                        <h3>Botao 1:</h3>
                        <input type="text" name="OP1" placeholder="Botao 1">
                    </div>

                    <div class="input-group">
                        <h3>Id Do Botão 1:</h3>
                        <input type="number" name="REF1"  placeholder="Id Do Botão 1">
                    </div>

                    <div class="input-group">
                        <h3>Botao 2:</h3>
                        <input type="text" name="OP2"  placeholder="Botao 2">
                    </div>

                    <div class="input-group">
                        <h3>Id Do Botao 2:</h3>
                        <input type="number" name="REF2"  placeholder="Id Do Botao 2">
                    </div>

                    <div class="input-group">
                        <h3>Botao 3:</h3>
                        <input type="text" name="OP3"  placeholder="Botao 3">
                    </div>

                    <div class="input-group">
                        <h3>Id Do Botao 3:</h3>
                        <input type="number" name="REF3" placeholder="Id Do Botao 3">
                    </div>

                    <div class="input-group">
                        <h3>Link imagem</h3>
                        <input type="text" name="imgem" placeholder="Imagem">
                    </div>

                    <div class="input-group">
                        <h3>Espada:</h3>
                        <input type="number" name="espada"  placeholder="Espada">
                    </div>

                    <div class="input-group">
                        <h3>Granada:</h3>
                        <input type="number" name="granada" placeholder="granada">
                    </div>

                    <div class="input-group">
                        <h3>Pocao:</h3>
                        <input type="number" name="pocao"  placeholder="pocao">
                    </div>

                    <div class="input-group">
                        <h3>Armadura:</h3>
                        <input type="number" name="armadura" placeholder="Armadura">
                    </div>

                    <button type="submit">Criar</button>
                </form>
            </div>
        </c:if>

        <c:if test="${sessionScope.clickUser == 'game-list'}">
            <div class="table-responsive hide" id="game">
                <table>
                    <tr>
                        <th> ID:</th>
                        <th> Texto:</th>
                        <th> OP1:</th>
                        <th> REF1:</th>
                        <th> OP2:</th>
                        <th> REF2:</th>
                        <th> OP3:</th>
                        <th> REF3:</th>
                        <th> Imagem:</th>
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
                            <td>
                                <img src="${game.imgem}" alt="imagem" width="100px" height="100px">
                            </td>
                            <td>
                                <a  href="/game-list-for-id?updateGame=${game.id}">Alterar</a>
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

                    <input type="hidden" name="idU" id="id1" value="${gameUpdate.id}">

                    <div class="input-group">
                        <h3>Texto:</h3>
                        <input type="text" name="texto" id="texto1" value="${gameUpdate.texto}">
                    </div>

                    <div class="input-group">
                        <h3>Botao 1:</h3>
                        <input type="text" name="OP1" value="${gameUpdate.OP1}" >
                    </div>

                    <div class="input-group">
                        <h3>Id Do Botão 1:</h3>
                        <input type="number" name="REF1"  value="${gameUpdate.REF1}"  >
                    </div>

                    <div class="input-group">
                        <h3>Botao 2:</h3>
                        <input type="text" name="OP2" value="${gameUpdate.OP2}" >
                    </div>

                    <div class="input-group">
                        <h3>Id Do Botao 2:</h3>
                        <input type="number" name="REF2" value="${gameUpdate.REF2}" >
                    </div>

                    <div class="input-group">
                        <h3>Botao 3:</h3>
                        <input type="text" name="OP3" value="${gameUpdate.OP3}"  >
                    </div>

                    <div class="input-group">
                        <h3>Id Do Botao 3:</h3>
                        <input type="number" name="REF3" value="${gameUpdate.REF3}" >
                    </div>

                    <div class="input-group">
                        <h3>Link imagem</h3>
                        <input type="text" name="imgem" value="${gameUpdate.imgem}">
                    </div>

                    <div class="input-group">
                        <h3>Espada:</h3>
                        <input type="number" name="espada" value="${gameUpdate.espada}" >
                    </div>

                    <div class="input-group">
                        <h3>Granada:</h3>
                        <input type="number" name="granada" value="${gameUpdate.granada}" >
                    </div>

                    <div class="input-group">
                        <h3>Pocao:</h3>
                        <input type="number" name="pocao" value="${gameUpdate.pocao}" >
                    </div>

                    <div class="input-group">
                        <h3>Armadura:</h3>
                        <input type="number" name="armadura" value="${gameUpdate.armadura}" >
                    </div>

                    <div class="input-group">
                        <h3>Espada Dano:</h3>
                        <input type="number" name="espadaDano" value="${gameUpdate.espadaDano}" >
                    </div>

                    <div class="input-group">
                        <h3>Granada Dano:</h3>
                        <input type="number" name="granadaDano" value="${gameUpdate.granadaDano}" >
                    </div>

                    <div class="input-group">
                        <h3>Pocao Pts:</h3>
                        <input type="number" name="pocaoPts" value="${gameUpdate.pocaoPts}" >
                    </div>

                    <div class="input-group">
                        <h3>Armadura Pts:</h3>
                        <input type="number" name="armaduraPts" value="${gameUpdate.armaduraPts}" >
                    </div>


                    <button type="submit">Alterar</button>
                </form>
            </c:forEach>
        </c:if>

    </c:if>
</div>

</body>
</html>
