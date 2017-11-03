<%@ include file="/WEB-INF/views/main/include.jsp"%>

<!--<title><fmt:message key="title"/></title>-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<spring:url value="/resources/images/logoCV.ico" var="logo" />
<link rel="shortcut icon" type="image/png" href="${logo}">

<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapMinCSS" />
<spring:url value="/resources/bootstrap/css/bootstrap.css" var="bootstrapCSS" />
<spring:url value="/resources/bootstrap/css/animate.css" var="animateCSS" />
<spring:url value="/resources/bootstrap/css/main.css" var="mainCSS" />
<spring:url value="/resources/bootstrap/css/responsive.css" var="responsiveCSS" />
<spring:url value="/resources/bootstrap/css/font-awesome.min.css" var="awesomeCSS" />
<spring:url value="/resources/sweetalert/sweetalert.css" var="sweetCSS" />
<spring:url value="/resources/bootstrap/css/docs.min.css" var="docsCSS" />
<spring:url value="/resources/bootstrap/form-basic.css" var="basicCSS" />
<spring:url value="/resources/datatable/css/jquery.dataTables.css" var="datatableCSS" />
<spring:url value="/resources/datatable/css/shCore.css" var="shcoreCSS" />
<spring:url value="/resources/datatable/css/dataTables.tableTools.css" var="tableCSS" />

<link rel="stylesheet" type="text/css" href="${bootstrapCSS}" />
<link rel="stylesheet" type="text/css" href="${bootstrapMinCSS}" />
<link rel="stylesheet" type="text/css" href="${animateCSS}" />
<link rel="stylesheet" type="text/css" href="${mainCSS}" />
<link rel="stylesheet" type="text/css" href="${responsiveCSS}" />
<link rel="stylesheet" type="text/css" href="${awesomeCSS}" />
<link rel="stylesheet" type="text/css" href="${sweetCSS}" />
<link rel="stylesheet" type="text/css" href="${docsCSS}" />
<link rel="stylesheet" type="text/css" href="${basicCSS}" />
<link rel="stylesheet" type="text/css" href="${datatableCSS}" />
<link rel="stylesheet" type="text/css" href="${shcoreCSS}" />
<link rel="stylesheet" type="text/css" href="${tableCSS}" />

<spring:url value="http://code.jquery.com/jquery-1.8.2.js" var="jqueryJS" />
<spring:url value="/resources/bootstrap/js/jquery.js" var="jQuery" />
<spring:url value="/resources/bootstrap/js/bootstrap-3.3.2.min.js" var="bootstrapMinJS" />
<spring:url value="/resources/bootstrap/js/bootstrap.js" var="bootstrapJS" />
<spring:url value="/resources/bootstrap/js/main.js" var="mainJS" />
<spring:url value="/resources/sweetalert/sweetalert.min.js" var="sweetJS" />
<spring:url value="/resources/bootstrap/js/docs.min.js" var="docsJS" />
<spring:url value="/resources/bootstrap/js/jquery.scrollUp.min.js" var="scrollJS" />
<spring:url value="/resources/bootstrap/js/jquery.numeric.js" var="numericJS" />
<spring:url value="/resources/datatable/js/jquery.dataTables.min.js" var="datatableJS" />
<spring:url value="/resources/datatable/js/shCore.js" var="shcoreJS" />
<spring:url value="/resources/datatable/js/dataTables.tableTools.min.js" var="tableJS" />

<script type="text/javascript" src="${jqueryJS}"></script>
<script type="text/javascript" src="${jQuery}"></script>
<!--<script type="text/javascript" src="${bootstrapJS}"></script> -->
<script type="text/javascript" src="${bootstrapMinJS}"></script>
<script type="text/javascript" src="${mainJS}"></script>
<script type="text/javascript" src="${sweetJS}"></script>
<script type="text/javascript" src="${docsJS}"></script>
<script type="text/javascript" src="${scrollJS}"></script>
<script type="text/javascript" src="${datatableJS}"></script>
<script type="text/javascript" src="${shcoreJS}"></script>
<script type="text/javascript" src="${tableJS}"></script>

<spring:url value="/resources/sgs_scripts/nuevoexcel.js" var="nuevoExcel" />
<script type="text/javascript" src="${nuevoExcel}"></script>
 
<spring:url value="/resources/css/general.css" var="generalCSS" />
<link rel="stylesheet" type="text/css" href="${generalCSS}" />

<spring:url value="/resources/css/menu.css" var="menuCSS" />
<link rel="stylesheet" type="text/css" href="${menuCSS}" />