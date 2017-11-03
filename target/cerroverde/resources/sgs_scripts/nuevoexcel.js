$(document).ready(function() {
	$("#btnGuardarExcel").click();
});

$("#btnBorrar").on("click", function(){
	$("#cboMes").multiselect("deselectAll", false);
	$("#cboMes").multiselect("select", []);
});

//$("#btnEnviodecorreo1").on("click", function(){
function Enviodecorreo(){
	console.log("ENTROOOO");
	var cboAnio = $("#cboAnio").val();
	var cboMes = $("#cboMes").val();
	
	$("#txtFechas").val(cboAnio + "," + cboMes);
	
	var codTrabajador = document.getElementById("txtCodTrabajador").value;
	var dni = document.getElementById("txtDNI").value;
	var periodo = document.getElementById("txtFechas").value;
	console.log(codTrabajador);
	console.log(dni);
	console.log(periodo);
	console.log(cboAnio + " "+ cboMes);
	
	if(codTrabajador != ""){
		if(dni != ""){
			if(cboAnio != "-1"){
				if(cboMes != null){
					$("#gridModalProducto").modal("show");		
				}else{
					swal("Error" ,"Debe seleccionar meses a consultar","error");
				}				
			}else{
				swal("Error" ,"Debe seleccionar a\u00F1o a consultar","error");
			}		
		}
		else{
			swal("Error" ,"Debe ingresar DNI","error");
		}		
	}
	else{
		swal("Error" ,"Debe ingresar c\u00F3digo de trabajador","error");
	}
	//$("#gridModalCorreoRec").modal("show");	
//});
};

//$("#btnGuardar").on("click", function(){
function enviar(){
	$("#gridModalProducto").modal("hide");		 	
	//$("#gridModalCorreoRec").modal("show");
	var cboAnio = $("#cboAnio").val();
	var cboMes = $("#cboMes").val();
	
	$("#txtFechas").val(cboAnio + "," + cboMes);
	
	var codTrabajador = document.getElementById("txtCodTrabajador").value;
	var dni = document.getElementById("txtDNI").value;
	var periodo = document.getElementById("txtFechas").value;
	console.log(cboAnio + " "+ cboMes);
	var strUrl = window.location.protocol + "//"+window.location.host + "/cerroverde/envia_correo.htm";
	console.log(strUrl);
	var lista = {};
	lista["codtrabajador"] = codTrabajador;
	lista["dni"] = dni;
	lista["periodo"] = periodo;
	$.ajax({
		type : "post",
		url  : strUrl,
		contentType: "application/json",
		//data	: JSON.stringify(lista),
		data	: JSON.stringify({codtrabajador:codTrabajador, dni:dni, periodo:periodo}),
		beforeSend : function(response){
			swal({
				title: "Se est&aacute; enviando su correo, por favor espere",
				text: "<img style='display:block; margin:auto' src = 'resources/images/100.GIF'/>",
				html: true,
				showConfirmButton : false
			})
		},
		success : function(response){	
			swal.close();
			$("#gridModalCorreoRec").modal("show");		
		},
		error : function(jqXHR, exception){	
			swal.close();
			var msg = '';
			if (jqXHR.status == 400) {
	            msg = 'Su correo no pudo ser enviado';
	        } else if (jqXHR.status === 0) {
	            msg = 'No conectado. Por favor verificar su red.';
	        } else if (jqXHR.status == 404) {
	            msg = 'Pagina requerida no encontrada. [404]';
	        } else if (jqXHR.status == 500) {
	            msg = 'Error del servidor interno [500].';
	        } else if (exception === 'parsererror') {
	            msg = 'Falló en parseo de JSON.';
	        } else if (exception === 'timeout') {
	            msg = 'Su consulta se encuentra fuera de tiempo.';
	        } else if (exception === 'abort') {
	            msg = 'Ajax request aborted.';
	        }/* else {
	            msg = 'Uncaught Error.\n' + jqXHR.responseText;
	        }*/
			document.getElementById("pmensaje").innerHTML = msg;
			console.log(msg);
			//alert(msg);
			$("#gridModalCorreoNoRec").modal("show");		
			//swal("Error",msg,"error");
			
	
		/*error : function(response){
			swal.close();
			swal("Cancelado", response.ls_mensajeserver, "error");
		*/}, 
		complete: function(){
			$('#listBodyMovimiento1').dataTable().fnClearTable();	
			$("#frmestadoCuenta")[0].reset();
			$("#btnBorrar").click();
			//$(".cbomes option").prop('selected', false).trigger('chosen:updated');
			//$("#btnBorrar").click();
		}

	});
//});
}

//$("#btnok").on("click", function(){
function ok(){
	$("#gridModalCorreoRec").modal("hide");		
//})
}


//$("#btnokno").on("click", function(){
function okno(){
	$("#gridModalCorreoNoRec").modal("hide");		
//})
}
