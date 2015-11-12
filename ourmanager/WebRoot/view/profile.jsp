<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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








<title>My JSP starting page</title>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
	var s = <s:property value="#session.user.userSex" />;
	alert(s);
		$("#userSex").val(s);
		
	
		$("#save").click(function() {
			if ($("#userName").val() == "") {
				alert("用户名不能为空！");
				return false;
			}
			if ($("#userSex").val() == "") {
				alert("请选择性别！");
				return false;
			}
			var uh=$("#seachprov option:selected").text()+$("#seachcity option:selected").text()+$("#seachdistrict option:selected").text();
			$("#UH").val(uh);
			var uh1=$("#seachprov1 option:selected").text()+$("#seachcity1 option:selected").text()+$("#seachdistrict1 option:selected").text();
			$("#UH1").val(uh1);
			
		});
	});
</script>


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
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
										<label class="col-md-3 control-label">昵称</label>
										<div class="col-md-9">
											<td><s:textfield name="user.userName"
													value="%{#session.user.userName}" id="userName"
													cssClass="form-control">
												</s:textfield></td> <br>

										</div>
									</div>
									<br>

									<div class="form-group">
										<label class="col-md-3 control-label" for="email-input">邮箱</label>
										<div class="col-md-9">
											<td><s:textfield name="user.userEmail"
													value="%{#session.user.userEmail}" id="userEmail"
													cssClass="form-control"></s:textfield></td> <br>
										</div>
									</div>
									<br>
									<div class="form-group">
										<label class="col-md-3 control-label" for="sex-input">性别</label>
										<div class="col-md-9">
										
											<s:select name="user.userSex" id="userSex" value="%{#session.user.userSex}"
												list="#{'true':'男','false':'女'}" label="性别"  headerValue="%{#session.user.userSex}"
												cssClass="form-control"></s:select>
											<br>
										</div>
									</div>
									<br>
									<div class="form-group">
										<label class="col-md-3 control-label" for="moto-input">签名档</label>
										<div class="col-md-9">
											<s:textarea name="user.userMoto"
													value="%{#session.user.userMoto}" cssClass="form-control"></s:textarea>
											<br>
										</div>
									</div>
									<br>
									<div class="form-group">
									
									<input type="hidden" name="user.userHometown" id="UH"/>
										<label class="col-md-3 control-label" for="hometown-input">故乡</label>
										<div class="col-md-9">

											<select id="seachprov"  class="col-md-3"
												onChange="changeComplexProvince(this.value, sub_array, 'seachcity', 'seachdistrict');">
											</select>&nbsp;&nbsp; <select id="seachcity" 
												class="col-md-3"
												onChange="changeCity(this.value,'seachdistrict','seachdistrict');">
												<option value="0">请选择</option>
											</select>&nbsp;&nbsp; <span id="seachdistrict_div"> <select
												id="seachdistrict" class="col-md-3" name="town">
											</select></span> <input type="button" value="地区码" onClick="showAreaID()" />
											 <br>
											 <br>
										</div>
									</div>
									
									<div class="form-group">
									<input type="hidden" name="user.userLocation" id="UH1"/>
										<label class="col-md-3 control-label" for="location-input">现居地</label>
										<div class="col-md-9">

											<select id="seachprov1" name="province1" class="col-md-3"
												onChange="changeComplexProvince1(this.value, sub_array1, 'seachcity1', 'seachdistrict1');">
											</select>&nbsp;&nbsp; <select id="seachcity1" name="om.omcity1"
												class="col-md-3"
												onChange="changeCity1(this.value,'seachdistrict1','seachdistrict1');">
												<option value="0">请选择</option>
											</select>&nbsp;&nbsp; <span id="seachdistrict_div"> <select
												id="seachdistrict1" class="col-md-3" name="town1">
											</select></span> <input type="button" value="地区码" onClick="showAreaID1()" />
											<br> <br>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="job-input">工作</label>
										<div class="col-md-9">
											<s:textfield name="user.userJob"
													value="%{#session.user.userJob}" cssClass="form-control"></s:textfield>
											<br>
										</div>
									</div>
									<br>
									<div class="form-group">
										<label class="col-md-3 control-label" for="birthday-input">生日</label>
										<div class="col-md-9">

											<div class="input-group">
												<span class="input-group-addon"> <i
													class="fa fa-calendar"></i>
												</span> <input type="text" class="datepicker" class="form-control"
													name="user.userBirthday" id="userBirthday"
													placeholder="请选择日期" />

											</div>

											<br>
										</div>
									</div>
									<br> <br>

								
									<div class="form-group">

										<div class="col-md-9">
											<button id="save"
												class="btn btn-primary hidden-xs bk-margin-top-10"
												type="submit">保存</button>
											<button
												class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-10"
												type="submit" href="index.html">保存</button>
										</div>
									</div>


								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


	</s:form>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js">
		<script src="assets/js/jquery-1.7.1.js" type="text/javascript">
	</script>
	<script src="assets/js/pages/Area.js" type="text/javascript"></script>
	<script src="assets/js/pages/AreaData_min.js" type="text/javascript"></script>
	<script src="assets/js/pages/Area1.js" type="text/javascript"></script>
	<script src="assets/js/pages/AreaData_min1.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			initComplexArea('seachprov', 'seachcity', 'seachdistrict',
					area_array, sub_array, '0', '0', '0');
		});

		//得到地区码
		function getAreaID() {
			var area = 0;
			if ($("#seachdistrict").val() != "0") {
				area = $("#seachdistrict").val();
			} else if ($("#seachcity").val() != "0") {
				area = $("#seachcity").val();
			} else {
				area = $("#seachprov").val();
			}

			return area;
		}

		function showAreaID() {
			//地区码
			var areaID = getAreaID();
			//地区名
			var areaName = getAreaNamebyID(areaID);
			alert("您选择的地区码：" + areaID + "      地区名：" + areaName);
		}

		//根据地区码查询地区名
		function getAreaNamebyID(areaID) {
			var areaName = "";
			if (areaID.length == 2) {
				areaName = area_array[areaID];
			} else if (areaID.length == 4) {
				var index1 = areaID.substring(0, 2);
				areaName = area_array[index1] + " " + sub_array[index1][areaID];
			} else if (areaID.length == 6) {
				var index1 = areaID.substring(0, 2);
				var index2 = areaID.substring(0, 4);
				areaName = area_array[index1] + " " + sub_array[index1][index2]
						+ " " + sub_arr[index2][areaID];
			}
			return areaName;
		}
	</script>

	<script type="text/javascript">
		$(function() {
			initComplexArea1('seachprov1', 'seachcity1', 'seachdistrict1',
					area_array1, sub_array1, '0', '0', '0');
		});

		//得到地区码
		function getAreaID1() {
			var area1 = 0;
			if ($("#seachdistrict1").val() != "0") {
				area1 = $("#seachdistrict1").val();
			} else if ($("#seachcity1").val() != "0") {
				area1 = $("#seachcity1").val();
			} else {
				area1 = $("#seachprov1").val();
			}

			return area1;
		}

		function showAreaID1() {
			//地区码
			var areaID1 = getAreaID1();
			//地区名
			var areaName1 = getAreaNamebyID1(areaID1);
			alert("您选择的地区码：" + areaID1 + "      地区名：" + areaName1);
		}

		//根据地区码查询地区名
		function getAreaNamebyID1(areaID1) {
			var areaName1 = "";
			if (areaID1.length == 2) {
				areaName1 = area_array1[areaID1];
			} else if (areaID1.length == 4) {
				var index1 = areaID1.substring(0, 2);
				areaName1 = area_array1[index1] + " "
						+ sub_array1[index1][areaID];
			} else if (areaID1.length == 6) {
				var index1 = areaID1.substring(0, 2);
				var index2 = areaID1.substring(0, 4);
				areaName1 = area_array1[index1] + " "
						+ sub_array1[index1][index2] + " "
						+ sub_arr1[index2][areaID1];
			}
			return areaName1;
		}
	</script>
	<script type="text/javascript">
		$(function() {
			$(".datepicker").datepicker({
				language : "zh-CN",
				autoclose : true,//选中之后自动隐藏日期选择框
				clearBtn : true,//清除按钮
				todayBtn : true,//今日按钮
				format : "yyyy-mm-dd"//日期格式，详见 http://bootstrap-datepicker.readthedocs.org/en/release/options.html#format
			});
		});
	</script>

</body>
</html>

