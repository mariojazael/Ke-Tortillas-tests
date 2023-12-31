<%@page contentType="text/html; ISO-8859-1" pageEncoding="utf-8" %>

<%
String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="IMG\Trigo-removebg-preview.png">
    <link rel="icon" type="image/png" sizes="32x32" href="IMG\Trigo-removebg-preview.png">
    <link rel="icon" type="image/png" sizes="16x16" href="IMG\Trigo-removebg-preview.png">
    <link rel="manifest" href="IMG\Trigo-removebg-preview.png">
    <link rel="stylesheet" type="text/css" href="maquetado_Inicio.css">
    <title>Ke Tortillas</title>
</head>

<body>

<header class="header">
    <div class="menu container">

        <a href="#" class="logo">Ke Tortillas</a><img src="IMG\Trigo-removebg-preview.png" alt="Logo" class="logo"
                                                      width="50" height="60" class="d-inline-block align-text">
        <input type="checkbox" id="menu" />
        <label for="menu">
            <img src="IMG/Menu.png" class="menu-icono" alt="">
        </label>
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">INICIO</a></li>
                <li><a href="Pagina_Productos.jsp">PRODUCTOS</a></li>
                <li><a href="Pagina_CarritoCompras.jsp">CARRITO</a></li>
                <li><a href="#">CONTACTO</a></li>
                <%if(username == null || username.isEmpty()){%>
                <li><a href="registro.jsp">REGISTRO</a></li>
                <%} else {%>
                <li><a href="#">Hola, <%=username%>:)</a></li>
                <li><a href="${pageContext.request.contextPath}/logout">Cerrar sesion</a></li>
                <%}%>
            </ul>
        </nav>
    </div>
    <div class="header-content container">

        <h1>Ke Tortillas</h1>

        <p>
            Las tortillas de harina estilo Sonorense son una opción deliciosa y nutritiva para incluir en tu dieta
            diaria. Originarias del estado de Sonora en México, estas tortillas son muy diferentes a las
            tradicionales tortillas de maíz que se consumen en otras partes del país.
            Las tortillas de harina estilo Sonorense son más suaves y elásticas que las de maíz, lo que las hace
            ideales para enrollar y hacer burritos, quesadillas y otros platillos.
        </p>
        <br><br><a href="#" class="btn-1">Información</a>
    </div>
</header>

<section class="Tortilla">
    <img class="Tortilla-img" src="IMG/Decoracion.png" alt="">
    <div class="Tortilla-content container">

        <h2>Los diferentes tipos de tortillas</h2>

        <p class="txt-p">
            Las tortillas de Sonora son una de las variedades más populares y distintivas de
            tortillas en México. Originarias del estado de Sonora, estas tortillas se dierencian
            de otra por su suave textura y su sabero único.

            Existen varios tipos de tortillas de Sonora, cada uno con sus propias caracteristicas
            y usos culinarios. Uno de los topos más populares es la tortilla de harina, que está hecha
            con harina de trigo la cual se deslinda de 3 distintos tipos, la que se usa para hacer tacos
            la tradicional y la Sobaquera.
        </p>

        <div class="Tortilla-group">

            <div class="Tortilla-1">
                <img src="IMG/Tortilla_Tradicional.jpeg" alt="" width="300" height="270">
                <h3>Tortilla tradicional</h3>
                <p>La tortilla de harina de Sonora es muy versátil y se puede utilizar para hacer una gran
                    variedad de platillos, desde platos sencillos y rápidos hasta comidas más elaboradas y
                    sofisticadas. Es un alimento muy popular en la región y se ha expandido a otras partes
                    del país y del mundo debido a su sabor y textura únicos.
                </p>
            </div>

            <div class="Tortilla-1">
                <img src="IMG/Tortilla_Taco.jpeg" alt="" width="300" height="270">
                <h3>Tortilla para Taco</h3>
                <p>La tortilla para taco de harina se caracteriza por su sabor ligeramente dulce y su aroma
                    agradable.
                    Es un elemento básico de la cocina norteña de México y se utiliza en una gran variedad de
                    platillos,
                    desde tacos y burritos hasta quesadillas y sincronizadas.
                </p>
            </div>

            <div class="Tortilla-1">
                <img src="IMG/Tortilla_Sobaquera.jpeg" alt="" width="300" height="270">
                <h3>Tortilla Sobaquera</h3>
                <p>La tortilla sobaquera es muy versátil y se utiliza en una gran variedad de platillos mexicanos,
                    desde
                    tacos y enchiladas hasta chilaquiles y quesadillas. Su tamaño grande y forma ovalada la hace
                    ideal
                    para rellenar con una gran cantidad de ingredientes y su textura suave y flexible la hace fácil
                    de
                    manejar y enrollar.
                </p>
            </div>
        </div>

        <a href="#" class="btn-1">Información</a>
    </div>
