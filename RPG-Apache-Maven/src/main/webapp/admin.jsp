
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Admin Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <link type="text/css" rel="stylesheet" href="css/admin.css">
    <style>

        #game1 {
            display: block;
            position: relative;
            height: 0.5px;
        }
        #myButton1 {
            position: relative;
            background-color: black;
            left: 500px;
            padding: 30px;
            margin:  2px;
            font-size: 20px;
            border-radius: 20px;


        }

        #game2 {
            display: block;
            position: relative;
            height: 0.5px;
        }
        #myButton2 {
            position: relative;
            background-color: black;
            left: 850px;
            top: 1px;
            padding: 30px;
            margin: 2px;
            font-size: 20px;
            border-radius: 20px;
            display: flex;
        }
        input {
            background-color: #000; /* Fundo preto */
            color: #fff; /* Texto branco */
            border: 2px solid #fff; /* Margem branca */
            padding: 10px; /* Espaçamento interno */
            margin: 5px; /* Espaçamento externo */

        }
        .botao {
            font-size: 20px;
            text-decoration: none;
            padding: 10px 30px;
            border-radius: 25px;
            /* Centralizar o botão */
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .destaque {
            color: #fff;
            background: black;
            box-shadow: 2px 2px 1px 1px #000;
        }

        /* esconder a sombra ao clicar no botão */
        .destaque:active { /* quando o link estiver ativo, aplicar: */
            box-shadow: none;
        }


    </style>
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
            <input type="number" id="rankingNew" name="rankingNew" min="1" max="99">
            <input type="submit">
        </form>
    </div>
</c:if>

<c:if test="${sessionScope.clickUser == 'game-create'}">
    <div class="table-responsive hide" id="game">
        <form action="/game-create" method="post" class="registration-form">
            <h1 style="color:white" align="center">Criar Jogo</h1>

            <input type="text" name="texto" id="texto"  placeholder="texto" required>
            <input type="text" name="OP1" id="OP1" placeholder="OP1" required>
            <input type="text" name="REF1" id="REF1" placeholder="REF1" required>
            <input type="text" name="OP2" id="OP2" placeholder="OP2" required>
            <input type="text" name="REF2" id="REF2" placeholder="REF2" required>
            <input type="text" name="OP3" id="OP3" placeholder="OP3" required>
            <input type="text" name="REF3" id="REF3" placeholder="REF3" required>
            <input type="text" name="imgem" id="imgem" placeholder="imgem" required>

            <button type="submit" class="botao destaque" >Criar</button>
        </form>
    </div>

</c:if>

<c:if test="${sessionScope.clickUser == 'game-list'}">
    <div id="buttonContainer"  style="position: relative;">
        <div id="container1" style="position: absolute; top: 10px; left: 10px;">
            <button id="myButton1" style="color:white" onclick="myFunction1()">Historia</button>
            <div class="table-responsive hide" id="game1" style="display: none;">
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
                                <a href="/game-list-for-id?updateGame=${game.id}">Alterar</a>
                            </td>
                            <td>
                                <a href="/off?idGameDelete=${game.id}">Deletar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div id="container2" style="position: absolute; top: 10px; left: 200px;">
            <button id="myButton2" style="color:white" onclick="myFunction2()">Ferramentas</button>
            <div class="table-responsive hide" id="game2" style="display: none;">
                <table>
                    <tr>
                        <th>Espada</th>
                        <th>Granada</th>
                        <th>Pocao</th>
                        <th>Armadura</th>
                        <th> Alterar: </th>
                        <th> Delete: </th>
                    </tr>
                    <c:forEach var="game" items="${gameList}">
                        <tr>
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
        </div>
    </div>
    <script>
        function myFunction1() {
            var x = document.getElementById("game1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }

        function myFunction2() {
            var x = document.getElementById("game2");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
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