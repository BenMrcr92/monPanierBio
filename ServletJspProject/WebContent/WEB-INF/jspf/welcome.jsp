<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<!-- Déclaration de l'icone affichee dans l'onglet du navigateur a cote du titre,
 ne sert a rien mais c'est marrant ! -->
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
			<h1 class="text-primary">Accueil administration</h1>
			<p>Bonjour, nous sommes le <fmt:formatDate value="${today}" pattern="dd/MM/yyyy" /></p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque blandit ex id tincidunt commodo. Vestibulum mauris ligula, vulputate fermentum risus vel, dapibus rhoncus orci. Nullam urna quam, finibus vel sagittis at, pellentesque sed neque. Suspendisse eget eleifend elit, in condimentum
				augue. Nulla vel elementum justo. Vivamus cursus dignissim mi. Etiam ornare urna a tempor aliquam. Fusce dignissim leo eget lacus elementum, vitae consectetur dui dignissim. Aliquam sit amet nisl sit amet sapien aliquam lobortis. Curabitur eget cursus sem.</p>
			<img src="images/panier-legumes.jpg" alt="Nos lÃ©gumes" class="img-fluid mx-auto d-block">
			<p>Praesent et sem vitae ipsum blandit dictum rutrum non ipsum. Mauris non sapien sit amet urna pulvinar porttitor ac eget odio. Sed elit augue, ultrices fringilla ex quis, tristique tempor felis. Cras interdum, est id porttitor tempus, lorem est scelerisque odio, ac iaculis libero quam eget
				enim. Etiam pulvinar, dolor a convallis bibendum, lacus elit facilisis velit, pellentesque lobortis risus nibh non ipsum. Pellentesque vel cursus justo. Ut in interdum libero. Nulla tincidunt sem vel enim cursus accumsan. Nulla facilisi. In condimentum ligula sed odio ornare tempor. Duis eu
				tellus id metus pulvinar accumsan. Vivamus at nulla fermentum, viverra massa quis, vulputate urna. Fusce sodales eu augue nec maximus. Aliquam eros diam, egestas iaculis felis pretium, venenatis dignissim felis. Ut vel orci pretium, ultrices sem pretium, sollicitudin nunc. Proin vitae purus
				condimentum, ullamcorper urna nec, eleifend libero.</p>
			<p>Maecenas est tortor, feugiat id nisl ut, facilisis congue velit. Mauris imperdiet luctus est, eget rutrum est ornare in. Praesent vitae dui rhoncus, rutrum lacus at, sagittis eros. Cras scelerisque, massa sed eleifend bibendum, justo leo sagittis sapien, eget auctor sapien ligula sit amet
				sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi nisl urna, fringilla vel quam quis, suscipit hendrerit tellus. Nam in porta mauris. Proin ullamcorper, nisl nec aliquet mattis, nisi ante tristique elit, sit amet cursus risus lectus a nibh.
				Phasellus tempus libero vel justo condimentum interdum. Pellentesque consectetur, mauris vitae porta finibus, ipsum nunc sollicitudin nibh, eu molestie enim arcu sit amet eros. Donec porttitor, ex sit amet posuere vehicula, quam enim vulputate turpis, sit amet efficitur dolor lorem in nisl.
				Donec sed ornare dui. Proin nisi metus, blandit sit amet arcu sit amet, pulvinar venenatis tortor.</p>
		</section>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item"><a data-toggle="tooltip" data-placement="right" class="nav-link" href="#TOP" title="Retour en haut de la page">Haut de page</a></li>
		</ul>
	</nav>
</body>
</html>