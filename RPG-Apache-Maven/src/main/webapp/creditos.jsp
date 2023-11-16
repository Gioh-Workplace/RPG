
<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/creditos.css">
    <title>Document</title>

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
        <a href="#">Ranking</a>
        <a href="creditos.jsp">Creditos</a>
        <a href="index.jsp">
            <img src="img/logo.jpg" class="logo" alt="logo" id="logo1">
            <div class="barraInferior"></div>
        </a>
        <a href="sobre.jsp">Sobre</a>
        <a href="login.jsp">Login</a>
    </div>
</c:if>


<div class="content">
    <div class="creator creator1">
        <div class="image">
            <img src="img/PFP%20IA.jpg" class="creator_image" alt="first_creator_photo" id="Creator1">
        </div>
        <div class="text">
            <p>Giovani</p>
            <span class="paragraph">
        Lorem ipsum dolor sit amet,<br> consectetur adipiscing elit.<br> Suspendisse eget lacus<br> non neque fringilla convallis.<br> Donec quam justo, mollis et nulla sed, iaculis imperdiet ipsum. Nunc sed fermentum sem, vel pretium ex. Nullam scelerisque mauris eget nibh euismod vehicula. Proin mi nunc, cursus sed metus sed, elementum consectetur massa. Praesent lorem urna, gravida a accumsan ac, lobortis ac est. Integer magna ipsum, elementum non tincidunt eget, pellentesque ac nisi. Nulla ornare ullamcorper ipsum at egestas.

        </span>
            <p class="paragraph"><img src="img/Ghub%20icon.png" class="gitIcon" alt="gitIcon"><a href="https://github.com/Gioh-Workplace">Github</a></p>
        </div>


    </div>
    <div class="creator creator2">
        <div class="image">
            <img src="img/Gabriel%20PFP.jpg" class="creator_image" alt="first_creator_photo" id="Creator2">
        </div>
        <div class="text">
            <p>Gabriel</p>
            <span class="paragraph">
        Lorem ipsum dolor sit amet,<br> consectetur adipiscing elit.<br> Suspendisse eget lacus<br> non neque fringilla convallis.<br> Donec quam justo, mollis et nulla sed, iaculis imperdiet ipsum. Nunc sed fermentum sem, vel pretium ex. Nullam scelerisque mauris eget nibh euismod vehicula. Proin mi nunc, cursus sed metus sed, elementum consectetur massa. Praesent lorem urna, gravida a accumsan ac, lobortis ac est. Integer magna ipsum, elementum non tincidunt eget, pellentesque ac nisi. Nulla ornare ullamcorper ipsum at egestas.

            </span>
            <p class="paragraph"><img src="img/Ghub%20icon.png" class="gitIcon" alt="gitIcon"><a href="https://github.com/bielxrd">Github</a></p>
        </div>


    </div>
    <div class="creator creator3">
        <div class="image">
            <img src="img/Caua%20pfp.jpg" class="creator_image" alt="first_creator_photo" id="Creator3">
        </div>
        <div class="text">
            <p>Caua</p>
            <span class="paragraph">
                        Lorem ipsum dolor sit amet,<br> consectetur adipiscing elit.<br> Suspendisse eget lacus<br> non neque fringilla convallis.<br> Donec quam justo, mollis et nulla sed, iaculis imperdiet ipsum. Nunc sed fermentum sem, vel pretium ex. Nullam scelerisque mauris eget nibh euismod vehicula. Proin mi nunc, cursus sed metus sed, elementum consectetur massa. Praesent lorem urna, gravida a accumsan ac, lobortis ac est. Integer magna ipsum, elementum non tincidunt eget, pellentesque ac nisi. Nulla ornare ullamcorper ipsum at egestas.

            </span>
            <p class="paragraph"><img src="img/Ghub%20icon.png" class="gitIcon" alt="gitIcon"><a href="https://github.com/Gioh-Workplace">Github</a></p>
        </div>


    </div>
    <div class="creator creator4">
        <div class="image">
            <img src="img/Agatha%20Pfp.jpeg" class="creator_image" alt="first_creator_photo" id="Creator4">
        </div>
        <div class="text">
            <p>Agatha</p>
            <span class="paragraph">
        Lorem ipsum dolor sit amet,<br> consectetur adipiscing elit.<br> Suspendisse eget lacus<br> non neque fringilla convallis.<br> Donec quam justo, mollis et nulla sed, iaculis imperdiet ipsum. Nunc sed fermentum sem, vel pretium ex. Nullam scelerisque mauris eget nibh euismod vehicula. Proin mi nunc, cursus sed metus sed, elementum consectetur massa. Praesent lorem urna, gravida a accumsan ac, lobortis ac est. Integer magna ipsum, elementum non tincidunt eget, pellentesque ac nisi. Nulla ornare ullamcorper ipsum at egestas.
            </span>
            <p class="paragraph"><img src="img/Ghub%20icon.png" class="gitIcon" alt="gitIcon">  <a href="https://github.com/Gioh-Workplace">Github</a></p>
        </div>


    </div>

</div>


</body>

</html>