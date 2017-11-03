<%@ include file="/WEB-INF/views/main/include.jsp"%>

<spring:url value="/resources/images/barra.jpg" var="barra" />

<header>
	<div class="header-middle" style='background-image: url("${barra}")'>
		<div class="container">
			<div class="col-sm-12">
				<div class="col-md-1"></div>
				<div class="shop-menu pull-left bienvenido">
					<ul class="nav navbar-nav" style="color: white; margin-top: 5px;">
						<li><font>Bienvenido(a) : CERRO VERDE</font></li>	
					</ul>
				</div>
				<div class="col-md-6"></div>
				<div class="shop-menu pull-right salir">
					<ul class="nav navbar-nav" style="color: white; ">
						<li><a href="<c:url value="/logout.htm"/>" type="" style="background-color: inherit; color: white;">Salir</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>

<script>
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
	
	$("#cboMes").prop('disabled', false);
	
	//$("#cboMes").multiselect("select", []);
	
	/*$('#btnget').click(function() {
	 alert($('#chkveg').val());
	})*/
});
</script>

