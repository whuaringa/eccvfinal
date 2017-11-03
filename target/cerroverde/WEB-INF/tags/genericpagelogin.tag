<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<%@attribute name="contentheader" fragment="true"%>

<!DOCTYPE html>
<html>
	<head>
		<jsp:invoke fragment="head" />
	</head>
	<body>
		<jsp:doBody />
	</body>
</html>