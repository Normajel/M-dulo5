<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Capacitaciones</title>
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
<h1>Listado de Capacitaciones</h1>
<table class="table">
    <thead>
        <tr>
            <th scope="col">Identificador</th>
            <th scope="col">RUT del Cliente</th>
            <th scope="col">Día</th>
            <th scope="col">Hora</th>
            <th scope="col">Fecha</th>
            <th scope="col">Lugar</th>
            <th scope="col">Cantidad de Asistentes</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="capacitacion" items="${listaCapacitaciones}">
            <tr>
                <td>${capacitacion.identificador}</td>
                <td>${capacitacion.rut}</td>
                <td>${capacitacion.dia}</td>
                <td>${capacitacion.hora}</td>
                <td>${capacitacion.fecha}</td>
                <td>${capacitacion.lugar}</td>
                <td>${capacitacion.cantidadAsistentes}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<br>
<a href="/formulario-crear-capacitacion" class="btn btn-primary">Crear Nueva Capacitación</a> <!-- Enlace al formulario de creación -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
