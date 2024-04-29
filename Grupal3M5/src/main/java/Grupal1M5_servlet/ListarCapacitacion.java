package Grupal1M5_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ListarCapacitacion")
public class ListarCapacitacion extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public ListarCapacitacion() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Supongamos que tienes una lista de capacitaciones llamada "listaCapacitaciones"
        List<CreaCapacitacion> listaCapacitaciones = obtenerListaCapacitaciones(); // Llama a un método para obtener las capacitaciones

        // Establece la lista de capacitaciones como un atributo de solicitud
        request.setAttribute("listaCapacitaciones", listaCapacitaciones);
        
        // Redirige a la página JSP para mostrar el listado de capacitaciones
        getServletContext().getRequestDispatcher("listarCapacitacion.jsp").forward(request, response);
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
    	
        // Aquí puedes agregar la lógica para manejar el formulario de creación de capacitaciones mediante el método POST
        // Por ejemplo, procesar los datos enviados por el formulario y guardar la nueva capacitación en tu base de datos

        // Después de manejar el formulario, puedes redirigir al usuario de vuelta a la página de listado de capacitaciones
        // Por ahora, vamos a redirigirlo a la misma página que el método GET
        doGet(request, response);
    }

    // Método para simular la obtención de la lista de capacitaciones (reemplázalo con tu lógica real)
    private List<CreaCapacitacion> obtenerListaCapacitaciones() {
        // Supongamos que tienes una lista de capacitaciones
        List<CreaCapacitacion> listaCapacitaciones = new ArrayList<>();

        // Agrega algunas capacitaciones a la lista (puedes agregar las que necesites)
        listaCapacitaciones.add(new CreaCapacitacion("001", "Cliente A", "Lunes", "09:00", "2024-05-01", "Oficina A", 20));
        listaCapacitaciones.add(new CreaCapacitacion("002", "Cliente B", "Miércoles", "14:00", "2024-05-03", "Oficina B", 15));

        return listaCapacitaciones;
    }
}


