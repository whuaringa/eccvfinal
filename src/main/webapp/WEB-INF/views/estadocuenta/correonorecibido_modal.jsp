<!-- MODAL CORREO NO RECIBIDO -->
<div class="modal fade" role="dialog" id="gridModalCorreoNoRec" aria-labelledby="gdridModalCorreoNoRec" tabindex="-1" data-focus-on="input:first">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<!-- <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       		</div> -->
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row" style="display: block; margin: auto;">
						<img src="${est_cuenta}" width="200" height="80" style="margin-left: 75px">
						<p style="margin-top: -19px">..................................................................................</p>
						<p style="text-align: center;">
							<img src="${error}" width="65" height="65">
						</p>
						<p style="text-align: center; font-family: Arial, serif; font-style: normal; color: #7B7B7C; font-size: 135%; font-weight: bold; margin-top: -5px">Lo sentimos,</p>
						<p id="pmensaje" style="text-align: center; font-family: Arial, serif; font-style: normal; color: #7B7B7C; font-size: 135%; font-weight: bold; margin-top: -15px"></p>
					</div>
					<div class="modal-footer" style="margin-top: 5px">
						<button type="button" class="btn btn-default" id="btnokno" style="background-color: #23B35C; color: white; width: 110px; height: 35px; 
								font-size: 115%; font-weight: bold" onclick="okno()">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->