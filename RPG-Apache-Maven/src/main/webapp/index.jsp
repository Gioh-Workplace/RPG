<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <title>Document</title>
</head>

<body>

<div class="menu">
    <a href="#">Ranking</a>
    <a href="creditos.jsp">Creditos</a>index.jsp
    <a href="index.jsp">
        <img src="img/logo.png" class="logo" alt="logo" id="logo">
        <div class="barraInferior"></div>
    </a>
    <a href="sobre.jsp">Sobre</a>
    <a href="login.jsp">Login</a>
</div>
<div class="image"></div>
<button class="button" onclick="play()">PLAY</button>
<script>
    function play() {
        document.body.innerHTML = "<h1>Você clicou no botão PLAY!</h1>";
    }
</script>
</div>

</body>

</html>
