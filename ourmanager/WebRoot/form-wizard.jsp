<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>Wizard | Nadhif - Responsive Admin Template</title>
		
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
		<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
		<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />					
		
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
					<li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
				</ul>
				<!-- Navbar Left -->
				<div class="navbar-left">
					<!-- Search Form -->					
					<form class="search navbar-form">
						<div class="input-group input-search">
							<input type="text" class="form-control" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>						
					</form>
				</div>
				<!-- Navbar Right -->
				<div class="navbar-right">
					<!-- Notifications -->
					<ul class="notifications hidden-sm hidden-xs">
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-tasks"></i>
								<span class="badge">10</span>
							</a>
							<ul class="dropdown-menu update-menu" role="menu">
								<li><a href="#"><i class="fa fa-database bk-fg-primary"></i> Database </a></li>
								<li><a href="#"><i class="fa fa-bar-chart-o bk-fg-primary"></i> Connection </a></li>
								<li><a href="#"><i class="fa fa-bell bk-fg-primary"></i> Notification </a></li>
								<li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i> Message </a></li>
								<li><a href="#"><i class="fa fa-flash bk-fg-primary"></i> Traffic </a></li>
								<li><a href="#"><i class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
								<li><a href="#"><i class="fa fa-dollar bk-fg-primary"></i> Finances </a></li>
								<li><a href="#"><i class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
								<li><a href="#"><i class="fa fa-folder bk-fg-primary"></i> Directories </a></li>
								<li><a href="#"><i class="fa fa-users bk-fg-primary"></i> Users </a></li>		
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-envelope"></i>
								<span class="badge">5</span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-header">
									<strong>Messages</strong>
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar1.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>1 minute ago</small></span>							
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar2.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>3 minute ago</small></span>								
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar3.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>4 minute ago</small></span>								
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar4.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>30 minute ago</small></span>
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="assets/img/avatar5.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>1 hours ago</small></span>
									</a>
								</li>						
								<li class="dropdown-menu-footer text-center">
									<a href="page-inbox.html">View all messages</a>
								</li>	
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-bell"></i>
								<span class="badge">3</span>
							</a>
							<ul class="dropdown-menu list-group">
								<li class="dropdown-menu-header">
									<strong>Notifications</strong>
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>
								</li>
								<li class="list-item">
									<a href="page-inbox.html">
										<div class="pull-left">
										   <i class="fa fa-envelope-o bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Unread Message</div>
											<h6>You have 10 unread message</h6>
										</div>								
									</a>
								</li>
								<li class="list-item">
									<a href="#">
										<div class="pull-left">
										   <i class="fa fa-cogs bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>New Settings</div>
											<h6>There are new settings available</h6>
										</div>								
									</a>
								</li>
								<li class="list-item">
									<a href="#">
										<div class="pull-left">
										   <i class="fa fa-fire bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Update</div>
											<h6>There are new updates available</h6>
										</div>								
									</a>
								</li>
								<li class="list-item-last">
									<a href="#">
									  <h6>Unread notifications</h6>
									  <span class="badge">15</span>
								   </a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- End Notifications -->
					<!-- Userbox -->
					<div class="userbox">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<div class="profile-info">
								<span class="name">John Smith Doe</span>
								<span class="role">Developer</span>
							</div>			
							<i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">						
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>							
								</li>	
								<li>
									<a href="page-profile.html"><i class="fa fa-user"></i> Profile</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-wrench"></i> Settings</a>
								</li>
								<li>
									<a href="page-invoice"><i class="fa fa-usd"></i> Payments</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-file"></i> File</a>
								</li>
								<li>
									<a href="page-login.html"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>						
					</div>
					<!-- End Userbox -->
				</div>
				<!-- End Navbar Right -->
			</div>		
		</div>
		<!-- End: Header -->
		
		<!-- Start: Content -->
		<div class="container-fluid content">	
			<div class="row">
			
				<!-- Sidebar -->
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
										<div class="bk-padding-top-10">
											<i class="fa fa-circle text-success"></i> <small>Administrator</small>
										</div>
									</div>
									<div class="divider2"></div>
									<li>
										<a href="index.html">
											<i class="fa fa-laptop" aria-hidden="true"></i><span>Dashboard</span>
										</a>
									</li>
									<li>
										<a href="page-inbox.html">
											<span class="pull-right label label-primary">165</span>
											<i class="fa fa-envelope" aria-hidden="true"></i><span>Mail</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i><span>Pages</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="page-activity.html"><span class="text"> Activity</span></a></li>
											<li><a href="page-invoice.html"><span class="text"> Invoice</span></a></li>						
											<li><a href="page-profile.html"><span class="text"> Profile</span></a></li>
											<li><a href="page-pricing-tables.html"><span class="text"> Pricing Tables</span></a></li>
											<li><a href="page-404.html"><span class="text"> 404</span></a></li>
											<li><a href="page-500.html"><span class="text"> 500</span></a></li>
											<li><a href="page-lockscreen.html"><span class="text"> LockScreen1</span></a></li>
											<li><a href="page-lockscreen2.html"><span class="text"> LockScreen2</span></a></li>
											<li><a href="page-login.html"><span class="text"> Login Page</span></a></li>
											<li><a href="page-register.html"><span class="text"> Register Page</span></a></li>											
										</ul>
									</li>
									<li class="nav-parent nav-expanded active">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i><span>Forms</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="form-elements.html"><span class="text"> Form elements</span></a></li>
											<li><a href="form-wizard.html"><span class="text"> Wizard</span></a></li>
											<li><a href="form-dropzone.html"><span class="text"> Dropzone Upload</span></a></li>
											<li><a href="form-x-editable.html"><span class="text"> X-editable</span></a></li>
											<li><a href="form-editors.html"><span class="text"> Editors</span></a></li>
										</ul>
									</li>
									<li>
										<a href="table.html">
											<i class="fa fa-table" aria-hidden="true"></i><span>Tables</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-random" aria-hidden="true"></i><span>Visual Chart</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="chart-flot.html"><span class="text"> Flot Chart</span></a></li>
											<li><a href="chart-xchart.html"><span class="text"> xChart</span></a></li>
											<li><a href="chart-other.html"><span class="text"> Other</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<span>UI Elements</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="ui-progress-bars.html"><span class="text"> Progress bars</span></a></li>
											<li><a href="ui-nestable-list.html"><span class="text"> Nestable Lists</span></a></li>
											<li><a href="ui-elements.html"><span class="text"> Elements</span></a></li>
											<li><a href="ui-panels.html"><span class="text"> Panels</span></a></li>
											<li><a href="ui-buttons.html"><span class="text"> Buttons</span></a></li>
										</ul>
									</li>
									<li>
										<a href="widgets.html">
											<i class="fa fa-life-bouy" aria-hidden="true"></i><span>Widgets</span>
										</a>
									</li>
									<li>
										<a href="typography.html">
											<i class="fa fa-font" aria-hidden="true"></i><span>Typography</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-bolt" aria-hidden="true"></i><span>Icons</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="icons-font-awesome.html"><span class="text"> Font Awesome</span></a></li>
											<li><a href="icons-weathericons.html"><span class="text"> Weather Icons</span></a></li>
											<li><a href="icons-glyphicons.html"><span class="text"> Glyphicons</span></a></li>
										</ul>
									</li>
									<li>
										<a href="gallery.html">
											<i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
										</a>
									</li>
									<li>
										<a href="calendar.html">
											<i class="fa fa-calendar" aria-hidden="true"></i><span>Calendar</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">	
						<ul class="sidebar-terms">
							<li><a href="index.html#">Terms</a></li>
							<li><a href="index.html#">Privacy</a></li>
							<li><a href="index.html#">Help</a></li>
							<li><a href="index.html#">About</a></li>
						</ul>
						<div class="copyright text-center">
							<small>Nadhif <i class="fa fa-coffee"></i> Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></small>
						</div>					
					</div>
					<!-- End Sidebar Footer-->
				</div>
				<!-- End Sidebar -->
						
				<!-- Main Page -->
				<div class="main ">
					<!-- Page Header -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">								
								<li><a href="index.html"><i class="icon fa fa-home"></i>Home</a></li>
								<li><a href="#"><i class="fa fa-list-alt"></i>Forms</a></li>
								<li class="active"><i class="fa fa-tags"></i>Wizard</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>Wizard</h2>
						</div>					
					</div>
					<!-- End Page Header -->					
					<div class="row">						
						<div class="col-lg-12">
							<div class="panel bk-bg-white">
								<div class="panel-heading bk-bg-primary">
									<h6><i class="fa fa-tags red"></i>Wizard with validation</h6>
									<div class="panel-actions">
										<a href="form-wizard.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
										<a href="form-wizard.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
										<a href="form-wizard.html#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div id="wizard1" class="wizard-type1">
										<ul class="steps">
											<li><a href="form-wizard.html#tab11" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-star"></i></span> User Name</a></li>
											<li><a href="form-wizard.html#tab12" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-credit-card"></i></span> Card Information</a></li>
											<li><a href="form-wizard.html#tab13" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-building"></i></span> Company Details</a></li>
											<li><a href="form-wizard.html#tab14" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-check"></i></span> Agreement</a></li>
										</ul>
										<div class="progress thin progress-striped active">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
											</div>
										</div>
										<div class="tab-content">
											<div class="tab-pane" id="tab11">
												<form class="form-horizontal" role="form">
													<div class="form-group">
														<label for="email-w1">Email</label>							                    
														<input type="email" id="email-w1" name="email-w1" class="form-control" placeholder="Email address" />
														<span class="help-block">Please enter your email</span>							                    
													</div>
													<div class="form-group">
														<label for="password-w1">Password</label>							                    
														<input type="password" id="password-w1" name="password-w1" class="form-control" placeholder="Password" />
														<span class="help-block">Please enter your password</span>							                    
													</div>
												</form>	
											</div>
											<div class="tab-pane" id="tab12">
												<div class="row">
													<div class="col-sm-12">
														<div class="form-group has-feedback">
															<label for="name-w1">Name</label>
															<input type="text" class="form-control" id="name-w1" placeholder="Enter your name" />
															<span class="fa fa-asterisk form-control-feedback"></span>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-12">
														<div class="form-group has-feedback">
															<label for="ccnumber-w1">Credit Card Number</label>
															<input type="text" class="form-control" id="ccnumber-w1" placeholder="0000 0000 0000 0000" />
															<span class="fa fa-asterisk form-control-feedback"></span>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group col-sm-4">
														<label for="ccmonth-w1">Month</label>
														<select class="form-control" id="ccmonth-w1">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
															<option>6</option>
															<option>7</option>
															<option>8</option>
															<option>9</option>
															<option>10</option>
															<option>11</option>
															<option>12</option>
															<option>13</option>
															<option>14</option>
															<option>15</option>
															<option>16</option>
															<option>17</option>
															<option>18</option>
															<option>19</option>
															<option>20</option>
															<option>21</option>
															<option>22</option>
															<option>23</option>
															<option>24</option>
															<option>25</option>
															<option>26</option>
															<option>27</option>
															<option>28</option>
															<option>29</option>
															<option>30</option>
															<option>31</option>													
														</select>
													</div>
													<div class="form-group col-sm-4">
														<label for="ccyear-w1">Year</label>
														<select class="form-control" id="ccyear-w1">
															<option>2014</option>
															<option>2015</option>
															<option>2016</option>
															<option>2017</option>
															<option>2018</option>
															<option>2019</option>
															<option>2020</option>
															<option>2021</option>
															<option>2022</option>
															<option>2023</option>
															<option>2024</option>
															<option>2025</option>
														</select>
													</div>
													<div class="col-sm-4">
														<div class="form-group has-feedback">
															<label for="cvv-w1">CVV/CVC</label>
															<input type="text" class="form-control" id="cvv-w1" placeholder="123" />
															<span class="fa fa-asterisk form-control-feedback"></span>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab13">
												<div class="form-group">
													<label for="company-w1">Company</label>
													<input type="text" class="form-control" id="company-w1" placeholder="Company name" />
												</div>
												<div class="form-group">
													<label for="vat-w1">VAT</label>
													<input type="text" class="form-control" id="vat-w1" placeholder="040.0253.001" />
												</div>
												<div class="form-group">
													<label for="street-w1">Street</label>
													<input type="text" class="form-control" id="street-w1" placeholder="Street" />
												</div>
												<div class="row">
													<div class="form-group col-sm-8">
														<label for="city-w1">City</label>
														<input type="text" class="form-control" id="city-w1" placeholder="City" />
													</div>
													<div class="form-group col-sm-4">
														<label for="postal-code-w1">Postal Code</label>
														<input type="text" class="form-control" id="postal-code-w1" placeholder="Postal Code" />
													</div>
												</div>
												<div class="form-group">
													<label for="country-w1">Country</label>
													<input type="text" class="form-control" id="country-w1" placeholder="Country" />
												</div>
											</div>
											<div class="tab-pane" id="tab14">
												<h4><strong>1. General Terms</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												<h4><strong>2. Products</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit.
												</p><hr />
												<h4><strong>3. Security</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit.
												</p><hr />
												<h4><strong>4. Refunds</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												<h4><strong>5. Ownership</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												<h4><strong>Changes to terms</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />									
											
												<div class="form-group">
													<div class="checkbox-custom checkbox-default bk-margin-bottom-10">
														<input id="checkbox-w1" name="checkbox1-w" type="checkbox"/>
														<label for="checkbox-w1"> I agree with <a href="form-wizard.html#">Terms of Service</a></label>
													</div>
												</div>
											</div>
										</div>
										<div class="actions">								
											<input type="button" class="btn btn-info button-previous" name="previous" value="Previous" />
											<input type="button" class="btn btn-primary button-next pull-right" name="next" value="Next" />
											<input type="button" class="btn btn-success button-finish pull-right" name="finish" value="Finish" style="display:none"/>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-lg-12">
							<div class="panel bk-bg-white">
								<div class="panel-heading bk-bg-primary">
									<h6><i class="fa fa-tags red"></i>Wizard with validation</h6>
									<div class="panel-actions">
										<a href="form-wizard.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
										<a href="form-wizard.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
										<a href="form-wizard.html#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div id="wizard2" class="wizard-type2">							
										<ul class="steps">
											<li><a href="form-wizard.html#tab21" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-star"></i></span> User Name</a></li>
											<li><a href="form-wizard.html#tab22" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-credit-card"></i></span> Card Information</a></li>
											<li><a href="form-wizard.html#tab23" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-building"></i></span> Company Details</a></li>
											<li><a href="form-wizard.html#tab24" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-check"></i></span> Agreement</a></li>
										</ul>
										<div class="progress thin progress-striped active">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
											</div>
										</div>								
										<div class="tab-content">
											<div class="tab-pane" id="tab21">
												<form class="form-horizontal" role="form">
													<div class="form-group">
														<label for="email-w2">Email</label>
														<input type="email" id="email-w2" name="email-w2" class="form-control" placeholder="Email address" />
														<span class="help-block">Please enter your email</span>
													</div>
													<div class="form-group">
														<label for="password-w2">Password</label>
														<input type="password" id="password-w2" name="password-w2" class="form-control" placeholder="Password" />
														<span class="help-block">Please enter your password</span>							                    
													</div>
												</form>	
											</div>
											<div class="tab-pane" id="tab22">
												<div class="row">
													<div class="col-sm-12">
														<div class="form-group has-feedback">
															<label for="name-w2">Name</label>
															<input type="text" class="form-control" id="name-w2" placeholder="Enter your name" />
															<span class="fa fa-asterisk form-control-feedback"></span>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-12">
														<div class="form-group has-feedback">
															<label for="ccnumber-w2">Credit Card Number</label>
															<input type="text" class="form-control" id="ccnumber-w2" placeholder="0000 0000 0000 0000" />
															<span class="fa fa-asterisk form-control-feedback"></span>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group col-sm-4">
														<label for="ccmonth-w2">Month</label>
														<select class="form-control" id="ccmonth-w2">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
															<option>6</option>
															<option>7</option>
															<option>8</option>
															<option>9</option>
															<option>10</option>
															<option>11</option>
															<option>12</option>
															<option>13</option>
															<option>14</option>
															<option>15</option>
															<option>16</option>
															<option>17</option>
															<option>18</option>
															<option>19</option>
															<option>20</option>
															<option>21</option>
															<option>22</option>
															<option>23</option>
															<option>24</option>
															<option>25</option>
															<option>26</option>
															<option>27</option>
															<option>28</option>
															<option>29</option>
															<option>30</option>
															<option>31</option>	
														</select>
													</div>
													<div class="form-group col-sm-4">
														<label for="ccyear-w2">Year</label>
														<select class="form-control" id="ccyear-w2">
															<option>2014</option>
															<option>2015</option>
															<option>2016</option>
															<option>2017</option>
															<option>2018</option>
															<option>2019</option>
															<option>2020</option>
															<option>2021</option>
															<option>2022</option>
															<option>2023</option>
															<option>2024</option>
															<option>2025</option>
														</select>
													</div>
													<div class="col-sm-4">
														<div class="form-group has-feedback">
															<label for="cvv-w2">CVV/CVC</label>
															<input type="text" class="form-control" id="cvv-w2" placeholder="123" />
															<span class="fa fa-asterisk form-control-feedback"></span>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab23">
												<div class="form-group">
													<label for="company-w2">Company</label>
													<input type="text" class="form-control" id="company-w2" placeholder="Company name" />
												</div>
												<div class="form-group">
													<label for="vat-w2">VAT</label>
													<input type="text" class="form-control" id="vat-w2" placeholder="040.0253.001" />
												</div>
												<div class="form-group">
													<label for="street-w2">Street</label>
													<input type="text" class="form-control" id="street-w2" placeholder="Street" />
												</div>
												<div class="row">
													<div class="form-group col-sm-8">
														<label for="city-w2">City</label>
														<input type="text" class="form-control" id="city-w2" placeholder="City" />
													</div>
													<div class="form-group col-sm-4">
														<label for="postal-code-w2">Postal Code</label>
														<input type="text" class="form-control" id="postal-code-w2" placeholder="Postal Code" />
													</div>
												</div>
												<div class="form-group">
													<label for="country-w2">Country</label>
													<input type="text" class="form-control" id="country-w2" placeholder="Country" />
												</div>
											</div>
											<div class="tab-pane" id="tab24">
												<h4><strong>1. General Terms</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												<h4><strong>2. Products</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit.
												</p><hr />
												<h4><strong>3. Security</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit.
												</p><hr />
												<h4><strong>4. Refunds</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												<h4><strong>5. Ownership</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												<h4><strong>Changes to terms</strong></h4>
												<p>
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
												</p><hr />
												
												<div class="form-group">
													<div class="checkbox-custom checkbox-default bk-margin-bottom-10">
														<input id="checkbox-w2" name="checkbox-w2" type="checkbox"/>
														<label for="checkbox-w2"> I agree with <a href="form-wizard.html#">Terms of Service</a></label>
													</div>
												</div>
											</div>
											<div class="actions">
												<input type="button" class="btn btn-info button-previous" name="previous" value="Previous" />
												<input type="button" class="btn btn-primary button-next pull-right" name="next" value="Next" />
												<input type="button" class="btn btn-success button-finish pull-right" name="finish" value="Finish" style="display:none"/>
											</div>
										</div>	
									</div>
								</div>
							</div>							
						</div>
					</div>			
				</div>
				<!-- End Main Page -->	
		
				<!-- Usage -->
				<div id="usage">
					<ul>
						<li>
							<div class="title">Memory</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%"></div>
								</div>
							</div>			
							<div class="desc">4GB of 8GB</div>
						</li>
						<li>
							<div class="title">HDD</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"></div>
								</div>
							</div>			
							<div class="desc">250GB of 1TB</div>
						</li>
						<li>
							<div class="title">SSD</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%"></div>
								</div>
							</div>			
							<div class="desc">700GB of 1TB</div>
						</li>
						<li>
							<div class="title">Bandwidth</div>
							<div class="bar">
								<div class="progress progress-md  progress-striped active">
									<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%"></div>
								</div>
							</div>			
							<div class="desc">90TB of 100TB</div>
						</li>				
					</ul>	
				</div>
				<!-- End Usage -->
			
			</div>
		</div><!--/container-->
		
		
		<!-- Modal Dialog -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title bk-fg-primary">Modal title</h4>
					</div>
					<div class="modal-body">
						<p class="bk-fg-danger">Here settings can be configured...</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div><!-- End Modal Dialog -->

		<!-- Finish Button -->
		<div class="modal fade" id="finish-button">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title bk-fg-primary text-center">You successfully submit this form.</h4>
					</div>
				</div>
			</div>
		</div><!-- End Finish Button -->	
		
		<div class="clearfix"></div>		
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>		
		
		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/moment/js/moment.min.js"></script>	
		<script src="assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
		<script src="assets/plugins/chosen/js/chosen.jquery.min.js"></script>
		<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
		<script src="assets/plugins/placeholder/js/jquery.placeholder.min.js"></script>
		<script src="assets/plugins/wizard/js/jquery.bootstrap.wizard.min.js"></script>
		<script src="assets/plugins/maskedinput/js/jquery.maskedinput.js"></script>
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="assets/js/pages/form-wizard.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>