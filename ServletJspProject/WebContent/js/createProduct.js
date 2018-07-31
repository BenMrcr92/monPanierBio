$(function() {
	
	/* Action jQuery pour générer le datepicker specifique de la date de vente grâce au selecteur #DATEOFSALE */
	$("#DATEOFSALE").datepicker({
		minDate : new Date(),
		changeMonth : true,
		changeYear : true
	});

});