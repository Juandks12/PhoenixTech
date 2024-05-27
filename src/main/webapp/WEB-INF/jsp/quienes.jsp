<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" data-dark>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quienes Somos</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/Logo.png" type="image/png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="${pageContext.request.contextPath}/resources/js/index.js" defer></script>

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a href="<%= request.getContextPath() %>/"><img src="<%= request.getContextPath() %>/resources/img/Logo.png" class="logo" alt="Logo"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<%= request.getContextPath() %>/vsc-product">Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="<%= request.getContextPath() %>/quienes">Sobre Nosotros</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="/login"><i class="bi bi-box-arrow-in-right"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="carrito.html"><i class="bi bi-cart4"></i><span
                            class="numero">0</span></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container section text-center">
    <div class="row">
        <div class="col-12">
<div class="container section">
    <div class="row">
        <div class="col-12">
            <h1 style="color: rgb(255, 165, 0)">¿Qué nos apasiona en PhoenixTech?</h1>
        </div>
    </div>
</div>

<div class="container section">
    <div class="row">
        <div class="col-12">
            <img style="height: 400px" src="<%= request.getContextPath() %>/resources/img/bout.jpg" alt="Sobre Nosotros">
            <p>Somos una empresa dedicada a la comercialización de productos tecnológicos de última generación. Desde nuestra fundación, nos hemos comprometido a ofrecer soluciones innovadoras que mejoren la vida de nuestros clientes. Nuestro equipo está compuesto por profesionales apasionados por la tecnología y el servicio al cliente.</p>
        </div>
    </div>
</div>

<div class="container section">
    <div class="row">
        <div class="col-12">
            <h2>Misión</h2>
            <img style="height: 300px" src="/resources/img/mision.png" alt="Misión">
            <p>Nuestra misión es ofrecer productos de la más alta calidad que satisfagan las necesidades y expectativas de nuestros clientes, contribuyendo al bienestar de la comunidad y al desarrollo sostenible.</p>
        </div>
    </div>
</div>

<div class="container section">
    <div class="row">
        <div class="col-12">
            <h2>Visión</h2>
            <img style="height: 300px" src="/resources/img/vision.png" alt="Visión">
            <p>Visamos ser una empresa líder en el mercado, reconocida por nuestra innovación, compromiso con la calidad y responsabilidad social, generando un impacto positivo en la vida de las personas y el medio ambiente.</p>
        </div>
    </div>
</div>
        </div>
    </div>
</div>

<div class="container section contact-form">
    <div class="row">
        <div class="col-12">
            <h2>Contáctanos</h2>
            <form action="<%= request.getContextPath() %>/send-message" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Correo Electrónico</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Mensaje</label>
                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-success">Enviar</button>

            </form>
        </div>
    </div>
</div>


<footer class="footer mt-5">
    <div class="red-social">
        <div class="social-container">
            <h2>Síguenos</h2>
            <a href="https://www.instagram.com/juan_roldan12_/"><i class="bi bi-instagram"></i></a>
            <a href="https://github.com/Juandks12"><i class="bi bi-github"></i></a>
            <a href="https://www.linkedin.com/in/juan-david-pe%C3%B1a-rold%C3%A1n-92b2961b5/"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>
    <div class="small">
        <p>© PhoenixTech 2024. Todos los derechos reservados</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
