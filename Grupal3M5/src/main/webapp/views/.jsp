<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Definir nombre de usuario y contraseña válidos (esto debería venir de una base de datos o algún otro almacenamiento seguro)
    String usuarioValido = "usuario";
    String contrasenaValida = "contraseña";

    // Obtener los parámetros del formulario
    String usuario = request.getParameter("usuario");
    String contrasena = request.getParameter("contrasena");

    // Validar el inicio de sesión
    if (usuarioValido.equals(usuario) && contrasenaValida.equals(contrasena)) {
        // Inicio de sesión exitoso, redirigir a una página de inicio exitoso
        response.sendRedirect("inicio_exitoso.jsp");
    } else {
        // Inicio de sesión fallido, redirigir a una página de inicio fallido
        response.sendRedirect("inicio_fallido.jsp");
    }
%>

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String usuario = request.getParameter("usuario");
	        String contrasena = request.getParameter("contrasena");

	        // Verificar las credenciales
	        if ("admin".equals(usuario) && "1234".equals(contrasena)) {
	            // Credenciales correctas, crear una sesión para el usuario
	            HttpSession session = request.getSession();
	            session.setAttribute("usuario", usuario);

	            // Redireccionar al servlet del caso de uso "Contacto"
	            response.sendRedirect("ContactoServlet");
	        } else {
	            // Credenciales incorrectas, redireccionar al usuario al formulario de inicio de sesión
	            response.sendRedirect("crearLogin.jsp");
	        }
	    }
	}