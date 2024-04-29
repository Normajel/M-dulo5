package Grupal1M5_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contacto")
public class Contacto extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public Contacto() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	getServletContext().getRequestDispatcher("contacto.jsp").forward(request, response);
        PrintWriter out = response.getWriter();

        // Formulario de contacto
        out.println("<html>");
        out.println("<head><title>Formulario de Contacto</title></head>");
        out.println("<body>");
        out.println("<h1>Formulario de Contacto</h1>");
        out.println("<form method=\"post\">");
        out.println("Nombre: <input type=\"text\" name=\"nombre\"><br>");
        out.println("Correo electrónico: <input type=\"email\" name=\"email\"><br>");
        out.println("Consulta: <textarea name=\"consulta\" rows=\"5\" cols=\"40\"></textarea><br>");
        out.println("<input type=\"submit\" value=\"Enviar\">");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
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
}
