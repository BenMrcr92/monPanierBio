<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<!-- Déclaration de l'icone affichee dans l'onglet du navigateur a cote du titre,
 ne sert a rien mais c'est marrant ! Le "type" doit correspondre au vrai type de l'image utilisee -->
<link rel="icon" type="image/png" href="images/favicon.png" />
<title>monpanierbio.com</title>
<!-- Le viewport indique au navigateur comment afficher la page en termes de zoom et d'echelle, utile pour les navigateurs sur smartphones -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Declaration des CSS externes -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- Declaration des JS externes -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<!-- Declaration des CSS internes apres les CSS externes pour permettre de redefinir des styles -->
<link rel="stylesheet" type="text/css" href="css/styles.css">
<!-- Declaration des JS internes apres les JS externes qui sont des dependances -->
<script src="js/scripts.js"></script>
<script src="js/createProduct.js"></script>
</head>
<body>
	<span id="TOP"></span>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="nav navbar-nav">
			<span class="navbar-brand text-info">monpanierbio.com</span>
			<li class="nav-item"><a data-toggle="tooltip" data-placement="bottom" class="nav-link" href="welcome" title="Accueil">Accueil</a></li>
			<li class="nav-item"><a data-toggle="tooltip" data-placement="bottom" class="nav-link" href="goToCreateProduct" title="Créer un panier">Créer un panier</a></li>
		</ul>
	</nav>
	<div class="container-fluid">
		<section>
			<h1 class="text-primary">Créer un panier</h1>
			<c:if test="${null != success}">
				<!-- Afficher uniquement si un message succes est disponible comme attribut de la request
				c'est specifie lors de la validation du formulaire  -->
				<div class="alert alert-success alert-dismissible fade show">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>${success}</strong>
				</div>
			</c:if>
			<form action="createProduct" method="POST">
				<div class="form-group">
					<label for="CODE">Code du panier<c:if test="${null != errorCode}"> <span class="text-danger">(${errorCode})</span></c:if></label>
					<input id="CODE" type="text" name="code" value="${param.code}" class="form-control" placeholder="Entrer un code" autocomplete="off" autofocus="autofocus">
				</div>
				<div class="form-group">
					<label for="CATEGORY">Catégorie de panier<c:if test="${null != errorCategory}"> <span class="text-danger">(${errorCategory})</span></c:if></label>
					<select id="CATEGORY" name="category" class="form-control">
						<!-- Option par defaut si aucun element (option) n'a ete selectionne par l'utilisateur -->
						<option value="0">Choisir une catégorie</option>
						<!-- On teste pour chaque option si une a deja ete selectionnee par l'utilisateur, si oui
						on ajoute selected="selected", sinon on affiche l'option normalement -->
						<c:if test="${param.category eq 'A'}">
							<option value="A" selected="selected">Légumes verts</option>
						</c:if>
						<c:if test="${param.category ne 'A'}">
							<option value="A">Légumes verts</option>
						</c:if>
						<c:if test="${param.category eq 'B'}">
							<option value="B" selected="selected">Légumes rouges</option>
						</c:if>
						<c:if test="${param.category ne 'B'}">
							<option value="B">Légumes rouges</option>
						</c:if>
						<c:if test="${param.category eq 'C'}">
							<option value="C" selected="selected">Légumes arlequins</option>
						</c:if>
						<c:if test="${param.category ne 'C'}">
							<option value="C">Légumes bariolés</option>
						</c:if>
					</select>
				</div>
				<div class="form-group">
					<label for="NAME">Nom du panier<c:if test="${null != errorName}"> <span class="text-danger">(${errorName})</span></c:if></label>
					<input id="NAME" type="text" name="name" value="${param.name}" class="form-control" placeholder="Entrer un nom de panier" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="PRICE">Prix du panier<c:if test="${null != errorPrice}"> <span class="text-danger">(${errorPrice})</span></c:if></label>
					<input id="PRICE" type="text" name="price" value="${param.price}" class="form-control" placeholder="Entrer un prix" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="WEIGHT">Poids du panier<c:if test="${null != errorWeight}"> <span class="text-danger">(${errorWeight})</span></c:if></label>
					<input id="WEIGHT" type="text" name="weight" value="${param.weight}" class="form-control" placeholder="Entrer un poids" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="DATEOFSALE">Date de mise en vente du panier<c:if test="${null != errorDateOfSale}"> <span class="text-danger">(${errorDateOfSale})</span></c:if></label>
					<input id="DATEOFSALE" type="text" name="dateOfSale" value="${param.dateOfSale}" class="form-control" placeholder="jj/mm/yyyy" autocomplete="off">
				</div>
				<div class="form-group">
					<label for="DESCRIPTION">Description du panier<c:if test="${null != errorDescription}"> <span class="text-danger">(${errorDescription})</span></c:if></label>
					<textarea id="DESCRIPTION" name="description" class="form-control" rows="10" placeholder="Entrer une description" autocomplete="off">${param.description}</textarea>
				</div>
				<button type="reset" class="btn btn-primary mb-3">Réinitialiser</button>
				<button type="submit" class="btn btn-primary mb-3">Créer</button>
			</form>
		</section>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item"><a data-toggle="tooltip" data-placement="right" class="nav-link" href="#TOP" title="Retour en haut de la page">Haut de page</a></li>
		</ul>
	</nav>
</body>
</html>