</section>

<main class="Services">
    <div class="Services-content container">
        <h2>-Tipos de servicios-</h2>

        <div class="Services-group">

            <div class="Services-1">
                <img src="IMG/lista-de-verificacion.png" alt="" width="50" height="60">
                <h3>Lista de Compras</h3>
            </div>
            <div class="Services-1">
                <img src="IMG/atencion-al-cliente.png" alt="" width="50" height="60">
                <h3>Servicio a Cliente</h3>
            </div>
            <div class="Services-1">
                <img src="IMG/entrega-a-domicilio.png" alt="" width="50" height="60">
                <h3>Servicio a Domicilio</h3>
            </div>
        </div>

        <p>
            Sabemos que el tiempo y la comodidad son valores fundamentales en la vida moderna, por lo que hemos
            diseñado nuestros servicios para que puedan adaptarse a sus necesidades y facilitarle la vida. Nuestro
            servicio integral es la respuesta perfecta para aquellos que buscan comodidad, eficiencia y atención
            personalizada. Estamos aquí para ayudarlo y hacerle la vida más fácil. No dude en contactarnos si
            necesita cualquier cosa.
        </p>
        <a href="#" class="btn-1">Información</a>
    </div>
</main>

<section class="general">
    <div class="general-1">
        <h2>Agronomia de Sonora</h2>
        <p>
            La tortilla de Sonora es un elemento clave en la agricultura de la región y su producción depende de la
            calidad de los cultivos y la técnica de producción de los ingredientes utilizados en su elaboración. Los
            agricultores de la región han desarrollado técnicas avanzadas y especializadas para garantizar la
            calidad de los ingredientes utilizados en la elaboración de esta deliciosa tortilla.
        </p>
        <a href="#" class="btn-1">Información</a>
    </div>
    <div class="general-2"></div>
</section>

<section class="general">
    <div class="general-3"></div>
    <div class="general-1">
        <h2>Platillos para acompañar</h2>
        <p>
            1.- Burritos: las tortillas de harina son un ingrediente clave en la elaboración de los burritos, un
            platillo muy popular en México y en todo el mundo.<br>

            2.- Fajitas: las fajitas son un platillo tex-mex muy popular que consiste en tiras de carne a la
            parrilla (generalmente de pollo o res) y verduras.<br>

            3.- Quesadillas: las quesadillas son un platillo mexicano que consiste en una tortilla de harina rellena
            de queso y otros ingredientes, como carne, verduras o frijoles.<br>

            4.- Enchiladas: las enchiladas son otro platillo mexicano que consiste en tortillas de harina rellenas
            de carne o frijoles, que se bañan en una salsa de chile y se hornean con queso.<br>

            5.- Tacos: las tortillas de harina también se pueden utilizar en la elaboración de tacos, aunque es más
            común utilizar tortillas de maíz.
        </p>
        <a href="#" class="btn-1">Información</a>
    </div>
</section>
</body>

</html>
