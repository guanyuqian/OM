<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'leftJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>Dashboard | Nadhif - Responsive Admin Template</title>
		
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Import google fonts -->
        <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->		
		<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />	
		<link href="assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
		<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
		<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
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
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
<input type="file" id="file">
<div id="image-wrap"></div>
(function($) {       
$.imageFileVisible = function(options) {     
     // 默认选项
var defaults = {    
//包裹图片的元素
wrapSelector: null,    
//<input type=file />元素
  fileSelector:  null ,
  width : '100%',
  height: 'auto',
  errorMessage: "不是图片"
 };    
 // Extend our default options with those provided.    
 var opts = $.extend(defaults, options);     
 $(opts.fileSelector).on("change",function(){
var file = this.files[0];
var imageType = /image.*/;
if (file.type.match(imageType)) {
var reader = new FileReader();
reader.onload = function(){
var img = new Image();
img.src = reader.result;
$(img).width( opts.width);
$(img).height( opts.height);
$( opts.wrapSelector ).append(img);
};
reader.readAsDataURL(file);
}else{
alert(opts.errorMessage);
}
});
};     
})(jQuery);
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  
  <script src="image-file-visible.js">
</script>
<script>
$(document).ready(function(){
//图片显示插件
$.imageFileVisible({wrapSelector: "#image-wrap",   
fileSelector: "#file",
width: 100,
height: 50
});
});
</script>
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
											<img src="assets/img/avatar.jpg" class="img-circle bk-img-60" alt="" />
										</div>
										   
                                            <input type="file" id="file">
                                             <div id="image-wrap"></div>
										<div class="bk-padding-top-10">
											<i class="fa fa-circle text-success"></i> <small>Administrator</small>
										</div>
									</div>
									<div class="divider2"></div>
									
									
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i><span>关于活动</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="page-activity.html"><span class="text"> 活动列表</span></a></li>
											<li><a href="page-invoice.html"><span class="text"> 加入活动</span></a></li>						
											<li><a href="page-profile.html"><span class="text"> 发起活动</span></a></li>
											<li><a href="page-pricing-tables.html"><span class="text"> 活动管理</span></a></li>
																			
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i><span>关于账单</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="form-elements.html"><span class="text"> 我的账单</span></a></li>
											<li><a href="form-wizard.html"><span class="text"> 添加账单</span></a></li>
											<li><a href="form-dropzone.html"><span class="text"> 管理账单</span></a></li>
									
										</ul>
									</li>
								
									<li class="nav-parent">
										<a>
											<i class="fa fa-random" aria-hidden="true"></i><span>关于投票</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="chart-flot.html"><span class="text"> 投票详情</span></a></li>
											<li><a href="chart-xchart.html"><span class="text">参与投票</span></a></li>
											<li><a href="chart-other.html"><span class="text"> 发起投票</span></a></li>
											<li><a href="ui-progress-bars.html"><span class="text"> 投票管理</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<span>关于公告</span>
										</a>
										<ul class="nav nav-children">
										
											<li><a href="ui-nestable-list.html"><span class="text">公告详情</span></a></li>
											<li><a href="ui-elements.html"><span class="text"> 发布公告</span></a></li>
											<li><a href="ui-panels.html"><span class="text"> 公告管理</span></a></li>
										
										</ul>
									</li>
								
							
									<li class="nav-parent">
										<a>
											<i class="fa fa-bolt" aria-hidden="true"></i><span>关于群文件</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="icons-font-awesome.html"><span class="text"> 查看群文件</span></a></li>
											<li><a href="icons-weathericons.html"><span class="text"> 查看群相册</span></a></li>
											<li><a href="icons-glyphicons.html"><span class="text"> 群文件上传</span></a></li>
										</ul>
									</li>
								
									
								
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
				
					<!-- End Sidebar Footer-->
				</div>	
  </body>
</html>
