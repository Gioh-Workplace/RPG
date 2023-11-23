<%--
  Created by IntelliJ IDEA.
  User: caual
  Date: 15/11/2023
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/ranking.css">
        <title>Ranking Top ${sessionScope.top}</title>
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
                <a href="/ranking-list">Ranking</a>
                <a href="creditos.jsp">Creditos</a>
                <a href="index.jsp">
                    <img src="img/logo.jpg" class="logo" alt="logo" id="logo1">
                    <div class="barraInferior"></div>
                </a>
                <a href="sobre.jsp">Sobre</a>
                <a href="login.jsp">Login</a>
            </div>
        </c:if>

        <div class="contentR">

            <h2>Top ${sessionScope.top}</h2>

            <div class="table-responsive">
                <table>

                    <tr>
                        <th> Name: </th>
                        <th> Score: </th>
                    </tr>

                    <c:forEach var="ranking" items="${sessionScope.rankingTop}">
                    <tr>
                        <td>${ranking.username}</td>
                        <td>${ranking.pontuacao}</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>

        </div>
    </body>
</html>
