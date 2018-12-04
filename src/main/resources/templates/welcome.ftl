<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>知识服务平台管理</title>
<!--Open Sans Font [ OPTIONAL ]-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="static/css/welcome.css" rel="stylesheet">
<!--Nifty Premium Icon [ PORTAL ]-->
<link href="static/css/portal/nifty-portal-icons.min.css" rel="stylesheet">
<!--Demo [ PORTAL ]-->
<link href="static/css/portal/nifty-portal.min.css" rel="stylesheet">
<!--Morris.js [ OPTIONAL ]-->
<link href="static/plugins/morris-js/morris.min.css" rel="stylesheet">
<!--Magic Checkbox [ OPTIONAL ]-->
<link href="static/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">
<!--Pace - Page Load Progress Par [OPTIONAL]-->
<link href="static/plugins/pace/pace.min.css" rel="stylesheet">
<script src="static/plugins/pace/pace.min.js"></script>
<!--jQuery [ REQUIRED ]-->
<script src="static/js/jquery-2.2.4.min.js"></script>
<script src="static/plugins/bootbox/bootbox.min.js"></script>
<!--BootstrapJS [ RECOMMENDED ]-->
<script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/comm.js"></script>
    <script>
    $(document).ready(function() {
    	$.ajax({
			type: "POST",
			url: "/hbdj/manager/loadLoginUser",
			success: function (data) {  
	        	if(data != null){
	        		if(data.lastlogintime!=null){
		    			var date = new Date(data.lastlogintime);
	            		$("#loginUserLoginTime")[0].innerText = date.Format("yyyy-MM-dd hh:mm:ss");
	        		}
	        		else{
	        			$("#loginUserLoginTime")[0].innerText ='欢迎，您是首次登陆';
	        		}
	        	}
	        }
        });
    });
    </script>
<!--NiftyJS [ RECOMMENDED ]-->
<script src="static/js/nifty.min.js"></script>
<!--Portal script [ PORTAL ]-->
<script src="static/js/portal/nifty-portal.min.js"></script>
<!--Morris.js [ OPTIONAL ]-->
<script src="static/plugins/morris-js/morris.min.js"></script>
<script src="static/plugins/morris-js/raphael-js/raphael.min.js"></script>
<!--Sparkline [ OPTIONAL ]-->
<script src="static/plugins/sparkline/jquery.sparkline.min.js"></script>
</head>

<body>
	<!--Page Title-->
	<div id="page-title">
		<h1 class="page-header text-overflow">欢迎页</h1>
	</div>
	<!--End page title-->

	<!--Page content-->
	<div id="page-content">

		<div class="row">
			<div class="col-lg-9">
				<div id="demo-panel-network" class="panel">
					<div class="panel-body">
						<div class="row pad-top">
							<div class="col-lg-8">
								<div class="media">
									<div class="media-body pad-lft">
										<div class="pad-btm">
											<p class="text-semibold text-main mar-no">您上次登录的时间：</p>
											<p class="pull-left mar-no" id="loginUserLoginTime"></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--End page content-->
</body>
</html>
