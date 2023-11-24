<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
    <style>
        .button {
            background-color: white;
            border: 30px solid black;
            padding: 30px;
            margin: 5px;
            font-size: 20px;
            border-radius: 20px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>

<body>

<c:forEach var="Jogo" items="${game}">

    <div class="img">
        <img src="${Jogo.imgem}" alt="">
    </div>

    <div class="Textos">
        <h1>${Jogo.texto}</h1>

    </div>

    <div class="botoes">

        <c:choose>
            <c:when test="${Jogo.id < 57 || Jogo.id == 58}">
                <c:if test="${Jogo.REF1 != null || Jogo.REF2 != 0}">
                    <a href="/Game-list?but=${Jogo.REF1}">${Jogo.OP1}</a>
                </c:if>

                <c:if test="${Jogo.REF2 != null || Jogo.REF2 != 0}">
                    <button>
                        <a href="/Game-list?but=${Jogo.REF2}">${Jogo.OP2}</a>
                    </button>
                </c:if>

                <c:if test="${Jogo.REF3 != null || Jogo.REF2 != 0}">
                    <button>
                        <a href="/Game-list?but=${Jogo.REF3}">${Jogo.OP3}</a>
                    </button>
                </c:if>

            </c:when>


            <c:when test="${Jogo.id == 57 || Jogo.id >= 59}">
                <h1>Sua vida: ${sessionScope.hpUsuario}/15</h1>
                <h1>Vida boss: ${sessionScope.hpChefe}/25</h1>

                <c:if test="${sessionScope.hpChefe <= 0}">
                    <h1>Morreu o CHEFE</h1>
                </c:if>

                <c:if test="${sessionScope.hpUsuario <= 0}">
                    <h1>Voce morreu!</h1>
                </c:if>
                <c:if test="${Jogo.REF1 != null || Jogo.REF2 != 0}">
                    <a href="/boss-fight?but=${Jogo.REF1}&hpUser=15&hpBoss=25">${Jogo.OP1}</a>
                </c:if>

                <c:if test="${Jogo.REF2 != null || Jogo.REF2 != 0}">
                    <button>
                        <a href="/boss-fight?but=${Jogo.REF2}&hpUser=15&hpBoss=25">${Jogo.OP2}</a>
                    </button>
                </c:if>

                <c:if test="${Jogo.REF3 != null || Jogo.REF2 != 0}">
                    <button>
                        <a href="/boss-fight?but=${Jogo.REF3}&hpUser=15&hpBoss=25">${Jogo.OP3}</a>
                    </button>
                </c:if>

            </c:when>
        </c:choose>

    </div>
</c:forEach>


</body>

</html>
