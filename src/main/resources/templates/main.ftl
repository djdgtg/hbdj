<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>党建知家平台管理</title>

<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="static/css/nifty.min.css" rel="stylesheet">


<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="static/css/demo/nifty-demo-icons.min.css" rel="stylesheet">
<!--Demo [ DEMONSTRATION ]-->
<link href="static/css/demo/nifty-demo.min.css" rel="stylesheet">

<!--Morris.js [ OPTIONAL ]-->
<link href="static/plugins/morris-js/morris.min.css" rel="stylesheet">

<!--Magic Checkbox [ OPTIONAL ]-->
<link href="static/plugins/magic-check/css/magic-check.min.css"
	rel="stylesheet">
<link href="static/plugins/bootstrap-validator/bootstrapValidator.min.css"
	rel="stylesheet">

<!--JAVASCRIPT-->
<!--Pace - Page Load Progress Par [OPTIONAL]-->
<link href="static/plugins/pace/pace.min.css" rel="stylesheet">
<script src="static/plugins/pace/pace.min.js"></script>


<!--jQuery [ REQUIRED ]-->
<script src="static/js/jquery-2.2.4.min.js"></script>

<!--BootstrapJS [ RECOMMENDED ]-->
<script src="static/plugins/bootbox/bootbox.min.js"></script>
<script src="static/js/bootstrap.js"></script>

<!--NiftyJS [ RECOMMENDED ]-->
<script src="static/js/nifty.js"></script>

<!--Demo script [ DEMONSTRATION ]-->
<script src="static/js/demo/nifty-demo.min.js"></script>

<!--Morris.js [ OPTIONAL ]-->
<script src="static/plugins/bootbox/bootbox.min.js"></script>
<script src="static/plugins/morris-js/morris.min.js"></script>
<script src="static/plugins/bootstrap-validator/bootstrapValidator.js"></script>
<script src="static/plugins/morris-js/raphael-js/raphael.min.js"></script>
<!--Sparkline [ OPTIONAL ]-->
<script src="static/plugins/sparkline/jquery.sparkline.min.js"></script>

