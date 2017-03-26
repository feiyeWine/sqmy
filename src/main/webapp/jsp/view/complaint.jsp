<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="/sqmy/jsp/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="/sqmy/jsp/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="/sqmy/jsp/bootstrap/js/bootstrap.js"></script>

    <script src="/sqmy/jsp/js/jquery/jquery.validate.js"></script>
    <script src="/sqmy/jsp/js/jquery/messages_zh.js"></script>
	
	 <style type="text/css">
        .error{
            padding-left: 8px;

            padding-bottom: 2px;

            font-weight: bold;
            font-size: 8px;

            color: #EA5200;
            /*background: url("/sqmy/jsp/image3/unchecked.gif") no-repeat 0px 0px;*/
        }
    </style>
</head>
	<body>
		<div align="center"><h2>投诉举报信息表</h2></div>
		<div style="border: solid 2px #ccc;height:100%">
			<form id="complaintForm" name="complaintForm" action="/sqmy/addComplaint.do" enctype="multipart/form-data" role="form" class="form-inline" method="post" accept-charset="utf-8">
				<div class="form-group col-md-4">
					<label class="" for="username">姓名：</label>
					<input type="text" id="username" name="username" class="form-control"/>
				</div>
				<div class="form-group  col-md-4">
					<label class="" for="idcard">身份证号：</label>
					<input type="text" id="idcard" name="idcard" class="form-control"/>
				</div>
				<div class="form-group col-md-4">
					<label class="" for="userSex">性别：</label>
					<select  id="userSex" name="userSex" class="form-control">
						<option value="man">男</option>
						<option value="woman">女</option>
						option
					</select>
				</div>
				<div class="form-group col-md-4">
					<label class="" for="userJob">职业：</label>
					<input type="text" id="userJob" name="userJob" class="form-control"/>
				</div>
				<div class="form-group col-md-4">
					<label class="" for="userPhone">电话号码：</label>
					<input type="text" id="userPhone" name="userPhone" class="form-control"/>
				</div>
				<div class="form-group col-md-4">
					<label class="" for="userAddress">地址：</label>
					<input type="text" id="userAddress" name="userAddress" class="form-control"/>
				</div>
				<div class="form-group col-md-12">
					<label class="" for="userContent">举报内容：</label>
					 <textarea id="userContent" name="userContent" style="margin-left: 10px;width: 100%;height: 500px"></textarea>
            			<script type="text/javascript">CKEDITOR.replace("userContent",{
               				 uiColor: '#CCEAEE'
            			});</script>
				</div>
				<div class="form-group col-md-6">
					<label class="" for="attachment">附件：</label>
					<input type="file" id="attachment" name="attachment" class="form-control"/>
				</div>

				<div class="form-group col-md-6">
					<label class="" for="unit">举报单位：</label>
					<input type="text" id="unit" name="unit" class="form-control"/>
				</div>
				<div class="form-group " style="margin-top: 50px;margin-left: 600px">
					<button type="submit" class="btn btn-info" id="submit" name="submit">提交</button>
				</div>
                <input type="text" id="status" value="${status}"  style="display: none"/>
			</form>
		</div>
	</body>
	<script type="text/javascript">

        $(function(){
            if($("#status").val()=="success"){
                alert("投诉成功");
            }else if($("#status").val()=="fail"){
                alert("投诉失败");
            }
        });

        /*$("#submit").click(function(){
            var form = new FormData(document.getElementById("complaintForm"));
            alert(CKEDITOR.instances.userContent.getData()+"  a");

            $.ajax({
                url:"/sqmy/addComplaint.do",
                type:"post",
                data:form,"content=":CKEDITOR.instances.userContent.getData(),
                processData:false,
                contentType:true,
                success:function(data){
                    alert("投诉成功！")
//                    window.location.reload();
                },
                error:function(e){
                    alert("投诉失败，请重新填写！");
                }
            });*/


            /*$.post("/sqmy/addComplaint.do",form,function(data){
                if(data.status =="success"){
                    alert(投诉成功);
            }else{
                alert("投诉失败");
            }
            });

        });*/

		 //验证表单
        $().ready(function() {
            // 在键盘按下并释放及提交后验证提交表单


            $("#complaintForm").validate({

                /*errorPlacement:function(error,element) {
                    element.prev().append(error);
                },
*/
                success:"checked",
                rules: {
                    username: {
                        required: true,
                        minlength: 2,
                        maxlength:20,
                    },
                    idcard: {
                        required: true,
                        isIdCardNo:true,
                    },

                    userPhone:{
                        required:true,
                        isPhone:true,
                        maxlength:15,
                    },
                   
                   userAddress:{
                   	required:true,
                   },
                   unit:{
                   	required:true,
                   }
                },
                // userContent:{
                // 	isContent:true,
                // },
                messages: {
                    username: {
                        required: "请输入姓名",
                        minlength: "长度为3-20个字符"
                    },

                    userPhone:"请输入正确的电话号码",
                    idcard:"请输入身份证号码",
                    userAddress:"请输入地址",
                    userContent:"请输入内容",
                    unit:"请输入单位名称",
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

        //验证身份证号
        jQuery.validator.addMethod("isIdCardNo", function (value, element) {
            return this.optional(element) || isIdCardNo(value);
        }, "请正确输入您的身份证号码");
        //举报内容
        //  jQuery.validator.addMethod("isContent", function (value, element) {
        //     // return (CKEDITOR.instances.userContent.getData()==""||CKEDITOR.instances.userContent.getData()==null);
            
        // }, "请填写内容");

        //增加身份证验证
        function isIdCardNo(num) {
            var factorArr = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
            var parityBit = new Array("1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2");
            var varArray = new Array();
            var intValue;
            var lngProduct = 0;
            var intCheckDigit;
            var intStrLen = num.length;
            var idNumber = num;
            // initialize
            if ((intStrLen != 15) && (intStrLen != 18)) {
                return false;
            }
            // check and set value
            for (i = 0; i < intStrLen; i++) {
                varArray[i] = idNumber.charAt(i);
                if ((varArray[i] < '0' || varArray[i] > '9') && (i != 17)) {
                    return false;
                } else if (i < 17) {
                    varArray[i] = varArray[i] * factorArr[i];
                }
            }
            if (intStrLen == 18) {
                //check date
                var date8 = idNumber.substring(6, 14);
                if (isDate8(date8) == false) {
                    return false;
                }
                // calculate the sum of the products
                for (i = 0; i < 17; i++) {
                    lngProduct = lngProduct + varArray[i];
                }
                // calculate the check digit
                intCheckDigit = parityBit[lngProduct % 11];
                // check last digit
                if (varArray[17] != intCheckDigit) {
                    return false;
                }
            }
            else {        //length is 15
                //check date
                var date6 = idNumber.substring(6, 12);
                if (isDate6(date6) == false) {
                    return false;
                }
            }
            return true;
        }
        function isDate6(sDate) {
            if (!/^[0-9]{6}$/.test(sDate)) {
                return false;
            }
            var year, month, day;
            year = sDate.substring(0, 4);
            month = sDate.substring(4, 6);
            if (year < 1700 || year > 2500) return false
            if (month < 1 || month > 12) return false
            return true
        }

        function isDate8(sDate) {
            if (!/^[0-9]{8}$/.test(sDate)) {
                return false;
            }
            var year, month, day;
            year = sDate.substring(0, 4);
            month = sDate.substring(4, 6);
            day = sDate.substring(6, 8);
            var iaMonthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
            if (year < 1700 || year > 2500) return false
            if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) iaMonthDays[1] = 29;
            if (month < 1 || month > 12) return false
            if (day < 1 || day > iaMonthDays[month - 1]) return false
            return true
        }

	</script>
</html>