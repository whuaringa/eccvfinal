<!-- MODAL CONFIRMA CORREO -->
<div class="modal fade" role="dialog" id="gridModalProducto" aria-labelledby="gdridModalProducto" tabindex="-1"	data-focus-on="input:first">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<!-- <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       		</div> -->
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row" style="display: block; margin-left: auto; margin-right: auto;">
						<img class="estadcu" src="${est_cuenta}" width="200" height="80">
						<p style="margin-top: -19px">..................................................................................</p>
						<div style="display: block; margin: auto;">
							<img class="send-email" src="${send_email}" width="119" height="70">
						</div>
						<p style="text-align: center; font-family: Arial, serif; font-style: normal; color: #7B7B7C; font-size: 135%; font-weight: bold; margin-top: -8px">Tu estado de cuenta</p>
						<p style="text-align: center; font-family: Arial, serif; font-style: normal; color: #7B7B7C; font-size: 135%; font-weight: bold; margin-top: -15px">será enviado a tu correo electrónico</p>
					</div>
					<div class="modal-footer" style="margin-top: 5px">
						<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #D0D0D0; color: white; width: 110px; height: 35px; 
								font-size: 115%; font-weight: bold;">Cancelar</button>
						<button type="button" class="btn btn-default" id="btnGuardar" style="background-color: #23B35C; color: white; width: 110px; height: 35px; 
								font-size: 115%; font-weight: bold" onclick="enviar()">Aceptar</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->