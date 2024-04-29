<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Capacitación</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
    <div class="container">
        <h1 class="mt-5 mb-4 text-center">Crear Capacitación</h1>
        <form method="post" action="formulario-crear-capacitacion">
            <div class="form-group">
                <label for="identificador">Identificador:</label>
                <input type="text" class="form-control" id="identificador" name="identificador" required>
            </div>
            <div class="form-group">
                <label for="rut">RUT del cliente asociado:</label>
                <input type="text" class="form-control" id="rut" name="rut" required>
            </div>
            <div class="form-group">
                <label for="dia">Día de la capacitación:</label>
                <select class="form-control" id="dia" name="dia" required>
                    <option value="lunes">Lunes</option>
                    <option value="martes">Martes</option>
                    <option value="miércoles">Miércoles</option>
                    <option value="jueves">Jueves</option>
                    <option value="viernes">Viernes</option>
                    <option value="sábado">Sábado</option>
                </select>
            </div>
            <div class="form-group">
                <label for="hora">Hora de la capacitación:</label>
                <input type="time" class="form-control" id="hora" name="hora" required>
            </div>
            <div class="form-group">
                <label for="fecha">Fecha de la capacitación:</label>
                <input type="date" class="form-control" id="fecha" name="fecha" required>
            </div>
            <div class="form-group">
                <label for="lugar">Lugar de la capacitación:</label>
                <input type="text" class="form-control" id="lugar" name="lugar" required>
            </div>
            <div class="form-group">
                <label for="cantidad">Cantidad de asistentes:</label>
                <input type="number" class="form-control" id="cantidad" name="cantidad" required>
            </div>
            <button type="submit" class="btn btn-primary">Crear</button>
        </form>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
