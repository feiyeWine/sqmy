<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCtype html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
	<script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/sqmy/jsp/dataTables/media/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="/sqmy/jsp/dataTables/media/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="/sqmy/jsp/dataTables/media/css/jquery.dataTables_themeroller.css">
    <script type="text/javascript" src="/sqmy/jsp/dataTables/media/js/jquery.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/dataTables/media/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/dataTables/media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/js/datatables.js"></script>
	<script type="text/javascript" src="/sqmy/jsp/js/dateFormat.js"></script>

    <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="/sqmy/jsp/bootstrap/js/bootstrap.min.js"></script>
	<script src="/sqmy/jsp/js/jquery/jquery.validate.js"></script>
	<script src="/sqmy/jsp/js/jquery/messages_zh.js"></script>

	<style type="text/css">
		.error{
			padding-left: 16px;

			padding-bottom: 2px;

			font-weight: bold;

			color: #EA5200;
			/*background: url("/sqmy/jsp/image3/unchecked.gif") no-repeat 0px 0px;*/
		}
	</style>

</head>
<body>
	<div >
		<table id="example" class="display table-bordered" cellspacing="0" width="100%">
	    <thead>
		<tr>
			<th>序号</th>
			<th>单位编号</th>
			<th>单位名称</th>
			<th>电话号码</th>
			<th>邮箱</th>
			<th>单位类别</th>
			<th>单位级别</th>
			<th>创建时间</th>
			<th>操作</th>
		</tr>
		</thead>

			<tbody>
			<c:forEach var="unit" items="${units}">
			<tr>
				<td>${unit.id}</td>
				<td>${unit.unitNum}</td>
				<td>${unit.unitName}</td>
				<td>${unit.phoneNum}</td>
				<td>${unit.email}</td>
				<td>${unit.type}</td>
				<td>${unit.classes}</td>
				<td>
					<fmt:formatDate value="${unit.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>

				</td>
				<td><a class="modalA" href="#myModal" data-toggle="modal" >修改</a>&nbsp;&nbsp;&nbsp;<a class="deleteUnit" href="##">删除</a></td>
			</tr>
			</c:forEach>
			</tbody>

	</table>
	</div>
	<!--加入模态框-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" <%--style="z-index:10;"--%>
		 aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close"
							data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 style="font-weight: bold" class="modal-title" id="myModalLabel">
						修改单位信息
					</h4>
				</div>
				<div class="modal-body">
					<!--添加文本-->
					<div>
						<form id="modalForm" name="modalForm" class="form" action="" method="post">
							<!--<label class="label-default">id</label>-->
							<input type="text" class="control-label" id="id" name="id" value="" disabled="disabled" hidden="hidden"/>
							<div class="form-group">
								<label class="">单位编号：</label>
								<input type="text" class="form-control" id="unitNumber" name="unitNumber" value=""/>
							</div>
							<div class="form-group">
								<label class="">单位名称：</label>
								<input type="text" class="form-control" id="unitName" name="unitName" value=""/>
							</div>
							<div class="form-group">
								<label class="">电话号码：</label>
								<input type="text" class="form-control" id="unitPhoneNum" name="unitPhoneNum" value=""/>
							</div>
							<div class="form-group">
								<label class="">邮箱：</label>
								<input type="text" class="form-control" id="unitEmail" name="unitEmail" value=""/>
							</div>
							<div class="form-group">
								<label class="">单位类别：</label>
								<select class="form-control" id="unitType" name="unitType">
									<option>直报点</option>
									<option>专委会</option>
									<option>市州政协</option>
									<option>民主党派与工商联</option>
								</select>
							</div>
							<div class="form-group">
								<label class="">单位级别：</label>
								<select class="form-control" id="unitClasses" name="unitClasses">
									<option>一级</option>
									<option>二级</option>
									<option>三级</option>
								</select>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭
								</button>
								<button type="submit" id="submit" class="btn btn-primary">
									提交更改
								</button>
							</div>
						</form>
					</div>
				</div>

			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
</body>
<script type="text/javascript">
	/*window.onload(function(){
		$("tbody").children("tr").children("td").eq(7).text(jsonDateFormat($("tbody").children("tr").children("td").eq(7).text()));
	});*/
	$(function(){

		$(".modalA").click(function(){
			var $td = $(this).parents("tr").children("td");
			$("#id").val($td.eq(0).text());
			$("#unitNumber").val($td.eq(1).text()) ;
			$("#unitName").val($td.eq(2).text()) ;
			$("#unitPhoneNum").val($td.eq(3).text()) ;
			$("#unitEmail").val($td.eq(4).text()) ;
			$("#unitType").val($td.eq(5).text());
			$("#unitClasses").val($td.eq(6).text());

			/*$("#myModal").modal({
				show:true,
			});*/
		});

		/*$("#myModal").modal({
			show:false,
			backdrop:false,
		});*/

		$(".deleteUnit").click(function(){
			var $td = $(this).parents("tr").children("td");
			var id = $td.eq(0).text();
			$.post("/sqmy/deleteUnit.do",{"id":id},function(data){
				if(data.status=="success"){
					alert("删除成功");
					window.location.reload();
				}else{
					alert("删除失败");
				}
			});
		});
	});

/*	$("#submit").click(function(){
		$.post("/sqmy/modifyUnit.do",{"id":$("#id").val(),"unitNumber":$("#unitNumber").val(),"unitName":$("#unitName").val(),
			"unitPhoneNum":$("#unitPhoneNum").val(),"unitEmail":$("#unitEmail").val(),"unitType":$("#unitType").val(),
		"unitClasses":$("#unitClasses").val()},function(data){
			if(data.status=="success"){
				alert("修改成功");
				window.location.reload();
			}else{
				alert("修改失败");
			}
		});
	});*/
	$().ready(function() {
		// 在键盘按下并释放及提交后验证提交表单


		$("#modalForm").validate({
			submitHandler: function(){
				$.post("/sqmy/modifyUnit.do",{"id":$("#id").val(),"unitNumber":$("#unitNumber").val(),"unitName":$("#unitName").val(),
					"unitPhoneNum":$("#unitPhoneNum").val(),"unitEmail":$("#unitEmail").val(),"unitType":$("#unitType").val(),
					"unitClasses":$("#unitClasses").val()},function(data){
					if(data.status=="success"){
						alert("修改成功");
						window.location.reload();
					}else{
						alert("修改失败");
					}
				});
			},

			errorPlacement:function(error,element) {
				element.prev().append(error);
			},

			success:"checked",
			rules: {

				unitNumber: {
					required: true,
					minlength: 3,
					maxlength:20,
				},
				unitName:{
					required:true,
					minlength:3,
					maxlength:30,
				},
				unitPhoneNum:{
					required:true,
					isPhone:true,
					maxlength:15,
				},
				unitEmail: {
					required: true,
					email: true,
					maxlength:30,
				},
			},
			messages: {
				unitName: {
					required: "单位名称不能为空",
					minlength: "长度为3-20个字符"
				},
				unitNumber: {
					required: "单位编号不能为空",
					minlength: "长度为3-30个字符"
				},
				unitEmail: "请输入正确的邮箱",
				unitPhoneNum:"请输入正确的电话号码",
			}
		});
	});
	// 联系电话(手机/电话皆可)验证
	jQuery.validator.addMethod("isPhone", function(value,element) {
		var length = value.length;
		var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
		var tel = /^\d{3,4}-?\d{7,9}$/;
		return this.optional(element) || (tel.test(value) || mobile.test(value));

	}, "请正确填写您的联系电话");

</script>

</html>