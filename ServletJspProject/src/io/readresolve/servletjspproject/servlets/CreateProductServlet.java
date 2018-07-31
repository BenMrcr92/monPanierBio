package io.readresolve.servletjspproject.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.*;

import javax.servlet.*;
import javax.servlet.http.*;

import io.readresolve.servletjspproject.entities.Basket;

/**
 * Servlet responsable de valider les données saisies dans le formulaire de
 * création de panier.
 * <p>
 * La Servlet valide les données avant de construire une instance de
 * {@code Basket}, puis {@code sysout} de l'objet (uniquement à des fins de
 * tests, on pourrait utiliser le debugger ;-) !).
 */
public class CreateProductServlet extends HttpServlet {

    private static final long serialVersionUID = -3338043546118776601L;

    /**
     * Methode qui attend une requete HTTP POST, autrement dit la validation
     * d'un formulaire.
     */
    @Override
    protected void doPost(HttpServletRequest request,
	    HttpServletResponse response) throws ServletException, IOException {
	boolean validate = validate(request);
	if (validate) {
	    /*
	     * Pas d'erreur de validation, on peut construire un Basket sans
	     * erreur possible.
	     */
	    Basket basket = createBasket(request);
	    // A terme, sauvegarde de l'entite en base de donnee via un DAO
	    System.out.println(basket); // basket.toString()
	    request.setAttribute("success", "Panier créé avec succès !");
	}
	/*
	 * On récupère une instance de RequestDispatcher pour transférer request
	 * et response vers la JSP createProduct.jsp
	 */
	RequestDispatcher dispatcher = getServletContext()
		.getRequestDispatcher("/WEB-INF/jspf/createProduct.jsp");
	dispatcher.forward(request, response);
    }

    /**
     * Vérifie que tous les champs obligatoires sont renseignés et au bon
     * format, ajoute un attribut dans la requête dans le cas contraire.
     *
     * @return {@code true} si pas d'erreur; {@code false} dans le cas contraire
     */
    private static boolean validate(HttpServletRequest request) {
	boolean validate = true;
	String code = request.getParameter("code");
	if (code == null || code.trim().isEmpty()) {
	    request.setAttribute("errorCode", "obligatoire");
	    validate = false;
	}
	String category = request.getParameter("category");
	if ("0".equals(category)) {
	    request.setAttribute("errorCategory", "obligatoire");
	    validate = false;
	}
	String name = request.getParameter("name");
	if (name == null || name.trim().isEmpty()) {
	    request.setAttribute("errorName", "obligatoire");
	    validate = false;
	}
	String price = request.getParameter("price");
	if (price == null || price.trim().isEmpty()) {
	    request.setAttribute("errorPrice", "obligatoire");
	    validate = false;
	} else {
	    // Une valeur est renseignée
	    Double realPrice = convertToDouble(price);
	    if (null == realPrice) {
		// Impossible de convertir en double
		request.setAttribute("errorPrice", "doit être un nombre");
		validate = false;
	    } else if (realPrice <= 0) {
		// double negatif ou 0
		request.setAttribute("errorPrice", "doit être positif");
		validate = false;
	    }
	}
	String weight = request.getParameter("weight");
	if (weight == null || weight.isEmpty()) {
	    request.setAttribute("errorWeight", "obligatoire");
	    validate = false;
	} else {
	    // Une valeur est renseignée
	    Double realWeight = convertToDouble(weight);
	    if (null == realWeight) {
		// Impossible de convertir en double
		request.setAttribute("errorWeight", "doit être un nombre");
		validate = false;
	    } else if (realWeight <= 0) {
		// double negatif ou 0
		request.setAttribute("errorWeight", "doit être positif");
		validate = false;
	    }
	}
	String dateOfSale = request.getParameter("dateOfSale");
	if (dateOfSale == null || dateOfSale.isEmpty()) {
	    request.setAttribute("errorDateOfSale", "obligatoire");
	    validate = false;
	} else {
	    // Une valeur est renseignée
	    LocalDate realDateOfSale = convertToDate(dateOfSale);
	    if (null == realDateOfSale) {
		// Impossible de convertir en LocalDate
		request.setAttribute("errorDateOfSale",
			"doit être au format jj/mm/aaaa");
		validate = false;
	    } else if (realDateOfSale.isBefore(LocalDate.now())) {
		// Date inf. à aujourd'hui
		request.setAttribute("errorDateOfSale",
			"doit être égale ou supérieure à aujourd'hui");
		validate = false;
	    }
	}
	String description = request.getParameter("description");
	if (description == null || description.trim().isEmpty()) {
	    request.setAttribute("errorDescription", "obligatoire");
	    validate = false;
	}
	return validate;
    }

    /**
     * Converti une chaîne en {@code Double} ou lève une exception sans la
     * propager.
     *
     * @return {@code null} si impossible de convertir {@code str} en
     *         {@code Double}
     */
    @SuppressWarnings("unused")
    private static Double convertToDouble(String str) {
	Double result = null;
	try {
	    result = Double.valueOf(str.trim());
	} catch (NumberFormatException ex) {
	    // Ignore
	}
	return result;
    }

    /**
     * Converti une chaîne en {@code LocalDate} ou lève une exception sans la
     * propager.
     *
     * @return {@code null} si impossible de convertir {@code str} en
     *         {@code LocalDate}
     */
    @SuppressWarnings("unused")
    private static LocalDate convertToDate(String str) {
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	LocalDate result = null;
	try {
	    result = LocalDate.parse(str.trim(), formatter);
	} catch (DateTimeParseException ex) {
	    // Ignore
	}
	return result;
    }

    /**
     * Construit une instance de {@code Basket} et assigne toutes les valeurs
     * saisies après conversions.
     * <p>
     * Ne doit être appeler qu'après validation des données.
     *
     * @param request
     *            la requête HTTP avec les valeurs saisies dans le formulaire
     * @return une instance de {@code Basket} pour les valeurs saisies et
     *         récupérées de {@code request}
     */
    private static Basket createBasket(HttpServletRequest request) {
	String code = request.getParameter("code").trim();
	String category = request.getParameter("category");
	String name = request.getParameter("name").trim();
	double price = Double.valueOf(request.getParameter("price").trim());
	double weight = Double.valueOf(request.getParameter("weight").trim());
	String date = request.getParameter("dateOfSale").trim();
	LocalDate dateOfSale = convert(date);
	String description = request.getParameter("description");
	Basket basket = new Basket();
	basket.setCode(code);
	basket.setCategory(category);
	basket.setName(name);
	basket.setPrice(price);
	basket.setWeight(weight);
	basket.setDateOfSale(dateOfSale);
	basket.setDescription(description);
	return basket;
    }

    /**
     * Converti {@code str} en {@code LocalDate}.
     * <p>
     * Ne doit être appeler qu'après validation du champ de saisie
     * correspondant.
     */
    private static LocalDate convert(String str) {
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	return LocalDate.parse(str, formatter);
    }
}
