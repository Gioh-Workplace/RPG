<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/game.css">
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
<div id="board">
    <div id="background"></div>
    <div id="square">
        <span id="narrator">Narrador:</span>
        <span id="speech">Lorem ipsum is simply dummy text of the printing and typesetting industry.</span>
    </div>
</div>
<script>
    // Código JavaScript para o jogo
    var narrator = document.getElementById("narrator"); // Coontém o texto do narrador
    var speech = document.getElementById("speech"); // Contém o texto da fala
    var texts = [ // Array que contém os textos possíveis para o jogo
        "Lorem ipsum is simply dummy text of the printing and typesetting industry.",
        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
        "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.",
        "And more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    ];
    var index = 0; // Guarda o índice do texto atual
    var timer = setInterval(changeText, 3000); // Muda o texto a cada 3 segundos

    function changeText() {
        // Muda o texto do narrador e da fala
        index++; // Incrementa o índice
        if (index >= texts.length) {
            // Se o índice for maior ou igual ao tamanho do array, volta para o início
            index = 0;
        }
        speech.innerHTML = texts[index]; // Altera o texto da fala com o texto do array no índice atual
    }
</script>

</body>

</html>