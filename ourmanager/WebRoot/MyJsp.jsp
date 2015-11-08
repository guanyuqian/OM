<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
 
<body>
	<s:form id="form" action="Update" method="post">
		<div class="main " style="min-height: 675px;">
			<div class="panel">
				<div class=" bk-bg-primary ">

					<h6>
						<i class="fa fa-indent red"></i>Basic Form Elements
					</h6>
				</div>
				<div class="panel-body">
					<form class="form-horizontal " enctype="multipart/form-data"
						method="post" action="">
						<div class="form-group">
							<label class="col-md-3 control-label">Username</label>
							<div class="col-md-9">

								<s:property value="#session.user.userName" />
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="text-input" class="col-md-3 control-label">Text
								Input</label>
							<div class="col-md-9">
								<input type="text" placeholder="Text" class="form-control"
									name="text-input" id="text-input"> <span
									class="help-block">This is a help text</span>
							</div>
						</div>
						<div class="form-group">
							<label for="email-input" class="col-md-3 control-label">Email
								Input</label>
							<div class="col-md-9">
								<input type="email" placeholder="Email address"
									class="form-control" name="email-input" id="email-input">
								<span class="help-block">Please enter your email</span>
							</div>
						</div>
						<div class="form-group">
							<label for="password-input" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" placeholder="Password"
									class="form-control" name="password-input" id="password-input">
								<span class="help-block">Please enter a complex password</span>
							</div>
						</div>
						<div class="form-group">
							<label for="disabled-input" class="col-md-3 control-label">Disabled
								Input</label>
							<div class="col-md-9">
								<input type="text" disabled="" placeholder="Disabled"
									class="form-control" name="disabled-input" id="disabled-input">
							</div>
						</div>
						<div class="form-group">
							<label for="textarea-input" class="col-md-3 control-label">Textarea</label>
							<div class="col-md-9">
								<textarea placeholder="Content.." class="form-control" rows="9"
									name="textarea-input" id="textarea-input"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="select" class="col-md-3 control-label">Select</label>
							<div class="col-md-9">
								<select size="1" class="form-control" name="select" id="select">
									<option value="0">Please select</option>
									<option value="1">Option #1</option>
									<option value="2">Option #2</option>
									<option value="3">Option #3</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="select" class="col-md-3 control-label">Select
								Large</label>
							<div class="col-md-9">
								<select size="1" class="form-control input-lg" name="select"
									id="select">
									<option value="0">Please select</option>
									<option value="1">Option #1</option>
									<option value="2">Option #2</option>
									<option value="3">Option #3</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="select" class="col-md-3 control-label">Disabled
								Select</label>
							<div class="col-md-9">
								<select disabled="" class="form-control" id="disabledSelect">
									<option value="0">Please select</option>
									<option value="1">Option #1</option>
									<option value="2">Option #2</option>
									<option value="3">Option #3</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="multiple-select" class="col-md-3 control-label">Multiple
								select</label>
							<div class="col-md-9">
								<select multiple="" size="5" class="form-control"
									name="multiple-select" id="multiple-select">
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
									<input type="radio" value="option1" name="radios" id="radio1">
									<label for="radio1"> Option 1</label>
								</div>
								<div class="radio-custom">
									<input type="radio" value="option2" name="radios" id="radio2">
									<label for="radio2"> Option 2</label>
								</div>
								<div class="radio-custom">
									<input type="radio" value="option3" name="radios" id="radio3">
									<label for="radio3"> Option 3</label>
								</div>
								<div class="radio-custom">
									<input type="radio" value="option4" name="radios" id="radio4">
									<label for="radio4"> Option 4</label>
								</div>
								<div class="radio-custom">
									<input type="radio" value="option5" name="radios" id="radio5">
									<label for="radio5"> Option 5</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Inline Radios</label>
							<div class="col-md-9">
								<div class="radio-custom radio-inline">
									<input type="radio" value="option1" name="inline-radios"
										id="inline-radio1"> <label for="inline-radio1">
										One</label>
								</div>
								<div class="radio-custom radio-inline">
									<input type="radio" value="option2" name="inline-radios"
										id="inline-radio2"> <label for="inline-radio2">
										Two</label>
								</div>
								<div class="radio-custom radio-inline">
									<input type="radio" value="option3" name="inline-radios"
										id="inline-radio3"> <label for="inline-radio3">
										Three</label>
								</div>
								<div class="radio-custom radio-inline">
									<input type="radio" value="option4" name="inline-radios"
										id="inline-radio4"> <label for="inline-radio4">
										Four</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Checkboxes</label>
							<div class="col-md-9">
								<div class="checkbox-custom">
									<input type="checkbox" value="option1" name="checkbox1"
										id="checkbox1"> <label for="checkbox1"> Option
										1</label>
								</div>
								<div class="checkbox-custom">
									<input type="checkbox" value="option2" name="checkbox2"
										id="checkbox2"> <label for="checkbox2"> Option
										2</label>
								</div>
								<div class="checkbox-custom">
									<input type="checkbox" value="option3" name="checkbox3"
										id="checkbox3"> <label for="checkbox3"> Option
										3</label>
								</div>
								<div class="checkbox-custom">
									<input type="checkbox" value="option4" name="checkbox4"
										id="checkbox4"> <label for="checkbox4"> Option
										4</label>
								</div>
								<div class="checkbox-custom">
									<input type="checkbox" value="option5" name="checkbox5"
										id="checkbox5"> <label for="checkbox5"> Option
										5</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">Inline Checkboxes</label>
							<div class="col-md-9">
								<div class="checkbox-custom checkbox-inline">
									<input type="checkbox" value="option1" name="inline-checkbox1"
										id="inline-checkbox1"> <label for="inline-checkbox1">
										One</label>
								</div>
								<div class="checkbox-custom checkbox-inline">
									<input type="checkbox" value="option2" name="inline-checkbox2"
										id="inline-checkbox2"> <label for="inline-checkbox2">
										Two</label>
								</div>
								<div class="checkbox-custom checkbox-inline">
									<input type="checkbox" value="option3" name="inline-checkbox3"
										id="inline-checkbox3"> <label for="inline-checkbox3">
										Three</label>
								</div>
								<div class="checkbox-custom checkbox-inline">
									<input type="checkbox" value="option4" name="inline-checkbox3"
										id="inline-checkbox4"> <label for="inline-checkbox4">
										Four</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="file-input" class="col-md-3 control-label">File
								input</label>
							<div class="col-md-9">
								<input type="file" name="file-input" id="file-input">
							</div>
						</div>
						<div class="form-group">
							<label for="file-multiple-input" class="col-md-3 control-label">Multiple
								File input</label>
							<div class="col-md-9">
								<input type="file" multiple="" name="file-multiple-input"
									id="file-multiple-input">
							</div>
						</div>
						<br>
					</form>
				</div>
			</div>
		</div>

	</s:form>
</body>
  </body>
</html>
