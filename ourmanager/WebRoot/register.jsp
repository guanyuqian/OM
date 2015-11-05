<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'register.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	This is my JSP page.
	<br>
	<s:form action="buildOM" method="post">
		<table border="0">

			<tr>
				<td></td>
				omname:<td><s:textfield name="om.omName"></s:textfield></td>
			</tr>
			<tr>
				<td>headcount:</td>
				<td><s:textfield name="om.headcount"></s:textfield></td>
			</tr>
			<tr>
				<td>uniPassword:</td>
				<td><s:password name="uniPassword"></s:password></td>
			<tr>
				<td>superManagerCount:</td>
				<td><s:textfield name="superManagerCount"></s:textfield></td>
			</tr>
			<tr>
				<td>financeManagerCount:</td>
				<td><s:textfield name="financeManagerCount"></s:textfield></td>
			</tr>
			<tr>
				<td>managerCount:</td>
				<td><s:textfield name="managerCount"></s:textfield></td>
			</tr>
			<tr>
				<td><s:submit></s:submit></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
