<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/cadastro.css">
    <title>Document</title>
</head>
<body>
<div class="menu">
    <a href="#">Ranking</a>
    <a href="creditos.jsp">Creditos</a>
    <a href="index.jsp">
        <img src="img/logo.jpg" class="logo" alt="logo" id="logo">
        <div class="barraInferior"></div>
    </a>
    <a href="sobre.jsp">Sobre</a>
    <a href="login.jsp">Login</a>
</div>
<h1> Login </h1>
<div class="form-container">
    <form action="/login" method="post" id="registration-form">
        <h5>${requestScope.message}</h5>
        <input type="text" name="username" id="username" placeholder="User" required>
        <input type="email" name="emailUser" id="emailUser" placeholder="Email" required>
        <input type="password" name="senhaUser" id="senhaUser" placeholder="Senha" required>
        <button type="submit">Entrar</button>
        <h4> Ou <a id="cadastroAnchor" href="cadastro.jsp"> Cadastre-se aqui</a></h4>
    </form>
</div>
</body>
</html>