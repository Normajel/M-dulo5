<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validar Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="pagina.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="#">Asesoría de Riesgos</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="inicio.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contacto.jsp">Contacto</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="crearCapacitacion.jsp">Crear Capacitación</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="listarCapacitacion.jsp">Listar Capacitaciones</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="crearLogin.jsp">Crear Usuario</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container mt-5">
    <h1>Iniciar Sesión</h1>
    <% 
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        if (usuario.equals("admin") && contrasena.equals("1234")) {
            // Si la validación es exitosa, redirigir a la página de inicio
    %>
            <div class="alert alert-success" role="alert">
                Usuario verificado con éxito.
            </div>
            <a href="contacto.jsp" class="btn btn-primary">Ir al Menú Contacto</a>
    <% } else {
            // Si la validación falla, mostrar mensaje de error y ofrecer enlace para crear usuario nuevamente
    %>
            <div class="alert alert-danger" role="alert">
                Error de inicio de sesión. El usuario o la contraseña son incorrectos. 
                Por favor, intenta nuevamente.
            </div>
            <a href="crearLogin.jsp" class="btn btn-primary">Crear Usuario</a>
    <% } %>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

