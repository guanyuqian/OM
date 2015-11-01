<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">


<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Import google fonts -->
<link
	href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/ico/apple-touch-icon-152x152.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Plugins CSS-->

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<style>
footer {
	display: none;
}
</style>

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->






<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<jsp:include page="head.jsp" flush="true"></jsp:include>
	<jsp:include page="leftJsp.jsp"></jsp:include>

</head>

<body>

	
	<br>
	<jsp:include page="head.jsp"></jsp:include>
	<jsp:include page="leftJsp.jsp"></jsp:include>

	<s:form action="Update" method="post">
		<table border="0">


	
			<tr>
				<td>username:</td>
				<td><s:textfield name="user.userName" value="%{#session.user.userName}"> </s:textfield></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><s:textfield name="user.userEmail" value="%{#session.user.userEmail}"></s:textfield></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><s:textfield name="user.userSex" value="%{#session.user.userSex}"></s:textfield></td>
			</tr>
			<tr>
				<td>Moto:</td>
				<td><s:textfield name="user.userMoto" value="%{#session.user.userMoto}"></s:textfield></td>
			</tr>
			<tr>
				<td>Hometown:</td>
				<td><s:textfield name="user.userHometown" value="%{#session.user.userHometown}"></s:textfield></td>
			</tr>
			<tr>
				<td>Location:</td>
				<td><s:textfield name="user.userLocation" value="%{#session.user.userLocation}"></s:textfield></td>
			</tr>
			<tr>
				<td>Job:</td>
				<td><s:textfield name="user.userJob" value="%{#session.user.userJob}"></s:textfield></td>
			</tr>
			<tr>
				<td>Birthday:</td>
				<td><s:textfield name="user.userBirthday" value="%{#session.user.userBirthday}"></s:textfield></td>
			</tr>
			<tr>
				<td>Age:</td>
				<td><s:textfield name="user.userAge" value="%{#session.user.userAge}"></s:textfield></td>
			</tr>

			<tr>
				<td><s:submit value="保存"></s:submit></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
