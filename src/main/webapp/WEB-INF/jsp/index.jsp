<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en" data-dark>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PhoenixTech</title>
  <link rel="icon" href="${pageContext.request.contextPath}/resources/img/Logo.png" type="image/png">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="${pageContext.request.contextPath}/resources/js/index.js" defer></script>
</head>
<body>
<nav data-dark class="navbar navbar-expand-lg bg-body-tertiary">
  <div data-dark class="container-fluid">
    <a href="/"><img src="/resources/img/Logo.png" class="logo"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/vsc-product"><spring:message code="index.navbar.products" /></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/quienes"><spring:message code="index.navbar.about" /></a>
        </li>
      </ul>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="/login"><i class="bi bi-box-arrow-in-right"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/cart"><i class="bi bi-cart4"></i><span class="numero">0</span></a>
        </li>
      </ul>
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Language
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="?lang=en">English</a></li>
            <li><a class="dropdown-item" href="?lang=fr">Français</a></li>
            <li><a class="dropdown-item" href="?lang=de">Deutsch</a></li>
            <li><a class="dropdown-item" href="?lang=es">Español</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<main>
  <a href="https://wa.link/tigrqn" class="container-banner">
    <img src="${pageContext.request.contextPath}/resources/img/Banner Principal.png" class="img-banner" alt="" />
  </a>

  <div class="productos-inicio">
    <h1><spring:message code="index.most_sold" /></h1>
  </div>

  <div class="container-slider">
    <div class="card" style="width: 18rem;">
      <img src="${pageContext.request.contextPath}/resources/img/PS5.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Playstation 5</h5>
        <p class="card-text">$ 2.240.000</p>
        <a href="https://www.playstation.com/es-co/ps5/" class="btn btn-primary">Saber más</a>
      </div>
    </div>
    <div class="card" style="width: 18rem;">
      <img src="${pageContext.request.contextPath}/resources/img/Nitro 5.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Acer Nitro 5</h5>
        <p class="card-text">$ 3.850.000</p>
        <a href="https://www.acer.com/es-es/laptops/nitro/nitro-5" class="btn btn-primary">Saber más</a>
      </div>
    </div>
    <div class="card" style="width: 18rem;">
      <img src="${pageContext.request.contextPath}/resources/img/Mintaka.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">VSG Mintaka</h5>
        <p class="card-text">$ 235.000</p>
        <a href="https://co.vsglatam.com/products/mintaka" class="btn btn-primary">Saber más</a>
      </div>
    </div>
    <div class="card" style="width: 18rem;">
      <img src="${pageContext.request.contextPath}/resources/img/Series S.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Xbox Series S</h5>
        <p class="card-text">$ 1.650.000</p>
        <a href="https://www.xbox.com/es-CO/consoles/xbox-series-s" class="btn btn-primary">Saber más</a>
      </div>
    </div>
    </div>
  </div>
</main>

<footer class="footer">
  <div class="red-social">
    <div class="social-container">
      <h2><spring:message code="footer.follow_us" /></h2>
      <a href="https://www.instagram.com/juan_roldan12_/"><i class="bi bi-instagram"></i></a>
      <a href="https://github.com/Juandks12"><i class="bi bi-github"></i></a>
      <a href="https://www.linkedin.com/in/juan-david-pe%C3%B1a-rold%C3%A1n-92b2961b5/"><i class="bi bi-linkedin"></i></a>
    </div>
  </div>
  <div class="small">
    <p><spring:message code="footer.copyright" /></p>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Ce9gST2y..."></script>
</body>
</html>