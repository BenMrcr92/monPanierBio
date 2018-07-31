package io.readresolve.servletjspproject.servlets;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 * Servlet responsable de transférer vers la JSP de création de paniers.
 * <p>
 * C'est une bonne pratique pour initialiser des données avant de pouvoir
 * afficher une page à un utilisateur.
 */
public class GoToCreateProductServlet extends HttpServlet {

    private static final long serialVersionUID = -1791846816996520845L;

    @Override
    protected void doGet(HttpServletRequest request,
	    HttpServletResponse response) throws ServletException, IOException {
	RequestDispatcher dispatcher = getServletContext()
		.getRequestDispatcher("/WEB-INF/jspf/createProduct.jsp");
	dispatcher.forward(request, response);
    }
}
