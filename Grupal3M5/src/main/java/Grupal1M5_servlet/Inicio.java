package Grupal1M5_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class Inicio extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private int clientesCargados = 0;
    private int profesionalesCargados = 0;
    private int administrativosCargados = 0;

    public Inicio() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("inicio.jsp").forward(request, response);
    }

    // Método para actualizar la carga de clientes
    protected synchronized void cargarClientes(int cantidad) {
        clientesCargados += cantidad;
    }
    
    // Método para actualizar la carga de clientes profesionales
    protected synchronized void cargarProfesionales(int cantidad) {
        profesionalesCargados += cantidad;
        cargarClientes(cantidad);
    }
    
    // Método para actualizar la carga de clientes administrativos
    protected synchronized void cargarAdministrativos(int cantidad) {
        administrativosCargados += cantidad;
        cargarClientes(cantidad);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Información de Carga</title></head>");
        out.println("<body>");
        out.println("<h1>Información de Carga de Clientes</h1>");
        out.println("<p>Total de Clientes Cargados: " + clientesCargados + "</p>");
        out.println("<p>Clientes Profesionales Cargados: " + profesionalesCargados + "</p>");
        out.println("<p>Clientes Administrativos Cargados: " + administrativosCargados + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}
