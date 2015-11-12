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
								<i class="fa fa-user"></i> 宿舍信息
							</h2>
						</div>

						<div class="panel-body">
							<s:form action="updateOM" method="post">

								<div class="form-group">
									<div class="row ">
										<div id="tip" class="col-sm-6">

											<label>集体名：</label>
											<s:textfield name="om.omName" id="omName"
												cssClass=" form-control" value="%{#session.om.omName}"></s:textfield>
										</div>

										<div class="col-sm-6">
											<label>集体账户：</label>
											<s:textfield name="om.omBank" placeholder="支付宝账户" id="bank"
												cssClass="form-control " value="%{#session.om.omBank}"></s:textfield>
										</div>
									</div>
								</div>



								<div class="form-group">
									<div class="col-md-3">
										<h5>所属地区:</h5>
									</div>
									<div class="col-md-3">
										<select class="select form-control" name="province" id="s1">
											<option>请选择省</option>
										</select>
									</div>
									<div class="col-md-3">
										<select class="select form-control" name="city" id="s2">
											<option>请选择市</option>
										</select>
									</div>
									<div class="col-md-3">
										<select class="z form-control" name="town" id="s3"
											onchange="getTown()">
											<option>请选择区县</option>
										</select>
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
												cssClass="form-control" value="%{#session.om.headcount}"></s:textfield>
										</div>

									</div>
								</div>


								<div class="form-group">
									<label>集体描述：</label>
									<s:textarea name="om.omDes" placeholder="可以留下你们的介绍、格言哦"
										cssClass="form-control" cols="40" rows="5" value="%{#session.om.omDes}"></s:textarea>
								</div>



								<br />
								<div class="bk-margin-bottom-10 bk-margin-top-10 text-center">
									<a href="#" class="fa fa-facebook facebook-bg"></a> <a href="#"
										class="fa fa-twitter twitter-bg"></a> <a href="#"
										class="fa fa-linkedin linkedin-bg"></a>
								</div>
								<br />
								<p class="text-center">
									Already have an account? <a href="page-login.html"><small>Login!</small></a>
								</p>
								<s:submit></s:submit>
							</s:form>
						</div>
					</div>
				</div>
				<!-- End Main Page -->

				<!-- Usage -->
				<div id="usage-blank">
					<ul>
						<li>
							<div class="title">Memory</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="50" aria-valuemin="0"
										aria-valuemax="100" style="width: 50%"></div>
								</div>
							</div>
							<div class="desc">4GB of 8GB</div>
						</li>
						<li>
							<div class="title">HDD</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-primary"
										role="progressbar" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100" style="width: 40%"></div>
								</div>
							</div>
							<div class="desc">250GB of 1TB</div>
						</li>
						<li>
							<div class="title">SSD</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-warning"
										role="progressbar" aria-valuenow="70" aria-valuemin="0"
										aria-valuemax="100" style="width: 70%"></div>
								</div>
							</div>
							<div class="desc">700GB of 1TB</div>
						</li>
						<li>
							<div class="title">Bandwidth</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-danger"
										role="progressbar" aria-valuenow="90" aria-valuemin="0"
										aria-valuemax="100" style="width: 90%"></div>
								</div>
							</div>
							<div class="desc">90TB of 100TB</div>
						</li>
					</ul>
				</div>
				<!-- End Usage -->

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
		<script type="text/javascript">
			//这个函数是必须的，因为在area.js里每次更改地址时会调用此函数 
			$(document).ready(function($) {
			
				alert(address.value);
								});
			function promptinfo() {

				var address = document.getElementById('address');
				var s1 = document.getElementById('s1');
				var s2 = document.getElementById('s2');
				
				var current_Province = '<%=session.getAttribute("om.omProvince")%>';
				var current_Shi='<%=session.getAttribute("om.omCity")%>'
				address.value = current_Provinec.value + "|" + current_Shi.value;
				alert('address.value');
				var town1 = document.getElementById('town1');
				if (s1.value != "请选择省" && s2.value == '请选择市') {//若只选择了第一项，则地址就为某某省  
					address.value = s1.value;
				}
				if (s1.value != "请选择省" && s2.value != '请选择市') {//若只选择了前两项省和市，则地址就只显示"省|市"  
					address.value = s1.value + "|" + s2.value;
				}
				if (s1.value == "请选择省") {//若什么都不选，则隐藏域地址为空串  
					address.value = "";
				}
			}
			//获取区县的值（若不写这个触发函数，一直获取不到第三项区县的值，一直是默认值“请选择区县”）  
			function getTown() {
				var address = document.getElementById('address');
				var s1 = document.getElementById('s1').value
				var s2 = document.getElementById('s2').value;
				var s3 = document.getElementById('s3').value;
				var town1 = document.getElementById('town1').value;
				town1 = s3;
				if (town1 == "请选择区县") {
					address.value = s1 + "|" + s2;
				} else {
					address.value = s1 + "|" + s2 + "|" + town1;
				}

			}
		</script>
</body>

</html>

