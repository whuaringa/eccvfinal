function nobackbutton(){
	 window.location.hash="no-back-button";
	 window.location.hash="Again-No-back-button"//chrome
	 window.onhashchange=function(){window.location.hash="no-back-button";}
	 window.history.forward(1);
 }
 window.history.forward(1);

/*
function valida(e) {
	tecla = (document.all) ? e.keyCode : e.which;

	//Tecla de retroceso para borrar, siempre la permite
	if (tecla == 8) {
		return true;
	}

	// Patron de entrada, en este caso solo acepta numeros
	patron = /[0-9]/;
	tecla_final = String.fromCharCode(tecla);
	return patron.test(tecla_final);

}
$(function() {
	$("#cboMes").multiselect({
		includeSelectAllOption : true
	});
});
*/