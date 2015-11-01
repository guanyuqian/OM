<<<<<<< HEAD
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
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
    	<jsp:include page="head.jsp"></jsp:include>

	
	
<jsp:include page="leftJsp.jsp"></jsp:include>

  </body>
</html>
=======
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- Basic -->

<title>Dashboard | Nadhif - Responsive Admin Template</title>

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
<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css"
	rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
<link href="assets/plugins/xcharts/css/xcharts.min.css" rel="stylesheet" />
<link href="assets/plugins/morris/css/morris.css" rel="stylesheet" />
<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

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

<body>

	<!-- Start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Action -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="index.html#"
					id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="index.html#"
					id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>
			</ul>
			<!-- Navbar Left -->
			<div class="navbar-left">
				<!-- Search Form -->
				<form class="search navbar-form">
					<div class="input-group input-search">
						<input type="text" class="form-control" name="q" id="q"
							placeholder="Search..."> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- Notifications -->
				<ul class="notifications hidden-sm hidden-xs">
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-tasks"></i> <span
							class="badge">10</span>
					</a>
						<ul class="dropdown-menu update-menu" role="menu">
							<li><a href="#"><i class="fa fa-database bk-fg-primary"></i>
									Database </a></li>
							<li><a href="#"><i
									class="fa fa-bar-chart-o bk-fg-primary"></i> Connection </a></li>
							<li><a href="#"><i class="fa fa-bell bk-fg-primary"></i>
									Notification </a></li>
							<li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i>
									Message </a></li>
							<li><a href="#"><i class="fa fa-flash bk-fg-primary"></i>
									Traffic </a></li>
							<li><a href="#"><i
									class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
							<li><a href="#"><i class="fa fa-dollar bk-fg-primary"></i>
									Finances </a></li>
							<li><a href="#"><i
									class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
							<li><a href="#"><i class="fa fa-folder bk-fg-primary"></i>
									Directories </a></li>
							<li><a href="#"><i class="fa fa-users bk-fg-primary"></i>
									Users </a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-envelope"></i> <span
							class="badge">5</span>
					</a>
						<ul class="dropdown-menu">
							<li class="dropdown-menu-header"><strong>Messages</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar1.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>1 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar2.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>3 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar3.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>4 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar4.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>30 minute ago</small></span>
							</a></li>
							<li class="avatar"><a href="page-inbox.html"> <img
									class="avatar" src="assets/img/avatar5.jpg" alt="" />
									<div>
										<div class="point point-primary point-lg"></div>
										New message
									</div> <span><small>1 hours ago</small></span>
							</a></li>
							<li class="dropdown-menu-footer text-center"><a
								href="page-inbox.html">View all messages</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle notification-icon"
						data-toggle="dropdown"> <i class="fa fa-bell"></i> <span
							class="badge">3</span>
					</a>
						<ul class="dropdown-menu list-group">
							<li class="dropdown-menu-header"><strong>Notifications</strong>
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-danger"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div></li>
							<li class="list-item"><a href="page-inbox.html">
									<div class="pull-left">
										<i class="fa fa-envelope-o bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Unread Message</div>
										<h6>You have 10 unread message</h6>
									</div>
							</a></li>
							<li class="list-item"><a href="#">
									<div class="pull-left">
										<i class="fa fa-cogs bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>New Settings</div>
										<h6>There are new settings available</h6>
									</div>
							</a></li>
							<li class="list-item"><a href="#">
									<div class="pull-left">
										<i class="fa fa-fire bk-fg-primary"></i>
									</div>
									<div class="media-body clearfix">
										<div>Update</div>
										<h6>There are new updates available</h6>
									</div>
							</a></li>
							<li class="list-item-last"><a href="#">
									<h6>Unread notifications</h6> <span class="badge">15</span>
							</a></li>
						</ul></li>
				</ul>
				<!-- End Notifications -->
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<div class="profile-info">
							<span class="name">John Smith Doe</span> <span class="role">Developer</span>
						</div> <i class="fa custom-caret"></i>
					</a>
					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-primary"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</li>
							<li><a href="page-profile.html"><i class="fa fa-user"></i>
									Profile</a></li>
							<li><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
							<li><a href="page-invoice"><i class="fa fa-usd"></i>
									Payments</a></li>
							<li><a href="#"><i class="fa fa-file"></i> File</a></li>
							<li><a href="page-login.html"><i class="fa fa-power-off"></i>
									Logout</a></li>
						</ul>
					</div>
				</div>
				<!-- End Userbox -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
	<!-- End: Header -->
	<div class="sidebar">
		<div class="sidebar-collapse">
			<!-- Sidebar Header Logo-->
			<div class="sidebar-header">
				<img src="assets/img/logo.png" class="img-responsive" alt="" />
			</div>
			<!-- Sidebar Menu-->
			<div class="sidebar-menu">
				<nav id="menu" class="nav-main" role="navigation">
				<ul class="nav nav-sidebar">
					<div class="panel-body text-center">
						<div class="bk-avatar">
							<img src="assets/img/avatar.jpg" class="img-circle bk-img-60"
								alt="" />
						</div>

						<input type="file" id="file">
						<div id="image-wrap"></div>
						<div class="bk-padding-top-10">
							<i class="fa fa-circle text-success"></i> <small>Administrator</small>
						</div>
					</div>
					<div class="divider2"></div>


					<li class="nav-parent"><a> <i class="fa fa-copy"
							aria-hidden="true"></i><span>关于活动</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="page-activity.html"><span class="text">
										活动列表</span></a></li>
							<li><a href="page-invoice.html"><span class="text">
										加入活动</span></a></li>
							<li><a href="page-profile.html"><span class="text">
										发起活动</span></a></li>
							<li><a href="page-pricing-tables.html"><span
									class="text"> 活动管理</span></a></li>

						</ul></li>
					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i><span>关于账单</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="form-elements.html"><span class="text">
										我的账单</span></a></li>
							<li><a href="form-wizard.html"><span class="text">
										添加账单</span></a></li>
							<li><a href="form-dropzone.html"><span class="text">
										管理账单</span></a></li>

						</ul></li>

					<li class="nav-parent"><a> <i class="fa fa-random"
							aria-hidden="true"></i><span>关于投票</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="chart-flot.html"><span class="text">
										投票详情</span></a></li>
							<li><a href="chart-xchart.html"><span class="text">参与投票</span></a></li>
							<li><a href="chart-other.html"><span class="text">
										发起投票</span></a></li>
							<li><a href="ui-progress-bars.html"><span class="text">
										投票管理</span></a></li>
						</ul></li>
					<li class="nav-parent"><a> <i class="fa fa-tasks"
							aria-hidden="true"></i> <span>关于公告</span>
					</a>
						<ul class="nav nav-children">

							<li><a href="ui-nestable-list.html"><span class="text">公告详情</span></a></li>
							<li><a href="ui-elements.html"><span class="text">
										发布公告</span></a></li>
							<li><a href="ui-panels.html"><span class="text">
										公告管理</span></a></li>

						</ul></li>


					<li class="nav-parent"><a> <i class="fa fa-bolt"
							aria-hidden="true"></i><span>关于群文件</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="icons-font-awesome.html"><span class="text">
										查看群文件</span></a></li>
							<li><a href="icons-weathericons.html"><span class="text">
										查看群相册</span></a></li>
							<li><a href="icons-glyphicons.html"><span class="text">
										群文件上传</span></a></li>
						</ul></li>



				</ul>
				</nav>
			</div>
			<!-- End Sidebar Menu-->
		</div>

		<!-- End Sidebar Footer-->
	</div>

</body>
</html>
>>>>>>> 7e4f3ce9ab4fdba9e4900697fa10acaf09be16fb
