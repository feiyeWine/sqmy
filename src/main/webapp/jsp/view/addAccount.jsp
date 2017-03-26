<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="/sqmy/jsp/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="/sqmy/jsp/js/jquery/jquery-1.11.2.min.js"></script>
        <script src="/sqmy/jsp/bootstrap/js/bootstrap.min.js"></script>
        <script src="/sqmy/jsp/js/jquery/jquery.validate.js"></script>
        <script src="/sqmy/jsp/js/jquery/messages_zh.js"></script>

        <style type="text/css">

            /*.checked {
                padding-left: 20px;
                padding-bottom: 10px;
                /!*background:url("/sqmy/jsp/image3/checked.gif") no-repeat 0px 0px;*!/
            }*/

            #mainDiv{
                background:#575765 ;
                width: 100%;
                height:800px;
            }
            #managerDiv{
                position: absolute;
                width: 400px;
                height: 510px;
                margin-left: 360px;
                margin-top:5px ;
                background: #5e5e5e;

                border: 5px solid #dedede;
                -moz-border-radius: 15px;      /* Gecko browsers */
                -webkit-border-radius: 15px;   /* Webkit browsers */
                border-radius:15px;
            }
            #managerDiv form div input{
                margin-left: 50px;
                margin-right: 50px;
            }
            #managerDiv form div select{
                margin-left: 50px;
                margin-right: 50px;
            }
            .spanInfo{
                margin-left: 50px;
                margin-right: 50px;
                font-family: Consolas;
                font-size: 14px;
                font-weight: bold;
                color: white;
            }
            #modify{
                margin-top: 10px;
                margin-left: 80px;
            }
            #submit{
                margin-top: 10px;
                margin-left: 180px;
            }

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
        <div id="mainDiv">
            <div id="managerDiv">
                <form id="managerForm"  action="#" class="form" method="post" role="form" >
                    <div id="errMsg"></div>
                    <fieldset  id="manager_fieldset"> <!--不可编辑-->
                    <div class="form-group ">
                        <!--<label class="sr-only" for="userId">id</label>-->
                         <input type="hidden" class="form-control" id="userId" name="userId"><!--placeholder="请输入名称"-->
                    </div>
                    <div class="form-group ">
                        <!--<label class="control-label" for="userAccount">账号:</label>-->
                        <span class="spanInfo">用户账号：</span>
                        <input type="text" class="form-control" id="userAccount" name="userAccount" style="width: 300px">
                    </div>
                    <div class="form-group ">
                        <!--<label class="control-label"  for="userPassword">密码:</label>-->
                        <span class="spanInfo">密码：</span>
                        <input type="password" class="form-control" id="userPassword" name="userPassword" style="width: 300px">
                    </div>
                        <div class="form-group ">
                            <!--<label class="control-label"  for="userPassword">密码:</label>-->
                            <span class="spanInfo" id="insureSpan" style="display: none">确认密码：</span>
                            <input type="password" class="form-control" id="userInsurePassword" name="userInsurePassword"  style="width: 300px;display: none">
                        </div>
                    <div class="form-group">
                        <!--<label class="control-label" for="userNumber">电话号码:</label>-->
                        <span class="spanInfo">用户身份：</span>
                        <input type="text" class="form-control" id="userNumber"  name="userNumber" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <!--<label class="control-label" for="managerEmail">邮箱:</label>-->
                        <span class="spanInfo">用户类型：</span>
                        <select id="userType" class="form-control" style="width: 300px">
                            <option>单位</option>
                            <option>政协委员</option>
                        </select>
                    </div>
                        <div class="form-group">
                            <!--<label class="control-label" for="managerEmail">邮箱:</label>-->
                            <span class="spanInfo">用户权限：</span>
                            <select id="userAuthority" class="form-control" style="width: 300px">
                                <option>普通</option>
                                <option>高级</option>
                            </select>
                        </div>
                    </fieldset>
                    <%--<button type="button" id="modify" class="btn btn-info" >修改</button>--%>
                    <button type="button" id="submit" class="btn btn-info" >确认添加</button>
                </form>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        //可编辑
            $("#modify").click(function(){
                $("#manager_fieldset").removeAttr("disabled");
                //添加确认密码

                $("#userInsurePassword").css("display","block");
                $("#insureSpan").css("display","block");

            });

        $("#submit").click(function(){
            $.post("/sqmy/addAccount.do",{"userAccount":$("#userAccount").val(),"userPassword":$("#userPassword").val(),"userNumber":$("#userNumber").val(),
                "userType":$("#userType").val(),"userAuthority":$("#userAuthority").val()
            },function(data){
                if(data.status=="success"){
                    alert("添加成功");
                    window.location.reload();
                }else{
                    alert("添加失败");
                }
            });
        });

        // 在键盘按下并释放及提交后验证提交表单

        $().ready(function() {
            $("#managerForm").validate({

                errorPlacement:function(error,element) {
                    element.prev().append(error);
                },

                rules: {
                    userAccount: {
                        required: true,
                        maxlength:20,
                    },
                    userPassword:{
                       required:true,
                    },
                    useruserInsurePassword:{
                        isEnsurePassword:true,
                    },
                    userNumber: {
                        required: true,
                        isIdCardNo:true,
                        minlength: 2,
                        maxlength:20,
                    },

                },
                messages: {
                    userAccount: {
                        required: "账号不能为空",
                        maxlength: "长度不能超过20个字符"
                    },
                    userPassword:{
                        required:"密码不能为空",
                        minlength:"长度为5-20个字符"
                    },
                    userNumber: {
                        required: "用户身份不能为空",
                        minlength: "若是单位请输入单位编号，若是委员输入身份证号"
                    },
                }
            });
        })

        //验证身份证号
        jQuery.validator.addMethod("isIdCardNo", function (value, element) {
            if($("#userType").val()=="政协委员") {
                return this.optional(element) || isIdCardNo(value);
            }else{
                return true;
            }
        }, "请正确输入您的身份证号码");
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
        };
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
        jQuery.validator.addMethod("isEnsurePassword", function(value,element) {
            return  $("#userPassword").val()==$(element).val();
        }, "两次密码不相同，请重新输入");
    </script>
</html>