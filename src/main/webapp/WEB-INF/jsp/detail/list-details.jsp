<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PhoenixTech - Productos</title>
  <link rel="icon" href="${pageContext.request.contextPath}/resources/img/Logo.png" type="image/png">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="${pageContext.request.contextPath}/resources/js/index.js" defer></script>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a href="/index"><img src="../../../resources/img/Logo.png" class="logo"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="vsc-product">Productos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/quienes">Sobre Nosotros</a>
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
    </div>
  </div>
</nav>

<div class="container">
  <div>
    <a type="button" class="btn btn-primary btn-md" href="/add-detail">Adicionar Detalles</a>
  </div>
  <br>
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3>Lista de Detalles</h3>
    </div>
    <div class="panel-body">
      <table class="table table-striped">
        <thead>
        <tr>
          <th>Nombre Producto</th>
          <th>Descripción</th>
          <th>Caracteristicas</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${detail}" var="detail">
          <tr>
            <td>${detail.nameProduct}</td>
            <td>${detail.description}</td>
            <td>${detail.feature}</td>


            <td>
              <a type="button" class="btn btn-success" href="/update-product?id=${detail.id}">Actualizar</a>
              <a type="button" class="btn btn-warning" href="/delete-product?id=${detail.id}">Eliminar</a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-enhdkNACvP7uK1FLJAV4K4tvWjzmecPZ2tQK1I6n+u0lBgSPTxNYKTGPtT5cr5ZY" crossorigin="anonymous"></script>
</body>
</html>
