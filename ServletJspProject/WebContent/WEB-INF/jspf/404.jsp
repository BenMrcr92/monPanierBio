<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<!-- Déclaration de l'icone affichee dans l'onglet du navigateur a cote du titre,
 ne sert a rien mais c'est marrant ! -->
<link rel="icon" type="image/png" href="images/favicon.png" />
<title>monpanierbio.com (404)</title>
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
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="nav navbar-nav">
			<span class="navbar-brand text-info">monpanierbio.com</span>
			<li class="nav-item"><a data-toggle="tooltip" data-placement="bottom" class="nav-link" href="welcome" title="Accueil">Accueil</a></li>
			<li class="nav-item"><a data-toggle="tooltip" data-placement="bottom" class="nav-link" href="goToCreateProduct" title="Créer un panier">Créer un panier</a></li>
		</ul>
	</nav>
	<div class="container-fluid">
		<section>
			<h1 class="text-primary">Ooops ! Erreur 404 !</h1>
			<p>Vous avez demandez une <strong>ressource qui n'existe pas</strong> ou bien vous êtes le développeur de ce site et avez commis une <strong>erreur de configuration</strong>...</p>
			<img src="images/error.jpg" alt="Erreur 404" class="img-fluid mx-auto d-block">
			<p class="text-center">&quot;Sauf erreur, je ne me trompe jamais.&quot; Alexandre Vialatte.</p>
		</section>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item"><a data-toggle="tooltip" data-placement="right" class="nav-link" href="#TOP" title="Retour en haut de la page">Haut de page</a></li>
		</ul>
	</nav>
</body>
</html>