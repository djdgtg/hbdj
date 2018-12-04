<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>知识服务平台管理</title>
<!--Open Sans Font [ OPTIONAL ]-->
<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="../static/css/bootstrap.min.css" rel="stylesheet">
<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="../static/css/nifty.min.css" rel="stylesheet">
<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="../static/css/portal/nifty-portal-icons.min.css"
	rel="stylesheet">
<!--Demo [ DEMONSTRATION ]-->
<link href="../static/css/portal/nifty-portal.min.css" rel="stylesheet">

<!--DataTables [ OPTIONAL ]-->
<link href="../static/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<!--jquery treegrid [ OPTIONAL ]-->
<link href="../static/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">

<!--Font Awesome [ OPTIONAL ]-->
<link href="../static/plugins/magic-check/css/magic-check.min.css"
	rel="stylesheet">
<!--Bootstrap Validator [ OPTIONAL ]-->
<link
	href="../static/plugins/bootstrap-validator/bootstrapValidator.min.css"
	rel="stylesheet">
<!--Ion Icons [ OPTIONAL ]-->
<link href="../static/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="../static/plugins/dropzone/dropzone.min.css" rel="stylesheet">

<!--Bootstrap Select [ OPTIONAL ]-->
<link href="../static/plugins/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet">
<link href="../static/plugins/bootstrap-treeview/bootstrap-treeview.css"
	rel="stylesheet">

<!--JAVASCRIPT-->
<!--Pace - Page Load Progress Par [OPTIONAL]-->
<link href="../static/plugins/pace/pace.min.css" rel="stylesheet">
<script src="../static/plugins/pace/pace.min.js"></script>
<!--jQuery [ REQUIRED ]-->
<script src="../static/js/jquery-2.2.4.min.js"></script>
<!--BootstrapJS [ RECOMMENDED ]-->
<script src="../static/js/bootstrap.min.js"></script>
<!--NiftyJS [ RECOMMENDED ]-->
<script src="../static/js/nifty.min.js"></script>
<!--Bootbox Modals [ OPTIONAL ]-->
<script src="../static/plugins/bootbox/bootbox.min.js"></script>
<script src="../static/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../static/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<!-- <script src="../static/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script> -->
<!--Bootstrap Validator [ OPTIONAL ]-->
<script
	src="../static/plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
<!--Masked Input [ OPTIONAL ]-->
<script src="../static/plugins/masked-input/jquery.maskedinput.min.js"></script>
<!--Form validation [ PORTAL ]-->
<script src="../static/js/portal/form-validation.js"></script>
<script src="../static/plugins/dropzone/dropzone.js"></script>

<!--Bootstrap Select [ OPTIONAL ]-->
<script src="../static/plugins/bootstrap-select/bootstrap-select.min.js"></script>
<script src="../static/plugins/bootstrap-treeview/bootstrap-treeview.js"></script>
<!--fileinput文件上传  -->	
<link  type="text/css" href="../static/plugins/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
<script type="text/javascript" src="../static/plugins/bootstrap-fileinput/js/fileinput.min.js"></script>
<script type="text/javascript" src="../static/plugins/bootstrap-fileinput/js/zh.js"></script>
<!-- bootstrap-table-editable -->
<link href="../static/plugins/x-editable/css/bootstrap-editable.css" rel="stylesheet">
<script src="../static/plugins/x-editable/js/bootstrap-editable.js"></script>
<script src="../static/plugins/bootstrap-table/extensions/editable/bootstrap-table-editable.js"></script>
<!-- excel导出 -->
<script
	src="../static/plugins/bootstrap-table/extensions/export/tableExport.js"></script>
<script
	src="../static/plugins/bootstrap-table/extensions/export/bootstrap-table-export.js"></script>
<!-- WdatePicker日期时间 -->
<script src="../static/plugins/My97DatePicker/WdatePicker.js"></script>
<!-- kindeditor富文本编辑器 -->
<script src="../static/plugins/kindeditor/kindeditor-all.js"></script>

