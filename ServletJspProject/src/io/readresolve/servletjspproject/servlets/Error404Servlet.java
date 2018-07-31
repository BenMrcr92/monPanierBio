package io.readresolve.servletjspproject.servlets;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 * Servlet responsable de transférer vers la JSP de la page d'erreur 404 (page
 * not found).
 */
public class Error404Servlet extends HttpServlet {

    private static final long serialVersionUID = 8753535938792404063L;

    @Override
    protected void doGet(HttpServletRequest request,
	    HttpServletResponse response) throws ServletException, IOException {
	/*
	 * On pourrait logger l'erreur ici (dans un fichier de journalisation
	 * avec des informations contextuelles).
	 */
	RequestDispatcher dispatcher = getServletContext()
		.getRequestDispatcher("/WEB-INF/jspf/404.jsp");
	dispatcher.forward(request, response);
    }
}
