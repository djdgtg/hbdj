<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>知识服务平台管理</title>
<!--Open Sans Font [ OPTIONAL ]-->
<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'> -->
<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="../static/css/bootstrap.min.css" rel="stylesheet">
<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="../static/css/nifty.min.css" rel="stylesheet">
<link href="../static/css/search.css" rel="stylesheet">
<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="../static/css/portal/nifty-portal-icons.min.css" rel="stylesheet">
<!--Demo [ DEMONSTRATION ]-->
<link href="../static/css/portal/nifty-portal.min.css" rel="stylesheet">

<!--DataTables [ OPTIONAL ]-->
    <link href="../static/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../static/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">
<!--Font Awesome [ OPTIONAL ]-->
<link href="../static/plugins/magic-check/css/magic-check.min.css" rel="stylesheet">
<!--Bootstrap Validator [ OPTIONAL ]-->
<link href="../static/plugins/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">
<!--Ion Icons [ OPTIONAL ]-->
<link href="../static/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">


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
    <script src="../static/plugins/bootstrap-select/bootstrap-select.min.js"></script>
<!--Bootstrap Validator [ OPTIONAL ]-->
<script src="../static/plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
<!--Masked Input [ OPTIONAL ]-->
<script src="../static/plugins/masked-input/jquery.maskedinput.min.js"></script>
<!--Form validation [ PORTAL ]-->
<script src="../static/js/portal/form-validation.js"></script>

<!--DataTables Sample [ PORTAL ]-->
<script src="../static/js/comm.js"></script>
<script src="../static/js/resourcemanage/datalibrarys.js"></script>
</head>
<body>
	<!--Page Title-->
	<div id="page-title">
		<h1 class="page-header text-overflow">知识库管理</h1>
	</div>
	<!--End page title-->

	<!--Breadcrumb-->
	<ol class="breadcrumb">
		<li><a href="#">首页</a></li>
		<li>知识组织</li>
		<li class="active">知识库管理</li>
	</ol>
	<!--End breadcrumb-->

	<!--Page content-->
	<div id="page-content">
		<div class="panel">
			<div id="searchDiv" style="margin: auto;margin-left:10px;margin-top: 5px;margin-bottom: 5px;">
 				所属模型：<select class="selectpicker" id="mouldSel"></select>&nbsp;&nbsp;&nbsp;
				<select class="selectpicker" id="dbNameSel">
					<option value="dbname">库名</option>
					<option value="dbcname">库中文名</option>
				</select>
				<input type="text" class="searchInputText" id="nameForSearch" />&nbsp;&nbsp;&nbsp;
				资源状态：<select class="selectpicker" id="statusSel">
					<option value="" selected="selected">全部</option>
					<option value="1">正常</option>
					<option value="-2">锁定</option>
				</select>&nbsp;&nbsp;&nbsp;
				<button class="btn btn-default" onclick="searchDb()"><i class="ion-search"></i> 搜索</button>
			</div>
		</div>
		<div class="panel">
			<div id="toolbar" class="table-toolbar-left">
				<button class="btn btn-primary" onclick="datalibraryModal(0)"><i class="ion-plus"></i> 新增</button>
				<button class="btn btn-mint" onclick="datalibraryModal(1)"><i class="ion-edit"></i> 修改</button>
				<button class="btn btn-danger" onclick="delDatalibrary()"><i class="ion-close"></i> 删除</button>
				<button class="btn" onclick="lockUnlock()"><i class="ion-locked"></i> 启用/禁用</button>
				<!-- <button class="btn" onclick=""><i class="ion-social-buffer"></i> 资源管理</button> -->
				<input type="hidden" id="optype">
			</div>
			<div class="panel-body">
				<table id="datalibraryTb" class="demo-add-niftycheck"></table>
			</div>
		</div>
	</div>
	<!--End page content-->
	<!--Default Bootstrap Modal-->
    <div class="modal fade" id="dbLibModal" role="dialog" tabindex="-1" aria-labelledby="dbLibModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <!--Modal header-->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><i class="pci-cross pci-circle"></i></button>
                    <h4 class="modal-title" id="modalTitle"></h4>
                </div>
                <form id="addForm" method="post" class="form-horizontal">
	                <!--Modal body-->
	                <div class="modal-body">
						<div class="form-group">
							<label class="col-lg-3 control-label">模型：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="mouldid" id="dbMouldSelect"></select>
								<input type="hidden" name="databaseid" id="databaseId">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">库名：</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="databasename" id="databaseName" placeholder="由字母、数字、下划线组成">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">库中文名：</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="databasecname" id="databaseCName" placeholder="请输入中文">
							</div>
						</div>
						<div class="form-group" id="nexusListDiv">
							<label class="col-lg-3 control-label">库关联：</label>
							<div class="col-lg-7" id="nexusList">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">数据流程类型：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="datasteptype" id="dataStepTypeSel"></select>
							</div>
						</div>
						<div class="form-group" id="perfileColSelDiv">
							<label class="col-lg-3 control-label">标引文件字段：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="perfectfilecol" id="perfileColSel"></select>
							</div>
						</div>
						<div class="form-group" id="processFileColSelDiv">
							<label class="col-lg-3 control-label">加工文件字段：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="processfilecol" id="processFileColSel"></select>
							</div>
						</div>
						<div class="form-group" id="readFileColSelDiv">
							<label class="col-lg-3 control-label">阅读文件字段：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="readFileCol" id="readFileColSel"></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">是否商品库：</label>
							<div class="col-lg-7">
								<input type="hidden" name="isware" id="isWare">
								<input type="checkbox" class="magic-checkbox" id="isWareCheckbox">
								<label for="isWareCheckbox"></label>系统自动添加价格和折扣字段
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">描述：</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="description" id="description">
								<input type="hidden" name="libraryNexusStr" id="libraryNexusStr" />
							</div>
						</div>
						<div class="form-group" id="nexusDataListDiv" style="display: none;"></div>
	                </div>
	
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
    
    
	<!--Default Bootstrap Modal-->
    <div class="modal fade" id="nexusModal" role="dialog" tabindex="-2" aria-labelledby="nexusModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <!--Modal header-->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><i class="pci-cross pci-circle"></i></button>
                    <h4 class="modal-title">指定关系库及字段</h4>
                </div>
                <form id="nexusForm" method="post" class="form-horizontal">
	                <!--Modal body-->
	                <div class="modal-body">
						<div class="form-group">
							<label class="col-lg-3 control-label">原字段：</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="mdbfield" id="mdbField" readonly="readonly" />
								<input type="hidden" id="indexValue" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">关系资源库：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="sdbname" id="sdbNameSel"></select>
							</div>
						</div>
						<div class="form-group" id="nexusListDiv">
							<label class="col-lg-3 control-label">关系字段选项值：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="sdbvaluefield" id="sdbValueSel"></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">关系字段选项名：</label>
							<div class="col-lg-7">
								<select class="selectpicker" name="sdbnamefield" id="sdbNameFieldSel"></select>
							</div>
						</div>
						<div class="form-group" id="nexusListDiv">
							<label class="col-lg-3 control-label">高级语句：</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="sdbsql" id="sdbSql" readonly="readonly"/>
							</div>
						</div>
	                </div>
	
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
</body>
</html>

