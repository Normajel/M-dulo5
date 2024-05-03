package Grupal1M5_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Validar_login")
public class validar_login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros de usuario y contraseña del formulario
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        
        // Validar usuario y contraseña
        boolean validacionExitosa = validarUsuarioYContrasena(usuario, contrasena);
        
        // Redirigir según el resultado de la validación
        if (validacionExitosa) {
            response.sendRedirect("inicio.jsp");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><head><title>Error de inicio de sesión</title></head><body>");
            out.println("<h1>Error de inicio de sesión</h1>");
            out.println("<p>El usuario o la contraseña son incorrectos. Por favor, intenta nuevamente.</p>");
            out.println("</body></html>");
        }
    }
    
    // Método para validar usuario y contraseña
    private boolean validarUsuarioYContrasena(String usuario, String contrasena) {
        // Validar si el usuario es "admin" y la contraseña es "1234"
        return usuario.equals("admin") && contrasena.equals("1234");
    }
}