<%@include file="/WEB-INF/views/main/include.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
	<jsp:attribute name="head">
      <%@ include file="/WEB-INF/views/estadocuenta/headEC.jsp"%>
    </jsp:attribute>
    <jsp:attribute name="header">
      <%@ include file="/WEB-INF/views/estadocuenta/headerEC.jsp"%>
    </jsp:attribute>
	<jsp:body>
		<section class="bodyfont">
			<div class="bodyfont1">
				<form action="frmestadoCuenta" class="form-ec" id="frmestadoCuenta">
					<div class="form-log-in-with-ec">
						<div class="form-row" style="margin-top: 30px;">
							<label><span>Código de Trabajador</span>
								<input type="text" name="codtrabajador" placeholder="Código de Trabajador" id="txtCodTrabajador" maxlength="10" value = "${model.codtrabajador}">
							</label>
						</div>
						<div class="form-row">
							<label><span>DNI</span> <input type="text" onkeypress="return valida(event)" maxlength="8" placeholder="DNI" id="txtDNI" name="dni" value="${model.dni}"> </label>
						</div>
						<div class="form-row">
							<label><span> Periodo de Estado de Cuenta</span></label>
							<select name="seleccionaAnio" id="cboAnio" class="form-basicEC">
								<option value="-1">Año</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
							</select>
							<select id="cboMes" multiple="multiple">
								<option value="01">Enero</option>
								<option value="02">Febrero</option>
								<option value="03">Marzo</option>
								<option value="04">Abril</option>
								<option value="05">Mayo</option>
								<option value="06">Junio</option>
								<option value="07">Julio</option>
								<option value="08">Agosto</option>
								<option value="09">Septiembre</option>
								<option value="10">Octubre</option>
								<option value="11">Noviembre</option>
								<option value="12">Diciembre</option>
							</select>
						</div>

						<div class="form-row">
							<div class="divButton btnboton">
								<button type="button" class="btn btn-success btn-xs btn-block vamos"
										id="btnEnviodecorreo1" style="margin-left: 210px; height: 28px" onclick="Enviodecorreo()">ENVIAR SOLICITUD</button>
								<button type="button" class="btn btn-success btn-xs btn-block"
										id="btnGuardarExcel" style="display: none;" disabled>Guardar Excel</button>
								<button type="button" class="btn btn-success btn-xs btn-block"
										id="btnBorrar" style="display: none;" onclick="LimpiaForm()" >Borrar</button>
							</div>
							<div class="input-group input-group-xs">
								<input type="hidden" class="form-control input-sm" placeholder="Fechas" id="txtFechas"/>
							</div>
						</div>
					</div>
				</form>

				<div class="form-basic-new letraPie" style="visibility: visible; margin-top: 20px;">
					<div style="margin-top: 60px">
						<p class="mediawork">*Si no recibes un correo electrónico con
							tu estado de cuenta, por favor comunícate con el área de Bienestar
							Organizacional para actualizar tu correo.</p>
						<p class="mediawork1"><span style="background-color:#FFFF99;">Solo podrás revisar tu estado de cuenta
							a partir de Abril del 2016</span></p>
					</div>
					<div style="margin-top: 140px;margin-left: -100px;">
						<img alt="" src="${pieEC}" class="pieEC">
					</div>
				</div>
				<%@include file="/WEB-INF/views/estadocuenta/confirmacorreo_modal.jsp"%>
				<%@include file="/WEB-INF/views/estadocuenta/correorecibido_modal.jsp"%>
				<%@include file="/WEB-INF/views/estadocuenta/correonorecibido_modal.jsp"%>
			</div>
		</section>
	</jsp:body>
</t:genericpage>