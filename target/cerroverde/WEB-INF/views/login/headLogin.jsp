<%@ include file="/WEB-INF/views/main/include.jsp"%>

<meta name="description" content="">
<meta name="author" content="">
<title>Login | Cerro-Verde</title>

<spring:url value="/resources/bootstrap/js/html5shiv.js" var="html5JS" />
<spring:url value="/resources/bootstrap/form-login.css" var="loginCSS" />

<script type="text/javascript" src="${html5JS}"></script>
<link rel="stylesheet" type="text/css" href="${loginCSS}" />

<!--<sj:head jqueryui="false" />-->

<!--<spring:url value="/resources/images/EstadoLogo.jpg" var="EstadoLogo" />
<spring:url value="/resources/images/LoginMobile.jpg" var="LoginMobile" />
<spring:url value="/resources/images/LoginMobileNro.jpg" var="LoginMobileNro" />-->

<spring:url value="/resources/css/login.css" var="myLoginCSS" />
<link rel="stylesheet" type="text/css" href="${myLoginCSS}" />