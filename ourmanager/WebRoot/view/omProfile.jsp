<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

</head>

<body onload="setup();">
  <jsp:include page="home.jsp"></jsp:include>
	<s:form id="form" action="Update" method="post">
		
		<div class="row">
			<div class="main " style="min-height: 767px;">
				<div class="page-header">
					<div class="pull-right">
						<h2>个人档案</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="panel"
							style="width: 870px; padding-left: 100px; border-left-width: 0px; margin-left: 130px; padding-top: 50px;">

							<div class="panel-body"
								style="padding-bottom: 10px; padding-right: 15px; width: 600px; padding-left: 0px; border-left-width: 10px; height: 620px;">
								<form class="form-horizontal " enctype="multipart/form-data"
									method="post" action="">
  	                  <div class="form-group">
							<label class="col-md-3 control-label" for="omname-input">集体名</label>
							<div class="col-md-9">
									<s:textfield name="user.om.omName" value="%{#session.user.om.omName}"cssClass="form-control"></s:textfield>
							</div>
								<br>
							<br>
						</div>
							
	                           <div class="form-group">
							<label class="col-md-3 control-label" for="omdes-input">集体描述</label>
							<div class="col-md-9">
									<s:textarea name="user.om.omDes" value="%{#session.user.om.omDes}"cssClass="form-control"></s:textarea>
							</div>
								<br>
							<br>
						</div>
						
						<br>
							<br>
									<div class="form-group">
									<label class="col-md-3 control-label" for="omdes-input">所属地区</label>
										<div class="col-md-3">
											<select class="select form-control" name="om.omProvince" id="s1">
												<option>请选择省</option>
											</select>
										</div>
										<div class="col-md-3">
											<select class="select form-control" name="om.omCity" id="s2">
												<option>请选择市</option>
											</select>
										</div>
										<div class="col-md-3">
											<select class="z form-control" name="om.omTown" id="s3"
												onchange="getTown()">
												<option>请选择区县</option>
											</select>
										</div>
											<br>
							<br>
							      </div>
					
					
						 <div class="form-group">
							<label class="col-md-3 control-label" for="omlocation-input">详细地址</label>
							<div class="col-md-9">
									<s:textarea name="user.om.omLocation" value="%{#session.user.om.omLocation}"cssClass="form-control"></s:textarea>
							</div>
							<br>
							<br>
						</div>
						
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	
	</s:form>	
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
	<script src="assets/js/area.js"></script>
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
		function promptinfo() {
			var address = document.getElementById('address');
			var s1 = document.getElementById('s1');
			var s2 = document.getElementById('s2');
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

<body/>
</html>
