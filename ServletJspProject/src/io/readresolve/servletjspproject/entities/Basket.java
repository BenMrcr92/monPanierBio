package io.readresolve.servletjspproject.entities;

import java.time.LocalDate;

/**
 * Représente un panier créé par un utilisateur.
 */
public class Basket {

    private String code;

    private String category;

    private String name;

    private Double price;

    private Double weight;

    private LocalDate dateOfSale;

    private String description;

    public Basket() {
	//
    }

    public String getCode() {
	return code;
    }

    public void setCode(String code) {
	this.code = code;
    }

    public String getCategory() {
	return category;
    }

    public void setCategory(String category) {
	this.category = category;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public Double getPrice() {
	return price;
    }

    public void setPrice(Double price) {
	this.price = price;
    }

    public Double getWeight() {
	return weight;
    }

    public void setWeight(Double weight) {
	this.weight = weight;
    }

    public LocalDate getDateOfSale() {
	return dateOfSale;
    }

    public void setDateOfSale(LocalDate dateOfSale) {
	this.dateOfSale = dateOfSale;
    }

    public String getDescription() {
	return description;
    }

    public void setDescription(String description) {
	this.description = description;
    }

    /**
     * Retourne une représentation textuelle de l'objet pour aider à debugger.
     * <p>
     * Cette méthode est appelée par exemple dans un {@code sysout}.
     */
    @Override
    public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("Basket [code=");
	builder.append(code);
	builder.append(", category=");
	builder.append(category);
	builder.append(", name=");
	builder.append(name);
	builder.append(", price=");
	builder.append(price);
	builder.append(", weight=");
	builder.append(weight);
	builder.append(", dateOfSale=");
	builder.append(dateOfSale);
	builder.append(", description=");
	builder.append(description);
	builder.append("]");
	return builder.toString();
    }
}