<!--DataTables Sample [ PORTAL ]-->
<script src="../static/js/comm.js"></script>
<script src="../static/js/resourcemanage/resource.js"></script>
<script src="../static/js/des/tripledes.js"></script>
<script src="../static/js/des/mode-ecb.js"></script>
<script src="../static/js/highcharts/highcharts.js"></script>
</head>
<body>
	<!--Page Title-->
	<div id="page-title">
		<h1 class="page-header text-overflow" id="headMenuVal">资源管理</h1>
	</div>
	<!--End page title-->

	<!--Breadcrumb-->
	<ol class="breadcrumb">
		<li><a href="#">首页</a></li>
		<li id="firstMenuVal">知识组织</li>
		<li id="secondMenuVal" class="active">知识管理</li>
	</ol>
	<!--End breadcrumb-->

	<!--Page content-->
	<div id="page-content">
		<div class="panel">
			<form id="searchForm" class="panel-body form-horizontal">
				<input type="hidden" name="mouldId" id="mouldSelect" /> 
				<input type="hidden" name="databaseName" id="dbSelect" />
				<div id="searchDiv"></div>
			</form>
		</div>
		<div class="panel">
			<div id="toolbar">
				<span id="curdArea">
					<button class="btn btn-primary" onclick="resourceModal(0)"><i class="ion-plus"></i> 新增</button>
					<button class="btn btn-mint" onclick="resourceModal(1)"><i class="ion-edit"></i> 修改</button>
					<button class="btn btn-danger" onclick="delResource(-1)"><i class="ion-close"></i> 删除</button>
				</span> 
				<span id="userlockArea">
					<button class="btn btn-primary" onclick="userlock(1)"><span class="glyphicon glyphicon-ok"></span> 解锁</button>
					<button class="btn btn-danger" onclick="userlock(-2)"><span class="glyphicon glyphicon-remove"></span> 锁定</button>
				</span> 
				<span id="importAndExportArea">
					<button class="btn " onclick="downImportAndExportModal(0)">
						<i class="ion-forward"></i> 下载导入模板
					</button>
					<button class="btn " onclick="resImportModal()">
						<i class="ion-forward"></i> 导入数据
					</button>
					<button class="btn " onclick="downImportAndExportModal(1)">
						<i class="ion-reply"></i> 导出数据
					</button>
				</span>
				<input type="hidden" id="optype">
			</div>
			<div class="panel-body">
				<table id="resourceTb" class="demo-add-niftycheck"></table>
			</div>
			<div class="panel panel-body" align="center" id="highchart">
				<button id="large">放大</button>
				<button id="small">缩小</button>
				<div id="container" style="width: 800px; height: 700px"></div>
			</div>
		</div>
	</div>
	<!--End page content-->
	<!--Default Bootstrap Modal-->
	<div class="modal fade" id="resModal" role="dialog" tabindex="-1" aria-labelledby="resModal" aria-hidden="true" style="overflow: auto" data-backdrop="static">
		<div class="modal-dialog" style="width: 70%">
			<div class="modal-content">
				<!--Modal header-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><i class="pci-cross pci-circle"></i></button>
					<h4 class="modal-title">资源数据</h4>
					<div><label>带<span style="color: red">✲</span>为必填</label></div>
				</div>
				<form id="resourceForm" method="post" class="form-horizontal">
					<!--Modal body-->
					<div class="modal-body" id="resFormDiv"></div>
					<!--Modal footer-->
					<div class="modal-footer">
						<button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
						<button class="btn btn-primary">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--End Default Bootstrap Modal-->

	<!--导入数据start-->
	<div class="modal fade" id="importResModal" role="dialog" tabindex="-1" aria-labelledby="importResModal" aria-hidden="true">
		<div class="modal-dialog" style="width: 40%">
			<div class="modal-content">
				<!--Modal header-->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><i class="pci-cross pci-circle"></i></button>
					<h4 class="modal-title">导入数据</h4>
				</div>
				<form id="importResForm" method="post" class="form-horizontal">
					<!--Modal body-->
					<div class="modal-body" id="importDiv">
						<div class="form-group">
							<div class="col-lg-3" >
								<label class="control-label" style="text-align: right;width: 165px;height: 40px;line-height: 29px;">上传文件:</label>
							</div>
							<div class="col-lg-7">
								<input id="importRes" name="file" multiple type="file" data-show-caption="true" />
							</div>
						</div>
					</div>
					<!--Modal footer-->
					<div class="modal-footer">
						<button class="btn btn-primary" id="importResId">确认</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--导入数据end-->
	
	<!--加载中样式-->
	<style>
.loadEffect {
	width: 100px;
	height: 100px;
	position: relative;
	margin: 0 auto;
	margin-top: 100px;
}

.loadEffect span {
	display: inline-block;
	width: 16px;
	height: 16px;
	border-radius: 50%;
	background: lightgreen;
	position: absolute;
	-webkit-animation: load 1.04s ease infinite;
}

@
-webkit-keyframes load { 
	0%{
		opacity: 1;
	}
	100%{
		opacity:0.2;
	}
}
.loadEffect span:nth-child(1) {
	left: 0;
	top: 50%;
	margin-top: -8px;
	-webkit-animation-delay: 0.13s;
}
.loadEffect span:nth-child(2) {
	left: 14px;
	top: 14px;
	-webkit-animation-delay: 0.26s;
}

.loadEffect span:nth-child(3) {
	left: 50%;
	top: 0;
	margin-left: -8px;
	-webkit-animation-delay: 0.39s;
}

.loadEffect span:nth-child(4) {
	top: 14px;
	right: 14px;
	-webkit-animation-delay: 0.52s;
}

.loadEffect span:nth-child(5) {
	right: 0;
	top: 50%;
	margin-top: -8px;
	-webkit-animation-delay: 0.65s;
}

.loadEffect span:nth-child(6) {
	right: 14px;
	bottom: 14px;
	-webkit-animation-delay: 0.78s;
}

.loadEffect span:nth-child(7) {
	bottom: 0;
	left: 50%;
	margin-left: -8px;
	-webkit-animation-delay: 0.91s;
}

.loadEffect span:nth-child(8) {
	bottom: 14px;
	left: 14px;
	-webkit-animation-delay: 1.04s;
}
</style>
	<div class="modal fade" id="loadEffect" role="dialog" tabindex="-1" aria-labelledby="loadEffect" aria-hidden="true">
		<div class="modal-dialog">
			<div class="loadEffect">
				<span></span> <span></span> <span></span> <span></span> 
				<span></span> <span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<!--加载中样式-->
</body>
</html>

