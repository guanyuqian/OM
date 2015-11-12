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

<!-- Basic -->

<base href="<%=basePath%>">
<title>Register | Nadhif - Responsive Admin Template</title>

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

</head>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="assets/js/register-jquery.js"></script>


<body onload="setup();">
	<!-- Start: Content -->
	
	<div class="container-fluid content">
		<div class="row">
			<!-- Main Page -->
			<div class="body-register">
				<div class="center-register">
					<a href="#" class="logo pull-left hidden-xs"> <img
						src="assets/img/logo.png" height="45" alt="NADHIF Admin" />
					</a>

					<div class="panel panel-register">
						<div class="panel-title-register text-right">
							<h2 class="title text-uppercase">
								<i class="fa fa-user"></i> 注册
							</h2>
						</div>

						<div class="panel-body">
							<s:form method="post" id="formcheck" action="buildOM">

								<div class="form-group">
									<div class="row ">
										<div id="tip" class="col-sm-6">

											<label>集体名：</label>
											<s:textfield name="om.omName" id="omName"
												cssClass=" form-control"></s:textfield>
										</div>
										<div class="col-sm-6">
											<label>集体账户：</label>
											<s:textfield name="om.omBank" placeholder="支付宝账户" id="bank"
												cssClass="form-control "></s:textfield>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6">
											<label>密码：</label>
											<s:password name="uniPassword" id="password1"
												cssClass="form-control"></s:password>
										</div>
										<div class="col-sm-6">
											<label>确认密码：</label>
											<s:password name="uniPassword" id="password2"
												cssClass="form-control "></s:password>
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="col-md-3">
										<h5>所属地区:</h5>
									</div>
									<div class="col-md-3">
										<select class="select form-control" name="om.omProvince"
											id="s1">
											<option>请选择省</option>
										</select>
									</div>
									<div class="col-md-3">
										<select class="select form-control" name="om.omCity" id="s2">
											<option>请选择市</option>
										</select>
									</div>
									<div class="col-md-3">
										<select class="z form-control" name="om.Town" id="s3"
											onchange="getTown()">
											<option>请选择区县</option>
										</select>
									</div>

								</div>
								<br />
								<br />
								<br />
								<div >
								<div class="col-md-3">
								<h5>街道地址:</h5>
								</div>
								<div class="col-md-9">
									<s:textfield  name="om.omLocation" id=""
										cssClass=" form-control"></s:textfield>
								</div>
								</div>

								<br />
								<br />
								<br />

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6">
											<label>集体规模：</label>
											<s:textfield name="om.headcount" placeholder="如：50" id="num"
												cssClass="form-control"></s:textfield>
										</div>
										<div class="col-sm-6">
											<label>超级管理员人数：</label>
											<s:textfield name="superManagerCount" id="num1" value="1"
												cssClass="form-control "></s:textfield>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6">
											<label>账户管理员人数：</label>
											<s:textfield name="financeManagerCount"
												cssClass="form-control"></s:textfield>
										</div>
										<div class="col-sm-6">
											<label>普通管理员人数：</label>
											<s:textfield name="managerCount" cssClass="form-control "></s:textfield>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label>集体描述：</label>
									<s:textarea name="om.omDes" placeholder="可以留下你们的介绍、格言哦"
										cssClass="form-control" cols="40" rows="5"></s:textarea>
								</div>
								<div class="row">
									<div class="col-sm-8">
										<div class="checkbox-custom checkbox-default">
											<input id="AgreeTerms" name="agreeterms" type="checkbox" />
											<label for="AgreeTerms">I agree with <a href="#"><small>terms
														of use</small></a></label>
										</div>
									</div>
									<div class="col-sm-4 text-right">
										<button type="submit" id="register"
											class="btn btn-primary hidden-xs bk-margin-top-10">注册</button>
										<button href="index.html" type="submit"
											class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-10">注册</button>
									</div>
								</div>
								<p class="text-center">
									Already have an account? <a href="login.jsp"><big>Login!</big></a>
							</s:form>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Page -->
		</div>
	</div>

	<!--/container-->


	<!-- start: JavaScript-->

	<!-- Vendor JS-->
	<script src="assets/vendor/js/jquery.min.js"></script>
	<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/skycons/js/skycons.js"></script>

	<!-- Plugins JS-->

	<!-- Theme JS -->
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
	<script src="assets/js/area.js"></script>
	<!-- Pages JS -->
	<script src="assets/js/pages/page-register.js"></script>

	<!-- end: JavaScript-->

</body>

</html>