<!--自定义js-->
<script src="static/js/comm.js"></script>
<script src="static/js/portal/index.js"></script>
</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->
<body>
	<div id="container" class="effect aside-float aside-bright mainnav-lg">
		<!--NAVBAR-->
		<!--===================================================-->
		<header id="navbar">
			<div id="navbar-container" class="boxed">
				<!--Brand logo & name-->
				<!--================================-->
				<div class="navbar-header">
					<a href="main.html" class="navbar-brand"> <img
						src="static/img/logo.png" class="brand-icon">
						<div class="brand-title">
							<span class="brand-text">党建知家平台管理</span>
						</div>
					</a>
				</div>
				<!--================================-->
				<!--End brand logo & name-->
				<!--Navbar Dropdown-->
				<!--================================-->
				<div class="navbar-content clearfix">
					<ul class="nav navbar-top-links pull-left">

						<!--Navigation toogle button-->
						<li class="tgl-menu-btn"><a class="mainnav-toggle" href="#">
								<i class="demo-pli-view-list"></i>
						</a></li>
						<!--End Navigation toogle button-->
					</ul>
					<ul class="nav navbar-top-links pull-right">
						<!--User dropdown-->
						<li id="dropdown-user" class="dropdown"><a href="#"
							data-toggle="dropdown" class="dropdown-toggle text-right"> <span
								class="pull-right"> <i class="demo-pli-male ic-user"></i>
							</span>
								<div class="username hidden-xs" id="topSideUserName"></div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">
								<!-- User dropdown menu -->
								<ul class="head-list">
									<li><a href="#" onclick="userProfile()"> <i
											class="demo-pli-male icon-lg icon-fw"></i> 个人信息
									</a></li>
									<li><a href="#" onclick="editPswd()"> <i
											class="demo-pli-speech-bubble-3 icon-lg icon-fw"></i> 密码修改
									</a></li>
								</ul>

								<!-- Dropdown footer -->
								<div class="pad-all text-right">
									<a href="#" onclick="logout()" class="btn btn-primary"> <i
										class="demo-pli-unlock"></i> 退出登录
									</a>
								</div>
							</div></li>
						<!--End user dropdown-->
					</ul>
				</div>
				<!--================================-->
				<!--End Navbar Dropdown-->

			</div>
		</header>
		<!--===================================================-->
		<!--END NAVBAR-->
		<div class="boxed">
			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">
				<iframe name="_iframe" src="welcome" marginwidth="0"
					marginheight="0" style="width: 100%; height: 100%; border: none;"></iframe>
			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
			<!--MAIN NAVIGATION-->
			<!--===================================================-->
			<nav id="mainnav-container">
				<div id="mainnav">
					<!--Menu-->
					<!--================================-->
					<div id="mainnav-menu-wrap">
						<div class="nano has-scrollbar">
							<div class="nano-content">
								<div id="mainnavDiv"></div>
							</div>
						</div>
					</div>
					<!--================================-->
					<!--End menu-->
				</div>
			</nav>
			<!--===================================================-->
			<!--END MAIN NAVIGATION-->
		</div>
		<!--Default Bootstrap Modal-->
		<div class="modal fade" id="profileModal" role="dialog" tabindex="-1"
			aria-labelledby="profileModal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!--Modal header-->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<i class="pci-cross pci-circle"></i>
						</button>
						<h4 class="modal-title">个人信息</h4>
					</div>
					<form id="profileForm" method="post" class="form-horizontal">
						<!--Modal body-->
						<div class="modal-body">
							<div class="form-group">
								<label class="col-lg-3 control-label">真实姓名：</label>
								<div class="col-lg-7">
									<input type="text" class="form-control"
										name="realname" id="realName"> <input
										type="hidden" class="form-control" name="userid"
										id="userIdForProfile">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">联系方式：</label>
								<div class="col-lg-7">
									<input type="text" class="form-control"
										name="phone" id="phone">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">邮箱：</label>
								<div class="col-lg-7">
									<input type="text" class="form-control"
										name="email" id="email">
								</div>
							</div>
						</div>

						<!--Modal footer-->
						<div class="modal-footer">
							<button data-dismiss="modal" class="btn btn-default"
								type="button">取消</button>
							<button class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--End Default Bootstrap Modal-->
		<!--Default Bootstrap Modal-->
		<div class="modal fade" id="pswdModal" role="dialog" tabindex="-1"
			aria-labelledby="pswdModal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!--Modal header-->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<i class="pci-cross pci-circle"></i>
						</button>
						<h4 class="modal-title">密码修改</h4>
					</div>
					<form id="pswdForm" method="post" class="form-horizontal">
						<!--Modal body-->
						<div class="modal-body">
							<div class="form-group">
								<label class="col-lg-3 control-label">当前密码：</label>
								<div class="col-lg-7">
									<input type="password" class="form-control"
										name="oldPswd" id="oldPswd">
									<input type="hidden" class="form-control"
										name="userId" id="userId"> <input
										type="hidden" id="pswd" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">新密码：</label>
								<div class="col-lg-7">
									<input type="password" class="form-control"
										name="password" id="newPswd">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-3 control-label">确认新密码：</label>
								<div class="col-lg-7">
									<input type="password" class="form-control" name="reNewPswd"
										id="reNewPswd">
								</div>
							</div>
						</div>
						<!--Modal footer-->
						<div class="modal-footer">
							<button data-dismiss="modal" class="btn btn-default"
								type="button">取消</button>
							<button class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--End Default Bootstrap Modal-->
		<!-- FOOTER -->
		<footer id="footer">
			<p class="copyright">Copyright &copy; 2018.Company name All rights reserved Retech</p>
		</footer>
		<!-- END FOOTER -->
		<!-- SCROLL PAGE BUTTON -->
		<!--===================================================-->
		<button class="scroll-top btn">
			<i class="pci-chevron chevron-up"></i>
		</button>
		<!--===================================================-->
	</div>
	<!-- END OF CONTAINER -->
</body>
</html>
