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
    <link rel="stylesheet" type="text/css" href="maquetado_Productos.css">

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
                <li><a href="#">SERVICIOS</a></li>
                <li><a href="contactanos.jsp">CONTACTANOS</a></li>
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

    <script src="Pagina_Productos.js"></script>

    <section class="info container">

        <div class="info-1">
            <img src="IMG/Horario.svg" alt="" width="150" height="100">
            <h3>Horario</h3>
            <p>Lunes a viernes 9:00am a 8:00pm</p>
        </div>

        <div class="info-1">
            <img src="IMG/Ubicacion.svg" alt="" width="150" height="100">
            <h3>Ubicación</h3>
            <p>México.Jalisco.Guadalajara</p>
        </div>

        <div class="info-1">
            <img src="IMG/Telefono.svg" alt="" width="150" height="100">
            <h3>Celular</h3>
            <p>3316299216</p>
        </div>

    </section>

<section class="nosotros">

    <div class="nosotros-info container">
        <div class="nosotros-img">
            <img src="IMG/tortillas_de_harina-removebg-preview.png" alt="">
        </div>
        <div class="nosotros-txt">
            <span>Premium</span>
            <h2>Las tortillas de harina, lo mejor para tu paladar</h2>
            <p>
                Estamos convencidos de que nuestros productos de tortillas de harina al estilo sonorense son los
                mejores del mercado. En nuestra tortillería nos tomamos muy en serio la calidad de nuestros
                productos, por lo que nos esforzamos constantemente por ofrecer lo mejor a nuestros clientes.
                Utilizamos solo ingredientes frescos y de alta calidad, lo que se traduce en un sabor y una textura
                inigualables. Además, nuestro proceso de producción artesanal nos permite cuidar cada detalle del
                proceso y asegurarnos de que cada tortilla que sale de nuestra tortillería cumpla con los más altos
                estándares de calidad. Estamos seguros de que, una vez que pruebes nuestras tortillas, no querrás
                volver a comprar en otro lugar. ¡Te invitamos a probarlas y descubrir por ti mismo lo que nos hace
                diferentes!
            </p>
            <a href="#" class="btn-1">Acerca de...</a>
        </div>
    </div>

</section>

            <main class="products container">
        <h2>PRODUCTOS</h2>
        <p>
            Nuestras tortillas de harina estilo Sonorense son una excelente elección para aquellos que buscan una
            experiencia culinaria auténtica y deliciosa. Hechas con los ingredientes más frescos y de la más alta
            calidad, nuestras tortillas son suaves, esponjosas y llenas de sabor. Elaboradas siguiendo la tradición
            Sonorense, su textura suave y flexible las hace perfectas para enrollar y rellenar con una variedad de
            ingredientes, desde carne asada hasta verduras frescas. Además, están hechas sin conservantes ni
            aditivos
            artificiales, por lo que son una opción saludable para toda la familia. Comprar nuestras tortillas de
            harina
            estilo Sonorense es una excelente manera de deleitar tus papilas gustativas y experimentar la auténtica
            cocina mexicana en la comodidad de tu hogar.
        </p>

        <div class="product-info">

            <div class="product">

                <img src="IMG/Tortilla_Tradicional.jpeg" alt="" width="400px" height="300px">
                <h3>Tortilla de harina </h3>
                <p>Paquete de 10 tortillas de harina.</p>
                <span>$35</span>
            </div>

            <div class="product">

                <img src="IMG/Tortilla_Taco.jpeg" alt="" width="400px" height="300px">
                <h3>Tortillas para taco</h3>
                <p>Paquete de 10 tortillas para taco</p>
                <span>$40</span>
            </div>

            <div class="product">

                <img src="IMG/Tortilla_Sobaquera.jpeg" alt="" width="400px" height="300px">
                <h3>Tortillas sobaqueras</h3>
                <p>Paquete de 5 tortillas para burro</p>
                <span>$120</span>
            </div>
        </div>
    </main>

    <hr>

    <footer class="footer container">
        <div class="footer-links">
            <div class="link">
                <h3>Ke Tortillas</h3>
                <div class="socials">
                    <img src="IMG/Whatsapp Icon.svg" alt="" width="100px" height="80px">
                    <img src="IMG/facebook icon.svg" alt="" width="100px" height="50px">
                    <img src="IMG/among_us_instagram_icon_156925.png" alt="" width="100px" height="83px">
                </div>
            </div>
            <div class="link">
                <h3>Lorem</h3>
                <ul>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                </ul>
            </div>
            <div class="link">
                <h3>Lorem</h3>
                <ul>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                </ul>
            </div>
            <div class="link">
                <h3>Lorem</h3>
                <ul>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                    <li><a href="#">lorem</a></li>
                </ul>
            </div>
        </div>
    </footer>
</body>

</html>