<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'input_user.jsp' starting page</title>

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
	<div>请输入用户：</div>
	<div>
		<form id="subUserForm">
			<input type="text" name="userInfo.id" id="id" /> <input type="text"
				name="userInfo.name" id="name" />
		</form>
	</div>
	<div>
		<input id="addUser" type="button" value="添加" /> <input id="users"
			type="button" value="所有用户" /> <a
			href="/test/load_allUser_jump.action">所有用户：非异步方式</a> <input id="msg"
			type="button" value="hello" /> <input id="msgUserInfo" type="button"
			value="userInfo" /> <input id="msgUserInfoList" type="button"
			value="userInfoList" />
	</div>
	<div id="allUser">input_user:</div>
</body>	
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="assets/js/myJs.js"></script>
</html>
