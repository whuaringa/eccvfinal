<%@include file="/WEB-INF/views/main/include.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpagelogin>
	<jsp:attribute name="head">
      <%@ include file="/WEB-INF/views/main/head.jsp"%>
      <%@ include file="/WEB-INF/views/login/headLogin.jsp"%>
    </jsp:attribute>
    <jsp:body>
    	<section class="imagenFondo">
			<div class="imagenMobile">
				<div class="imagenNro">
					<form class="form-login" role="form" action="<c:url value="estadocuenta.htm"/>" method="POST" id="frm" >
						<div class="form-log-in-with-email">
							<div class="form-row " style="margin-top: 30px;">
								<label> <span>Codigo del Trabajador</span> <input
									type="text" id="txtcodtrabalog" name="codtrabajador"
									required />
								</label>
							</div>
							<div class="form-row ">
								<label> <span>DNI o Carné</span> <input type="text"
									id="txtdnilog" name="dni" required />
								</label>
							</div>
						</div>
						<div class="buttonLogin">
							<button value="Entrar" type="submit" id="btningresar"
								style="margin-top: 13px; color: white; background-color: green; width: 140px; height: 40px; margin-left: 170px; font-size: 20px">
								<b>Ingresar</b>
							</button>
						</div>
					</form>
					<br><br><br><br>
				</div>
			</div>
		</section>
		<br>
    </jsp:body>
</t:genericpagelogin>