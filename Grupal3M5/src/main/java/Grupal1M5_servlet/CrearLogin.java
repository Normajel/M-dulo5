package Grupal1M5_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CrearLogin")
public class CrearLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private Map<String, String> usuarios = new HashMap<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        mostrarFormularioRegistro(response);
        
        getServletContext().getRequestDispatcher("crearLogin.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        if (usuario == null || contrasena == null || usuario.isEmpty() || contrasena.isEmpty()) {
            mostrarErrorRegistro(response, "El usuario y la contraseña son obligatorios.");
            return;
        }

        if (usuarios.containsKey(usuario)) {
            mostrarErrorRegistro(response, "El usuario " + usuario + " ya existe. Por favor, elige otro nombre de usuario.");
            return;
        }

        // Aquí deberías almacenar la contraseña de manera segura, por ejemplo, utilizando un algoritmo de hash seguro
        usuarios.put(usuario, contrasena);
        
        mostrarRegistroExitoso(response, usuario);
    }

    private void mostrarFormularioRegistro(HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Registro de Usuario</title></head>");
        out.println("<body>");
        out.println("<h1>Registro de Usuario</h1>");
        out.println("<form action=\"CrearLogin\" method=\"post\">");
        out.println("Nombre de usuario: <input type=\"text\" name=\"usuario\" required><br>");
        out.println("Contraseña: <input type=\"password\" name=\"contrasena\" required><br>");
        out.println("<input type=\"submit\" value=\"Registrarse\">");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }

    private void mostrarErrorRegistro(HttpServletResponse response, String mensaje) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Error de Registro</title></head>");
        out.println("<body>");
        out.println("<h1>Error de Registro</h1>");
        out.println("<p>" + mensaje + "</p>");
        out.println("</body>");
        out.println("</html>");
    }

    private void mostrarRegistroExitoso(HttpServletResponse response, String usuario) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Registro Exitoso</title></head>");
        out.println("<body>");
        out.println("<h1>Registro Exitoso</h1>");
        out.println("<p>¡Usuario " + usuario + " registrado correctamente!</p>");
        out.println("</body>");
        out.println("</html>");
    }
}

