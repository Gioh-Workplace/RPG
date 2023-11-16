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
    <a id="show-ranking" href="">Ranking</a>
</div>

<c:if test="${sessionScope.clickUser != null}">
    <div class="usuarios-container">
        <c:forEach var="usuario" items="${users}">
            <tr style="color: #FFFFFF">
                <td>${usuario.id}</td> <span>|</span>
                <td>${usuario.username}</td> <span>|</span>
                <td>${usuario.email}</td>
                <a href="/delete-user?usernameDelete=${usuario.username}">Deletar</a> <br>
            </tr>
        </c:forEach>
    </div>
</c:if>

</body>
</html>
