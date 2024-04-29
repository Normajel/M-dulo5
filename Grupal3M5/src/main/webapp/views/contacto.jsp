<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Contacto</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
    <h1>Formulario de Contacto</h1>
    <form action="Contacto" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br><br>
        
        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="consulta">Consulta:</label><br>
        <textarea id="consulta" name="consulta" rows="5" cols="40" required></textarea><br><br>
        
        <input type="submit" value="Enviar">
    </form>

    <%-- Servlet code for processing the form --%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="javax.servlet.http.HttpServletRequest" %>
    <%@ page import="javax.servlet.http.HttpServletResponse" %>
    <%@ page import="java.io.IOException" %>
    <%@ page import="javax.servlet.ServletException" %>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.annotation.WebServlet" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>

    <%-- Servlet code for processing the form --%>
    <%@page import="java.io.IOException"%>
    <%@page import="javax.servlet.ServletException"%>
    <%@page import="javax.servlet.http.HttpServlet"%>
    <%@page import="javax.servlet.http.HttpServletRequest"%>
    <%@page import="javax.servlet.http.HttpServletResponse"%>

    <%!
        private static final long serialVersionUID = 1L;

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Forwarding the request to the JSP
            getServletContext().getRequestDispatcher("/views/contacto.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Procesar datos del formulario enviado por el cliente
            String nombre = request.getParameter("nombre");
            String email = request.getParameter("email");
            String consulta = request.getParameter("consulta");

            // Aquí puedes procesar los datos, por ejemplo, guardarlos en una base de datos, enviar un correo electrónico, etc.

            // Respuesta al cliente
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<head><title>Consulta Enviada</title></head>");
            out.println("<body>");
            out.println("<h1>Consulta Enviada</h1>");
            out.println("<p>Gracias por tu consulta, " + nombre + ". Te responderemos a " + email + " pronto.</p>");
            out.println("</body>");
            out.println("</html>");
        }
    %>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

