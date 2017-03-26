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
                height: 500px;
                margin-left: 360px;
                margin-top:15px ;
                background: #5e5e5e;

                border: 5px solid #dedede;
                -moz-border-radius: 15px;      /* Gecko browsers */
                -webkit-border-radius: 15px;   /* Webkit browsers */
                border-radius:15px;
            }
            #managerDiv form div input{
                margin-left: 50px;
                margin-right:50px;
            }
            #unitClass,#memberType{
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

            #submit{
                margin-left: 160px;
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
                <form id="unitForm"  action="#" class="form" method="post" role="form" >
                    <div id="errMsg"></div>
                    <fieldset  id="manager_fieldset"> <!--不可编辑-->
                    <div class="form-group ">
                         <input type="hidden" class="form-control" id="memberId" name="memberId"><!--placeholder="请输入名称"-->
                    </div>
                    <div class="form-group ">
                        <span class="spanInfo">姓名：</span>
                        <input type="text" class="form-control" id="memberName" name="memberName" style="width: 300px">
                    </div>
                    <div class="form-group ">
                        <span class="spanInfo">身份证号：</span>
                        <input type="text" class="form-control" id="memberIdcard" name="memberIdcard" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <span class="spanInfo">电话号码：</span>
                        <input type="text" class="form-control" id="memberPhoneNum"  name="memberPhoneNum" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <span class="spanInfo">邮箱：</span>
                        <input type="text" class="form-control" id="memberEmail" name="memberEmail" style="width: 300px">
                    </div>
                        <div class="form-group">
                            <span class="spanInfo">委员类型：</span>
                            <select class="form-control" id="memberType" name="memberType" style="width: 300px">
                                <option>省政协委员</option>
                                <option>全国政协委员</option>
                            </select>

                        </div>
                    </fieldset>
                    <button type="button" id="submit" class="btn btn-info" >确认添加</button>
                </form>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        //可编辑
            $("#modify").click(function(){
                $("#manager_fieldset").removeAttr("disabled");
            });

        $("#submit").click(function(){
            $.post("/sqmy/addMember.do",{"memberName":$("#memberName").val(),"memberIdcard":$("#memberIdcard").val(),"memberPhoneNum":$("#memberPhoneNum").val(),
                "memberEmail":$("#memberEmail").val(),"memberType":$("#memberType").val()
            },function(data){
                if(data.status=="success"){
                    alert("添加成功");
                    window.location.reload();
                }else{
                    alert("添加失败");
                }
            });
        });
        //表单验证
        /*$.validator.setDefaults({
            debug:true,
            submitHandler: function() {
//                alert("提交事件!");
            }
        });*/
        $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单


            $("#unitForm").validate({

                errorPlacement:function(error,element) {
                    element.prev().append(error);
                },

                success:"checked",
                rules: {
                    memberIdcard: {
                        required: true,
                        isIdCardNo:true,
                    },
                    memberName: {
                        required: true,
                        minlength: 2,
                        maxlength:20,
                    },

                    memberPhoneNum:{
                        required:true,
                        isPhone:true,
                        maxlength:15,
                    },
                    memberEmail: {
                        required: true,
                        email: true,
                        maxlength:30,
                    },
                },
                messages: {
                    memberIdcard: {
                        required: "身份证号不能为空",
                        minlength: "长度不能超过30个字符"
                    },
                    memberName: {
                        required: "姓名不能为空",
                        minlength: "长度为2-30个字符"
                    },
                    memberEmail: "请输入正确的邮箱",
                    memberPhoneNum:"请输入正确的电话号码",
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