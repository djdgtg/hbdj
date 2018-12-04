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
<link href="static/css/search.css" rel="stylesheet">
<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="static/css/nifty.min.css" rel="stylesheet">
<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="static/css/portal/nifty-portal-icons.min.css" rel="stylesheet">
<!--Demo [ DEMONSTRATION ]-->
<link href="static/css/portal/nifty-portal.min.css" rel="stylesheet">
<!--DataTables [ OPTIONAL ]-->
    <link href="static/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<!--Font Awesome [ OPTIONAL ]-->
<link href="static/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">
<!--bootstrap-select [ OPTIONAL ]-->
    <link href="static/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">
<!--Font Awesome [ OPTIONAL ]-->
<link href="static/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">
<!--JAVASCRIPT-->
<!--Pace - Page Load Progress Par [OPTIONAL]-->
<link href="static/plugins/pace/pace.min.css" rel="stylesheet">
<script src="static/plugins/pace/pace.min.js"></script>
<!--jQuery [ REQUIRED ]-->
<script src="static/js/jquery-2.2.4.min.js"></script>
<!--BootstrapJS [ RECOMMENDED ]-->
<script src="static/js/bootstrap.min.js"></script>
<!--NiftyJS [ RECOMMENDED ]-->
<script src="static/js/nifty.min.js"></script>
<!-- WdatePicker日期时间 -->
<script src="static/plugins/My97DatePicker/WdatePicker.js"></script>
<!--Demo script [ DEMONSTRATION ]
    <script src="static/js/demo/nifty-demo.min.js"></script>-->
<!--DataTables [ OPTIONAL ]-->
    <script src="static/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="static/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="static/plugins/bootstrap-select/bootstrap-select.min.js"></script>

<!--DataTables Sample [ SAMPLE ]-->
<script src="static/js/comm.js"></script>
<script src="static/js/sysmanage/syslogs.js"></script>
</head>
<body>
	<!--Page Title-->
	<div id="page-title">
		<h1 class="page-header text-overflow">系统日志</h1>
	</div>
	<!--End page title-->

	<!--Breadcrumb-->
	<ol class="breadcrumb">
		<li><a href="#">首页</a></li>
		<li>系统管理</li>
		<li class="active">系统日志</li>
	</ol>
	<!--End breadcrumb-->

	<!--Page content-->
	<div id="page-content">
		<div class="panel">
			<div id="searchDiv" class="panel-body form-horizontal">
				<form id="searchForm">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label class="col-sm-3 control-label">日志类型：</label>
								<div class="col-sm-9">
									<select class="selectpicker" id="logTypeSel"
										name="logType"></select>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label class="col-sm-3 control-label">创建者：</label>
								<div class="col-sm-9">
									<input type="text" name="userName"
										id="userName" class="form-control" />
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label class="col-sm-3 control-label">创建时间：</label>
								<div class="col-sm-9">
									<div class='input-daterange input-group'>
										<input type="text" class="form-control"
											name="startTime" id="startTime" /> <span
											class="input-group-addon">to</span> <input type="text"
											class="form-control" name="endTime"
											id="endTime" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label class="col-sm-3 control-label"></label>
								<div class="col-sm-9">
									<button class="btn btn-default" onclick="searchSysLogs()"><i class="ion-search"></i>查询</button>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
		<div class="panel">
			<div class="panel-body">
				<table id="syslogTb" class="demo-add-niftycheck">
				</table>
			</div>
		</div>

	</div>
	<!--End page content-->
</body>
</html>

