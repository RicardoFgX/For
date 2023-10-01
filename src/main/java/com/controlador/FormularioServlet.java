package com.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class FormularioServlet
 */
public class FormularioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormularioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nombre = request.getParameter("Nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("mail");
        String genero = request.getParameter("genero");
        String[] habilidades = request.getParameterValues("habilidades");
        String[] idiomas = request.getParameterValues("idiomas");
        String comentario = request.getParameter("comentario");

        request.setAttribute("nombre", nombre);
        request.setAttribute("apellidos", apellidos);
        request.setAttribute("correo", correo);
        request.setAttribute("genero", genero);
        request.setAttribute("habilidades", habilidades);
        request.setAttribute("idiomas", idiomas);
        request.setAttribute("comentario", comentario);

        // Redirige a un archivo JSP para mostrar los resultados
        request.getRequestDispatcher("JSP/formularioResultado.jsp").forward(request, response);
    }

}
