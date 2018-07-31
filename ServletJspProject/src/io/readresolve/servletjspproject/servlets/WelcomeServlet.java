package io.readresolve.servletjspproject.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 * Servlet responsable de transférer vers la JSP de page d'accueil.
 * <p>
 * La Servlet initialise la date du jour pour pouvoir l'afficher formatée à
 * l'utilisateur.
 */
public class WelcomeServlet extends HttpServlet {

    private static final long serialVersionUID = 6491708480952440703L;

    @Override
    protected void doGet(HttpServletRequest request,
	    HttpServletResponse response) throws ServletException, IOException {
	/*
	 * Ajout de la date du jour en attribut de la request pour pouvoir la
	 * retrouver dans la JSP.
	 */
	request.setAttribute("today", new Date());
	RequestDispatcher dispatcher = getServletContext()
		.getRequestDispatcher("/WEB-INF/jspf/welcome.jsp");
	dispatcher.forward(request, response);
    }
}
