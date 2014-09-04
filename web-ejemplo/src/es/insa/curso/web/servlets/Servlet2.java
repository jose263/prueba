package es.insa.curso.web.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet2
 */
public class Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet2() {
		super();

	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1 extraer los datos de entrado de request
		String op1 = request.getParameter("op1");
		String op2 = request.getParameter("op2");
		String ope = request.getParameter("op");
		// 2 convertir los datos
		double x = Double.valueOf(op1);
		double y = Double.valueOf(op2);
		// delegar la ejecucion concreta al que toque
		double resultado = calcular(x, y, ope);
		// 4 devolver los resultados al usuario
		// A a lo BRUTO como el SYSO pero en WEB
		response.getWriter().print(("el resultado es " + resultado));
		// B mediante una JSP 
		request.setAttribute("r", resultado);
		request.getRequestDispatcher("pagina.jsp").forward(request, response);
		// el codigo que pongo aui ya no sirve para nada ( ya se envio)
	}

	private double calcular(double x, double y, String ope) {
		if ("sumar".equals(ope)) {
			return x + y;
		} else if ("restar".equals(ope)) {
			return x - y;
		} else if ("multiplicar".equals(ope)) {
			return x * y;
		} else if ("dividir".equals(ope)) {
			return x / y;
		} else {
			return Double.NaN;
		}

	}

}
