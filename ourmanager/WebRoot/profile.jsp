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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->






<title>My JSP starting page</title>
<script src="assets/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#save").click(function() {
			if ($("#name").val() == "")
				alert("请输入用户名");
			else
				$("#form").submit();
		})
	})
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
		<div class="main " style="min-height: 675px;">
		
				<div class="panel">
					<div class="panel-heading bk-bg-primar">
						<h6>
							<i class="fa fa-indent red"></i>Basic Form Elements
						</h6>
					</div>

					<div class="panel-body">
						<form action="" method="post" enctype="multipart/form-data"
							class="form-horizontal ">
							<div class="form-group">
								<label class="col-md-3 control-label">Static</label>
								<div class="col-md-9">
									<p class="form-control-static">Username</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="text-input">Text
									Input</label>
								<div class="col-md-9">
									<input id="text-input" name="text-input" class="form-control"
										placeholder="Text" type="text"> <span
										class="help-block">This is a help text</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="email-input">Email
									Input</label>
								<div class="col-md-9">
									<input id="email-input" name="email-input" class="form-control"
										placeholder="Email address" type="email"> <span
										class="help-block">Please enter your email</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="password-input">Password</label>
								<div class="col-md-9">
									<input id="password-input" name="password-input"
										class="form-control" placeholder="Password" type="password">
									<span class="help-block">Please enter a complex password</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="disabled-input">Disabled
									Input</label>
								<div class="col-md-9">
									<input id="disabled-input" name="disabled-input"
										class="form-control" placeholder="Disabled" disabled=""
										type="text">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="textarea-input">Textarea</label>
								<div class="col-md-9">
									<textarea id="textarea-input" name="textarea-input" rows="9"
										class="form-control" placeholder="Content.."></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="select">Select</label>
								<div class="col-md-9">
									<select id="select" name="select" class="form-control" size="1">
										<option value="0">Please select</option>
										<option value="1">Option #1</option>
										<option value="2">Option #2</option>
										<option value="3">Option #3</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="select">Select
									Large</label>
								<div class="col-md-9">
									<select id="select" name="select" class="form-control input-lg"
										size="1">
										<option value="0">Please select</option>
										<option value="1">Option #1</option>
										<option value="2">Option #2</option>
										<option value="3">Option #3</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="select">Disabled
									Select</label>
								<div class="col-md-9">
									<select id="disabledSelect" class="form-control" disabled="">
										<option value="0">Please select</option>
										<option value="1">Option #1</option>
										<option value="2">Option #2</option>
										<option value="3">Option #3</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="multiple-select">Multiple
									select</label>
								<div class="col-md-9">
									<select id="multiple-select" name="multiple-select"
										class="form-control" size="5" multiple="">
										<option value="1">Option #1</option>
										<option value="2">Option #2</option>
										<option value="3">Option #3</option>
										<option value="4">Option #4</option>
										<option value="5">Option #5</option>
										<option value="6">Option #6</option>
										<option value="7">Option #7</option>
										<option value="8">Option #8</option>
										<option value="9">Option #9</option>
										<option value="10">Option #10</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Radios</label>
								<div class="col-md-9">
									<div class="radio-custom">
										<input id="radio1" name="radios" value="option1" type="radio">
										<label for="radio1"> Option 1</label>
									</div>
									<div class="radio-custom">
										<input id="radio2" name="radios" value="option2" type="radio">
										<label for="radio2"> Option 2</label>
									</div>
									<div class="radio-custom">
										<input id="radio3" name="radios" value="option3" type="radio">
										<label for="radio3"> Option 3</label>
									</div>
									<div class="radio-custom">
										<input id="radio4" name="radios" value="option4" type="radio">
										<label for="radio4"> Option 4</label>
									</div>
									<div class="radio-custom">
										<input id="radio5" name="radios" value="option5" type="radio">
										<label for="radio5"> Option 5</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Inline Radios</label>
								<div class="col-md-9">
									<div class="radio-custom radio-inline">
										<input id="inline-radio1" name="inline-radios" value="option1"
											type="radio"> <label for="inline-radio1"> One</label>
									</div>
									<div class="radio-custom radio-inline">
										<input id="inline-radio2" name="inline-radios" value="option2"
											type="radio"> <label for="inline-radio2"> Two</label>
									</div>
									<div class="radio-custom radio-inline">
										<input id="inline-radio3" name="inline-radios" value="option3"
											type="radio"> <label for="inline-radio3">
											Three</label>
									</div>
									<div class="radio-custom radio-inline">
										<input id="inline-radio4" name="inline-radios" value="option4"
											type="radio"> <label for="inline-radio4">
											Four</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Checkboxes</label>
								<div class="col-md-9">
									<div class="checkbox-custom">
										<input id="checkbox1" name="checkbox1" value="option1"
											type="checkbox"> <label for="checkbox1">
											Option 1</label>
									</div>
									<div class="checkbox-custom">
										<input id="checkbox2" name="checkbox2" value="option2"
											type="checkbox"> <label for="checkbox2">
											Option 2</label>
									</div>
									<div class="checkbox-custom">
										<input id="checkbox3" name="checkbox3" value="option3"
											type="checkbox"> <label for="checkbox3">
											Option 3</label>
									</div>
									<div class="checkbox-custom">
										<input id="checkbox4" name="checkbox4" value="option4"
											type="checkbox"> <label for="checkbox4">
											Option 4</label>
									</div>
									<div class="checkbox-custom">
										<input id="checkbox5" name="checkbox5" value="option5"
											type="checkbox"> <label for="checkbox5">
											Option 5</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Inline Checkboxes</label>
								<div class="col-md-9">
									<div class="checkbox-custom checkbox-inline">
										<input id="inline-checkbox1" name="inline-checkbox1"
											value="option1" type="checkbox"> <label
											for="inline-checkbox1"> One</label>
									</div>
									<div class="checkbox-custom checkbox-inline">
										<input id="inline-checkbox2" name="inline-checkbox2"
											value="option2" type="checkbox"> <label
											for="inline-checkbox2"> Two</label>
									</div>
									<div class="checkbox-custom checkbox-inline">
										<input id="inline-checkbox3" name="inline-checkbox3"
											value="option3" type="checkbox"> <label
											for="inline-checkbox3"> Three</label>
									</div>
									<div class="checkbox-custom checkbox-inline">
										<input id="inline-checkbox4" name="inline-checkbox3"
											value="option4" type="checkbox"> <label
											for="inline-checkbox4"> Four</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="file-input">File
									input</label>
								<div class="col-md-9">
									<input id="file-input" name="file-input" type="file">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="file-multiple-input">Multiple
									File input</label>
								<div class="col-md-9">
									<input id="file-multiple-input" name="file-multiple-input"
										multiple="" type="file">
								</div>
							</div>
							<br>
						</form>
					</div>
				</div>
			</div>
		</div>

	</s:form>
</body>
</html>
