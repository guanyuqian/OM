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

<title>My JSP 'feedback.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


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
<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>
<script src="assets/js/jquery-1.7.1.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<script>
	$(document).ready(function() {

		var id_count = <s:property value="om.omid" />;
		var superManager_count = <s:property value="superManagerCount" />;
		var financeManage_count = <s:property value="financeManagerCount" />;
		var manager_count = <s:property value="managerCount" />;
		var member_count = <s:property value="om.headcount" />;

		var first = id_count * 1000+1;
		var second = first + superManager_count-1;
		var first1 = second + 1;
		var second1 = first1 + financeManage_count-1;
		var first2 = second1 + 1;
		var second2 = first2 + manager_count-1;
		var first3 = second2+1;
		var second3 = first+member_count-1;

		var x_Manager = first + '～'  + second;
		var l_Manager = first1 + '～' + second1;
		var m_Manager = first2 + '～' + second2;
		var s_Manager = first3 + '～' + second3;
         
		if(first==second){
			$("#xl").html(first);
		}
		else{
			$("#xl").html(x_Manager);
		}
		if(financeManage_count==0){
			$("#ll").html("");
		}
		else 
			if(financeManage_count==1){
			$("#ll").html(first1);
		}
			else{
				$("#ll").html(l_Manager);
				}
		
		if(manager_count==0){
			$("#mm").html("");
		}
		else 
			if(manager_count==1){
			$("#mm").html(first2);
		}
			else{
				$("#mm").html(m_Manager);
				}
		
		
		$("#ss").html(s_Manager);

	});
</script>

</head>
<body>
	<div class=col-lg-3></div>
	<div class="col-lg-5">
		<div class="panel-heading bk-bg-primary">
			<h4>
				<div class="col-lg-4"></div>
				<i class="fa fa-exclamation"></i><span class="break"></span>您已注册成功
			</h4>
		</div>
		<div class="panel bk-bg-white">
			<div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>权限级别</th>
									<th>账号</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>超级管理员</td>
									<td><label id="xl"></label></td>
								</tr>
								<tr>
									<td>财务管理员</td>
									<td><label id="ll"></label></td>
								</tr>
								<tr>
									<td>管理员</td>
									<td><label id="mm"> </label></td>
								</tr>
								<tr>
									<td>普通成员</td>
									<td><label id="ss"></label></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div>
						<div class="well">
							<p class="text-left">注：</p>
							以上是您的集体的账号分配，初始密码为您的注册密码，请所有成员在登录后修改密码完善信息，以确保你的账号安全。
						</div>
					</div>
				</div>
				<div class="col-lg-6"></div>
				<center>
					<button href="login.jsp" class="btn btn-primary hidden-xs">点此跳转到登录页面</button>
				</center>
				<center>
					<button href="login.jsp"
						class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-10">点此跳转到登录页面</button>
				</center>
				<div>
					<div class="text-with-hr">
						<span>--</span>
					</div>
				</div>

			</div>
		</div>

	</div>


</body>
</html>
