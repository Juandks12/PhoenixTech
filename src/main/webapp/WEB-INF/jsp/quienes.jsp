<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en" data-dark>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><spring:message code="index.navbar.about" /></title>
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
                        <spring:message code="index.language" />
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="?lang=en"><spring:message code="index.language.english" /></a></li>
                        <li><a class="dropdown-item" href="?lang=fr"><spring:message code="index.language.french" /></a></li>
                        <li><a class="dropdown-item" href="?lang=de"><spring:message code="index.language.german" /></a></li>
                        <li><a class="dropdown-item" href="?lang=es"><spring:message code="index.language.spanish" /></a></li>
                    </ul>
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
                        <h1 style="color: rgb(255, 165, 0)"><spring:message code="about_us.title" /></h1>
                    </div>
                </div>
            </div>

            <div class="container section">
                <div class="row">
                    <div class="col-12">
                        <img style="height: 400px" src="<%= request.getContextPath() %>/resources/img/bout.jpg" alt="Sobre Nosotros">
                        <p><spring:message code="about_us.text" /></p>
                    </div>
                </div>
            </div>

            <div class="container section">
                <div class="row">
                    <div class="col-12">
                        <h2><spring:message code="mission.title" /></h2>
                        <img style="height: 300px" src="/resources/img/mision.png" alt="Misión">
                        <p><spring:message code="mission.text" /></p>
                    </div>
                </div>
            </div>

            <div class="container section">
                <div class="row">
                    <div class="col-12">
                        <h2><spring:message code="vision.title" /></h2>
                        <img style="height: 300px" src="/resources/img/vision.png" alt="Visión">
                        <p><spring:message code="vision.text" /></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container section contact-form">
    <div class="row">
        <div class="col-12">
            <h2><spring:message code="contact.title" /></h2>
            <form action="<%= request.getContextPath() %>/send-message" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label"><spring:message code="contact.name" /></label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label"><spring:message code="contact.email" /></label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label"><spring:message code="contact.message" /></label>
                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-success"><spring:message code="contact.submit" /></button>
            </form>
        </div>
    </div>
</div>

<footer class="footer mt-5">
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
