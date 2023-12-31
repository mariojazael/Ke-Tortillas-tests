<%@page contentType="text/html; ISO-8859-1" pageEncoding="utf-8" %>

<%
String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Pago</title>
    <link rel="apple-touch-icon" sizes="180x180" href="IMG/Trigo-removebg-preview.png">
    <link rel="icon" type="image/png" sizes="32x32" href="IMG/Trigo-removebg-preview.png">
    <link rel="icon" type="image/png" sizes="16x16" href="IMG/Trigo-removebg-preview.png">
    <link rel="manifest" href="IMG/Trigo-removebg-preview.png">
    <link rel="stylesheet" href="maquetado_Inicio.css">
    <link href="maquetadoPago.css" rel="stylesheet" type="text/css" />


</head>
<body>

<header class="header">
    <div class="menu container">

        <img src="IMG\Trigo-removebg-preview.png" alt="Logo" class= "logo" width="50" height="60" class="d-inline-block align-text">
        <a href="index.jsp" class="logo">Ke Tortillas</a>
        <input type="checkbox" id="menu" />
        <label for="menu">
            <img src="IMG/Menu.png" class="menu-icono" alt="">
        </label>
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">INICIO</a></li>
                <li><a href="Pagina_Productos.jsp">PRODUCTOS</a></li>
                <li><a href="contactanos.jsp">CONTACTANOS</a></li>
                <li><a href="Pagina_CarritoCompras.jsp">CARRITO</a></li>
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

    </div>
</header>

<div class="container">
    <div class="title">
        <h2>PAGO DE PRODUCTOS</h2>
    </div>
    <div class="d-flex">
        <form action="" method="">
            <label>
                <span class="name">Nombre(s) <span class="required">*</span></span>
                <input type="text" name="name">
            </label>
            <label>
                <span class="lname">Apellidos <span class="required">*</span></span>
                <input type="text" name="lname">
            </label>
            <label>
                <span>Municipio <span class="required">*</span></span>
                <select name="municipio" id="municipio">
                    <option value="">Selecciona un municipio</option>
                    <option value="Guadalajara">Guadalajara</option>
                    <option value="Zapopan">Zapopan</option>
                    <option value="San Pedro Tlaquepaque">San Pedro Tlaquepaque</option>
                    <option value="Tonalá">Tonalá</option>
                    <option value="Tlajomulco de Zúñiga">Tlajomulco de Zúñiga</option>
                    <option value="Tlaquepaque">Tlaquepaque</option>
                </select>
            </label>
            <label>
                <span>Calle <span class="required">*</span></span>
                <input type="text" name="houseadd" placeholder="Calle" required>
            </label>
            <label>
                <span>Colonia <span class="required">*</span></span>
                <input type="text" name="houseadd" placeholder="Colonia" required>
            </label>
            <label>
                <span>Numero exterior <span class="required">*</span></span>
                <input type="text" name="extNumber" placeholder="Numero exterior">
            </label>
            <label>
                <span>&nbsp;</span>
                <input type="text" name="intNumber" placeholder="Numero interior">
            </label>

            <label>
                <span>Telefono <span class="required">*</span></span>
                <input type="tel" name="Celphone">
            </label>
            <label>
                <span>Correo Electrónico <span class="required">*</span></span>
                <input type="email" name="email">
            </label>
        </form>
        <div class="Yorder">
            <table>
                <tr>
                    <th colspan="2">Tú Orden</th>
                </tr>
                <tr>
                    <td>Product Name x 2(Qty)</td>
                    <td>$88.00</td>
                </tr>
                <tr>
                    <td>Subtotal</td>
                    <td>$88.00</td>
                </tr>
                <tr>
                    <td>Envío</td>
                    <td>Free shipping</td>
                </tr>
            </table><br>
            <div>
                <input type="radio" name="dbt" value="dbt" checked> Transferencia Bancaria
            </div>
            <p>
                Realiza tu pago directamente en nuestra cuenta bancaria.
                Utilice su ID de pedido como referencia de pago.
                Su pedido no se enviará hasta el pago este concretado            </p>
            <div>
                <input type="radio" name="dbt" value="cd"> Pago en efectivo

                <p>Paga al momento de la entrega</p>
            </div>
            <div>
                <input type="radio" name="dbt" value="cd"> Paypal <span>
          <img src="https://www.logolynx.com/images/logolynx/c3/c36093ca9fb6c250f74d319550acac4d.jpeg" alt="" width="50">
        </span>
            </div>
            <button type="button">Finalizar Pago</button>
        </div><!-- Yorder -->
    </div>
</div>
</body>
</html>