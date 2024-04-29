<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Crear Usuario</title>
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
        <h1>Iniciar Sesión</h1>
    <form action="validar_login.jsp" method="post">
        <label for="usuario">Usuario:</label>
        <input type="text" id="usuario" name="usuario" required><br><br>
        
        <label for="contrasena">Contraseña:</label>
        <input type="password" id="contrasena" name="contrasena" required><br><br>
        
        <input type="submit" value="Iniciar Sesión">
    </form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>