<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Asesoría de Prevención de Riesgos</title>
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

<div class="container mt-4">
  <h1>Asesoría de Prevención de Riesgos</h1>
  <p>
    En nuestra empresa nos especializamos en proporcionar servicios de asesoría y consultoría en prevención de riesgos laborales.
    Trabajamos para garantizar la seguridad y el bienestar del personal en las empresas, identificando riesgos potenciales y ofreciendo 
    soluciones efectivas.
  </p>
  <p>
    Nuestros servicios incluyen la realización de capacitaciones, evaluaciones de riesgos, elaboración de planes de prevención y mucho más.
  </p>
  
  <h2>Información de Carga de Clientes</h2>
  <p>Total de Clientes Cargados: <%= request.getAttribute("clientesCargados") %></p>
  <p>Clientes Profesionales Cargados: <%= request.getAttribute("profesionalesCargados") %></p>
  <p>Clientes Administrativos Cargados: <%= request.getAttribute("administrativosCargados") %></p>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

