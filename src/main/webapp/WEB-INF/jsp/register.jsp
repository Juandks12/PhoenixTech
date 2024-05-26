<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Visualizer</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/Logo.png" type="image/png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src=""${pageContext.request.contextPath}/resources/js/index.js"" defer></script>
    <style>
        body {
            padding-top: 20px;

        }
        .center-screen {
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100%;
        }
    </style>
</head>

<body>
<nav data-dark class="navbar navbar-expand-lg bg-body-tertiary">
    <div data-dark class="container-fluid">
        <a href="/"><img src="/resources/img/Logo.png" class="logo"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div  class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/productos.html">Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/quienes.html">Sobre Nosotros</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="/login"><i class="bi bi-box-arrow-in-right"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/carrito.html"><i class="bi bi-cart4"></i><span class="numero">0</span></a>
                </li>
            </ul>
            <!--<li class="nav-item">
              <button class="dark-theme-btn">🌙</button>
            </li>-->
        </div>
    </div>
</nav>

<div class="container center-screen">
    <div class="jumbotron text-center">
        <h1>Registrate</h1>
        <c:if test="${REGISTRO != null}">
            <p>Nombre: ${REGISTRO}</p>
            <p>${REGISTRO.userid}</p>
            <p>${REGISTRO.userNombre}</p>
            <p>${REGISTRO.userApellido}</p>
            <p>${REGISTRO.userUser}</p>
            <ul>
                <c:forEach items="${REGISTRO.roles}" var="rol">
                    <li>${rol.rolNombre}</li>
                </c:forEach>
            </ul>
        </c:if>

        <c:if test="${REGISTRO == null}">
            <p> NO HAY REGISTRO AUN HECHO :) recuerda ir a UserService linea 47 al 52</p>
        </c:if>
    </div>
    <button onclick="window.location.href='/';">Regresar a página principal</button>

</div>
</body>
<footer class="footer">
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
</body>
</html>