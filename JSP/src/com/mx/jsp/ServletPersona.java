package com.mx.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletPersona extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private List<Persona> personas = new ArrayList<Persona>();

	protected void doGet(HttpServletResponse response, HttpServletRequest request) {
		try {
			doPost(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws IOException {

		response.setContentType("text/html; charset=iso-8859-1");

		Enumeration<String> parametros = req.getParameterNames();
		while (parametros.hasMoreElements()) {
			System.out.println("valor de los parametero" + parametros.nextElement());

		}

		String nombreServlet = req.getParameter("llave1");
		String apellidoServlet = req.getParameter("llave2");
		String edadServlet = req.getParameter("llave3");

		if (nombreServlet != null && apellidoServlet != null && edadServlet != null) {

			if (!nombreServlet.isEmpty() && !apellidoServlet.isEmpty() && !edadServlet.isEmpty()) {
				Persona persona = new Persona();
				persona.setNombre(nombreServlet);
				persona.setApellido(apellidoServlet);
				persona.setEdad(edadServlet);
				personas.add(persona);
			}

		}

		PrintWriter printWriter = response.getWriter();
		printWriter.println("<table>");
		printWriter.println("<tr>");
			printWriter.println("<th>Nombre</th>");
			printWriter.println("<th>Apellido</th>");
			printWriter.println("<th>Edad</th>");
		printWriter.println("</tr>");

		for (Persona personafor : personas) {
			printWriter.println("<tr>");
				printWriter.println("<td>" + personafor.getNombre() + "</td>");
				printWriter.println("<td>" + personafor.getApellido() + "</td>");
				printWriter.println("<td>" + personafor.getEdad() + "</td>");
			printWriter.println("</tr>");
		}
		printWriter.println("</table>");
	}

	public List<Persona> getPersonas() {
		return personas;
	}

	public void setPersonas(List<Persona> personas) {
		this.personas = personas;
	}

}
