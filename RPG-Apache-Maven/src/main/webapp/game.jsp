<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/game.css">
    <title>Game</title>
</head>

<body>

    <c:if test="${sessionScope.loggedUser != null}">
        <div class="menu">
            <a href="/ranking-list">Ranking</a>
            <a href="creditos.jsp">Creditos</a>
            <a href="index.jsp">
                <img src="img/logo.jpg" class="logo" alt="logo" id="logo">
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
            <a href="/ranking-list">Ranking</a>
            <a href="creditos.jsp">Creditos</a>
            <a href="index.jsp">
                <img src="img/logo.jpg" class="logo" alt="logo" id="logo1">
            </a>
            <a href="sobre.jsp">Sobre</a>
            <a href="login.jsp">Login</a>
        </div>
    </c:if>


<c:forEach var="Jogo" items="${game}">

    <%
        if (session.getAttribute("startTime") == null) {
            session.setAttribute("startTime", new java.util.Date().getTime());
        }
    %>

    <div class="image">
        <img src="${Jogo.imgem}" alt="">
    </div>

    <div class="Textos">
        <h1 class="texto">${Jogo.texto}</h1>
    </div>

    <script>
        function submitForm(button) {
            var form = document.getElementById('myForm');
            form.but.value = button.value;
            form.submit();
        }
    </script>

        <div class="botoes">

            <c:choose>
                <c:when test="${Jogo.id < 57 || Jogo.id == 58}">

                    <form id="myForm" action="/Game-list" method="get">
                        <input type="hidden" name="but" value="">
                        <c:if test="${Jogo.REF1 != null}">
                            <c:if test="${Jogo.REF1 != 0}">
                                <button class="butt" type="button" value="${Jogo.REF1}" onclick="submitForm(this)">${Jogo.OP1}</button>
                            </c:if>
                        </c:if>

                        <c:if test="${Jogo.REF2 != null}">
                            <c:if test="${Jogo.REF2 != 0}">
                                <button class="butt" type="button" value="${Jogo.REF2}" onclick="submitForm(this)">${Jogo.OP2}</button>
                            </c:if>
                        </c:if>

                        <c:if test="${Jogo.REF3 != null}">
                            <c:if test="${Jogo.REF3 != 0}">
                                <button class="butt" type="button" value="${Jogo.REF3}" onclick="submitForm(this)">${Jogo.OP3}</button>
                            </c:if>
                        </c:if>
                    </form>

                </c:when>

                <c:when test="${Jogo.id == 57 || Jogo.id >= 59}">

                    <h1>Sua vida: ${sessionScope.hpUsuario} / 15</h1>
                    <h1>Vida boss: ${sessionScope.hpChefe} / 25</h1>

                    <c:if test="${sessionScope.hpChefe <= 0}">
                        <h1>Morreu o CHEFE</h1>
                    </c:if>

                    <c:if test="${sessionScope.hpUsuario <= 0}">
                        <h1>Voce morreu!</h1>
                    </c:if>

                    <c:if test="${Jogo.REF1 != null}">
                        <c:if test="${Jogo.REF1 != 0}">
                            <button class="buttt">
                                <a href="/boss-fight?but=${Jogo.REF1}&hpUser=15&hpBoss=25">${Jogo.OP1}</a>
                            </button>
                        </c:if>
                    </c:if>

                    <c:if test="${Jogo.REF2 != null}">
                        <c:if test="${Jogo.REF2 != 0}">
                            <button class="buttt">
                                <a href="/boss-fight?but=${Jogo.REF2}&hpUser=15&hpBoss=25">${Jogo.OP2}</a>
                            </button>
                        </c:if>
                    </c:if>

                    <c:if test="${Jogo.REF3 != null}">
                        <c:if test="${Jogo.REF3 != 0}">
                            <button class="buttt">
                                <a href="/boss-fight?but=${Jogo.REF3}&hpUser=15&hpBoss=25">${Jogo.OP3}</a>
                            </button>
                        </c:if>
                    </c:if>

                </c:when>
            </c:choose>

        </div>


    <c:set var="jogoId" value="${Jogo.id}" scope="page"/>

    <c:if test="${sessionScope.loggedUser != null}">
        <c:if test="${(Jogo.REF1 == null && Jogo.REF2 == null && Jogo.REF3 == null) || (Jogo.REF1 == 0 && Jogo.REF2 == 0 && Jogo.REF3 == 0) || (sessionScope.hpUsuario <= 0 || sessionScope.hpChefe <= 0)}">">
            <%
                if (session.getAttribute("startTime") != null) {
                    long startTime = (Long) session.getAttribute("startTime");
                    long endTime = new java.util.Date().getTime();
                    long elapsedTime = (endTime - startTime) / 1000;

                    long maxTime = 30000;
                    long score = maxTime - elapsedTime;

                    session.setAttribute("score", score);
                    session.removeAttribute("startTime");
                }
            %>
            <form id="scoreForm" action="/PontuacaoUser" method="post">
                <input type="hidden" name="score" value="<%= session.getAttribute("score") %>">
            </form>
            <script>document.getElementById('scoreForm').submit();</script>
        </c:if>
    </c:if>

</c:forEach>



</body>

</html>
