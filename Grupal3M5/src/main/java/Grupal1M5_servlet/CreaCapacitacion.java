package Grupal1M5_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreaCapacitacion")
public class CreaCapacitacion extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public CreaCapacitacion () {
    	
    }
    
    public CreaCapacitacion(String identificador, String rut, String dia, String hora, String fecha, String lugar, int cantidadAsistentes) {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Muestra el formulario de creación de capacitación
        getServletContext().getRequestDispatcher("creaCapacitacion.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Procesar datos del formulario enviado por el cliente
        String identificador = request.getParameter("identificador");
        String rut = request.getParameter("rut");
        String dia = request.getParameter("dia");
        String hora = request.getParameter("hora");
        String fecha = request.getParameter("fecha");
        String lugar = request.getParameter("lugar");
        String cantidadAsistentes = request.getParameter("cantidad");

        // Aquí puedes procesar los datos, como guardarlos en una base de datos

        // Respuesta al cliente
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Capacitación Creada</title></head>");
        out.println("<body>");
        out.println("<h1>Capacitación Creada</h1>");
        out.println("<p>Se ha creado una capacitación con los siguientes datos:</p>");
        out.println("<p>Identificador: " + identificador + "</p>");
        out.println("<p>RUT del cliente asociado: " + rut + "</p>");
        out.println("<p>Día de la capacitación: " + dia + "</p>");
        out.println("<p>Hora de la capacitación: " + hora + "</p>");
        out.println("<p>Fecha de la capacitación: " + fecha + "</p>");
        out.println("<p>Lugar de la capacitación: " + lugar + "</p>");
        out.println("<p>Cantidad de asistentes: " + cantidadAsistentes + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}
