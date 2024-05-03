package Grupal1M5_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UsuarioCreado")
public class UsuarioCreado extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        
        // Verificar si el usuario y la contraseña son correctos
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
