$(function() {
	/* Action jQuery pour générer les tooltip grâce à l'attribut data-toggle, le texte affiche est dans l'attribut title de la balise du lien */
	$('[data-toggle="tooltip"]').tooltip();

	/* Régionalisation des datepicker */
	$.datepicker.regional['fr'] = {
		closeText : 'Fermer',
		prevText : '&#x3c;Préc',
		nextText : 'Suiv&#x3e;',
		currentText : 'Aujourd\'hui',
		monthNames : [ 'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin','Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre','Décembre' ],
		monthNamesShort : [ 'Jan', 'Fév', 'Mar', 'Avr', 'Mai', 'Jui', 'Jul','Aoû', 'Sep', 'Oct', 'Nov', 'Déc' ],
		dayNames : [ 'Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi','Vendredi', 'Samedi' ],
		dayNamesShort : [ 'Dim', 'Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam' ],
		dayNamesMin : [ 'Di', 'Lu', 'Ma', 'Me', 'Je', 'Ve', 'Sa' ],
		weekHeader : 'Sm',
		dateFormat : 'dd/mm/yy',
		firstDay : 1,
		isRTL : false,
		showMonthAfterYear : false,
		yearSuffix : ''
	};
	
	/* Application de la régionalisation par défaut dans tous les datepicker
	   de l'application. */
	$.datepicker.setDefaults($.datepicker.regional['fr']);

});