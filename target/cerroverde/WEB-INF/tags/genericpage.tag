<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="header" fragment="true"%>

<!DOCTYPE html>
<html>
	<head>
		<jsp:invoke fragment="head" />
	</head>
	<body onload="nobackbutton()">
		<div class="container" style="width:1280px;">
			<div class="row">
				<jsp:invoke fragment="header" />
				<div style="width:1280px;" id="divContenedor">
					<jsp:doBody />
				</div>
			</div>
		</div>
	</body>
</html>