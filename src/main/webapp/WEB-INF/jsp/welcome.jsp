<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">Portal de acceso - sistema de notas</div>

        <div class="container center-screen">
            <div class="jumbotron text-center">
                <h1>Administración de Usuarios</h1>
                <p>Seleccione una opción para continuar</p>
            </div>
            <div class="text-center">
                <a href="login" class="btn btn-primary btn-lg">Iniciar Sesión</a>
                <a href="register" id="register" class="btn btn-success btn-lg">Registrar</a>
            </div>
        </div>

        <div class="panel-body">
            <p class="text-muted">Si eres admin, haz click en el siguiente boton para administrar usuarios.</p>
            <button type="button" class="btn btn-primary" onclick="window.location.href='/list-todos'">Portal a administrador</button>
        </div>
        <div class="panel-body">
            <p class="text-muted">Modifica alguna producto haciendo click en este boton.</p>
            <button type="button" class="btn btn-primary" onclick="window.location.href='/list-products'">Portal a adoptar</button>
        </div>

    </div>
</div>
<%@ include file="common/footer.jsp" %>